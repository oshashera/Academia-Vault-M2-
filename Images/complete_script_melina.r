setwd("D:/Stage")

library(car) # function Anova
library(DHARMa) # function testDispersion
library(dplyr) # function %>%
library(betapart) #function beta.multi.abund
library(betareg) # function betareg
library(glmmTMB) #function glmmTMB
library(lme4) #functions glmer, glmer.nb
library(MASS) # function glm.nb
library(MuMIn) # function r.squaredGLMM
library(vegan) #functions diversity
library(RVAideMemoire) #function plotresid
library(tidyr) # function pivot_longer


    # Loading data tables (formatted before) # 

plants_hedgerows=read.table("plants_hedgerows.txt", header=T, stringsAsFactors = T, dec=",")
plants_grasslands=read.table("plants_grasslands.txt", header=T, stringsAsFactors = T, dec=",")
plants_croplands=read.table("plants_crops.txt", header=T, stringsAsFactors = T, dec=",")
carabids_2022=read.table("carabids_2022.txt", header=T, stringsAsFactors = T, dec=",")   
carabids_2023=read.table("carabids_2023.txt", header=T, stringsAsFactors = T, dec=",")   
birds=read.table("birds.txt", header=T, stringsAsFactors = T, dec=",")


    # Loading of landscapes tables (scaled before with scale function) #

landscape_2017=read.csv("landscape_2017_scaled.csv", header=T, stringsAsFactors = T)
landscape_2021=read.csv("landscape_2021_scaled.csv", header=T, stringsAsFactors = T)
landscape_2022=read.csv("landscape_2022_scaled.csv", header=T, stringsAsFactors = T)


    # Loading of traits tables #

trait_plants=read.table("trait_plants.txt", header=T, stringsAsFactors = T, dec=",")
trait_carabids=read.table("trait_carabids.txt", header=T, stringsAsFactors = T, dec=",")


    # Choose of data # 
# --> to modify in function of which data we use
survey_data=plants_hedgerows # choose of the biology data table
survey_data$Point=as.factor(survey_data$Point) #to be sure that the numbers of Window is considered as factor
survey_data$Window=as.factor(survey_data$Window) #to be sure that the numbers of Window is considered as factor
landscape=landscape_2017 # choose of the landscape table
trait=trait_plants # choose of the trait table (none for birds)


    ### Preliminary analysis ###

    # Most frequent species #
n_surveys <- nrow(survey_data)
species <- survey_data[, -c(1, 2)]
presence <- species > 0
frequency_pct <- colSums(presence) / n_surveys * 100
frequency_pct[order(frequency_pct, decreasing = TRUE)][1:5]

    # Most abundant species #
abundance <- colSums(species)
abundance[order(abundance, decreasing = TRUE)][1:5]

# Surveys with 0 species
total_per_survey <- rowSums(species)
mean(total_per_survey == 0) * 100


    ### Function to calculate indices ###

indices_calc <- function(data){
  data_idc_Point=data[, c(1,2), drop = FALSE]
  Windows = unique(data[,1])
  data_idc_Window=data.frame(Window=Windows)
  
    ## alpha : specific richness
  data_idc_Point$specific_richness = rowSums(data[, -c(1, 2)] > 0)
  
    ## alpha : total abundance
  data_idc_Point$abundance = round(rowSums(data[, -c(1,2)]))
  
    ## alpha : Shannon Index and Pielou's Evenness Index
  data_idc_Point$Shannon=diversity(data[, -c(1, 2)],index="shannon")
  data_idc_Point$Pielou=data_idc_Point$Shannon/log(data_idc_Point$specific_richness)

    ## beta : Bray-curtis dissimilarity Index
  Bray_betapart_multi <- c()
  Bray_betapart_multi_bal <- c()
  Bray_betapart_multi_gra <- c()
  for (i in Windows) {
    Window_i_data = subset(data, Window == i)
    matrix_i=Window_i_data[, -(1:2)]
    Br=beta.multi.abund(matrix_i,index.family="bray")           
    Bray_betapart_multi <- c(Bray_betapart_multi,Br$beta.BRAY)
    Bray_betapart_multi_bal <- c(Bray_betapart_multi_bal,Br$beta.BRAY.BAL)
    Bray_betapart_multi_gra <- c(Bray_betapart_multi_gra,Br$beta.BRAY.GRA)
    }
  data_idc_Window$Bray = Bray_betapart_multi
  data_idc_Window$Bray_bal = Bray_betapart_multi_bal
  data_idc_Window$Bray_gra = Bray_betapart_multi_gra
  data_idc_Window$propbal=data_idc_Window$Bray_bal/data_idc_Window$Bray

    ## Gamma : Occurrence
  data_sspt_p_a = data[,-2]
  data_sspt_p_a[,-1] = ifelse(data_sspt_p_a[, -1] != 0,1,0)
  occurence <- aggregate(. ~ Window, data = data_sspt_p_a, FUN = mean)

    ## Gamma : Specific richness
  data_idc_Window$specific_richness = rowSums(occurence[, -c(1, 2)] > 0)

    ## Gamma : Indice de Shannon et d'équitabilité de Piélou
  data_idc_Window$Shannon=diversity(occurence[, -c(1, 2)],index="shannon")
  data_idc_Window$Pielou=data_idc_Window$Shannon/log(data_idc_Window$specific_richness)
  
  return(list(data_idc_Point=data_idc_Point, data_idc_Window=data_idc_Window))}


    ### Taxonomic approach ###

    # Calculation of indices and merge with landscape table #
indices=indices_calc(survey_data)
Point_indices=indices$data_idc_Point
Window_indices=indices$data_idc_Window
data_Point=merge(Point_indices, landscape, by = "Window")
data_Window=merge(Window_indices, landscape, by = "Window")

    ## Preliminary analysis ##

    # Mean specific richess per Point #
mean(data_Point$specific_richness)

    # Correlations #
cor(data_Point[,-c(1,2)], use = "complete.obs")
cor(data_Window[,-1])

    ## Alpha : specific richness ##

# Since specific richness is a count, we use a Poisson distribution, or a 
# negative binomial distribution in case of overdispersion
# We use a mixed model to take into account the Window effect

plot(specific_richness ~ SHDI + pNC.hete + pNV_2 + Sum_Length, data = data_Point) 
                  #to have an idea of the tendancies
mod_lin_S = glmer(specific_richness ~ SHDI + pNC.hete + pNV_2 + Sum_Length 
                  + (1 | Window), family = "poisson", data = data_Point)
testDispersion(mod_lin_S)  # check of overdispersion.
# If there is overdispersion, we use negative binomiale
# If not, ignore the two next lines
mod_lin_S = glmer.nb(specific_richness ~ SHDI + pNC.hete + pNV_2 + Sum_Length + (1 | Window), data = data_Point)
testDispersion(mod_lin_S)

plotresid(mod_lin_S)   # check of validity

Anova(mod_lin_S) # Anova, type II to check significance
summary(mod_lin_S) # to obtain the estimated coefficients
r.squaredGLMM(mod_lin_S) # to obtain the pseudo R-squared
# we chose the conditional R-squared with the delta method


    ## Alpha : Pielou's Eveness Index ##

plot(Pielou ~ SHDI + pNC.hete + pNV_2 + Sum_Length, data = data_Point)
# Pielou's eveness index being between 0 and 1, we use a betaregression
# We use a mixed model to take into account the Window effect
# If there are proportion equal to 0 or 1, they are transformed acording to the recommended 
# method by Smithson and Verkuilen (2006). If they are not, ignore the two next lines
# in our case, necessary only for plants in croplands
n <- nrow(data_Point)
data_Point$Pielou <- (data_Point$Pielou * (n - 1) + 0.5) / n

mod_lin_P <- glmmTMB(Pielou ~ SHDI + pNC.hete + pNV_2 + Sum_Length + (1 | Window), 
                     family = beta_family(), 
                     data = data_Point)

plotresid(mod_lin_P)   # check of validity

Anova(mod_lin_P) # Anova, type II to check significance
summary(mod_lin_P) # to obtain the estimated coefficients

r.squaredGLMM(mod_lin_P) # to obtain the pseudo R-squared
# we chose the conditional R-squared


    ## Gamma : specific richness ##

mod_lin_Sg = glm(specific_richness ~ SHDI + pNC.hete + pNV_2 + Sum_Length, family="poisson", data = data_Window)
testDispersion(mod_lin_Sg)# check of overdispersion.
# If there is overdispersion, we use negative binomiale
# If not, ignore the two next lines

plot(specific_richness ~ SHDI + pNC.hete + pNV_2 + Sum_Length, data = data_Window)
mod_lin_Sg = glm.nb(specific_richness ~ SHDI + pNC.hete + pNV_2 + Sum_Length, data = data_Window)
testDispersion(mod_lin_Sg)

plotresid(mod_lin_Sg)   # check of validity

Anova(mod_lin_Sg) # Anova, type II to check significance
summary(mod_lin_Sg) # to obtain the estimated coefficients

pseudoR2=100*(mod_lin_Sg$null.deviance-mod_lin_Sg$deviance)/mod_lin_Sg$deviance 
                    # to calculate the pseudo R-squared
pseudoR2


    ## Gamma : Pielou's Eveness Index ##

plot(Pielou ~ SHDI + pNC.hete + pNV_2 + Sum_Length, data = data_Window)
# Pielou's eveness index being between 0 and 1, we use a betaregression
mod_lin_Pg=betareg(Pielou ~ SHDI + pNC.hete + pNV_2 + Sum_Length, data = data_Window)

plotresid(mod_lin_Pg)   # check of validity

Anova(mod_lin_Pg) # Anova, type II to check significance
summary(mod_lin_Pg) # to obtain the estimated coefficients and the pseudo R2


    ## Beta : total Bray-Curtis Dissimilarity Index ##

plot(Bray ~ SHDI + pNC.hete + pNV_2 + Sum_Length, data = data_Window)
# Bray-Curtis Indew being between 0 and 1, we use a betaregression
mod_lin_B=betareg(Bray ~ SHDI + pNC.hete + pNV_2 + Sum_Length, data = data_Window)

plotresid(mod_lin_B)   # check of validity

Anova(mod_lin_B) # Anova, type II to check significance
summary(mod_lin_B) # to obtain the estimated coefficients and the pseudo R2


    ## Beta : proportional part of balanced changes component ##

plot(propbal ~ SHDI + pNC.hete + pNV_2 + Sum_Length, data = data_Window)
# As a proportion, it is by definition between 0 and 1, so we use a betaregression
mod_lin_Bpropbal=betareg(propbal ~ SHDI + pNC.hete + pNV_2 + Sum_Length, data = data_Window)

plotresid(mod_lin_Bpropbal)   # check of validity

Anova(mod_lin_Bpropbal) # Anova, type II to check significance
summary(mod_lin_Bpropbal) # to obtain the estimated coefficients and the pseudo R2


    ### Functional approach ###

# Long format transformation
data_long <- survey_data %>%
  pivot_longer(cols = -c(Window, Point), names_to = "species", values_to = "abundance") %>%
  filter(abundance > 0)  # we keep only present species

# Fusion with the trait table
data_merged <- data_long %>%
  left_join(trait, by = "species")


    ## Preliminary analysis ##

# Calculation of percentages per Point then per Window
summary_table <- function(scale,table) {table %>%
  filter(!is.na(disp_class))%>%
  group_by({{ scale }}, disp_class) %>%
  summarise(
    richness = n_distinct(species),  # Number of unic species per class
    abundance_totale = sum(abundance),  # Sum of abundance per class
    .groups = "drop"
  ) %>%
  group_by({{ scale }}) %>%
  mutate(
    total_richness = sum(richness, na.rm = TRUE),  # Total richnesss per Window or Point
    total_abundance = sum(abundance_totale, na.rm = TRUE),  # Total abundances per Window or Point
    pct_richness = ifelse(total_richness > 0, (richness / total_richness) * 100, 0),
    pct_abundance = ifelse(total_abundance > 0, (abundance_totale / total_abundance) * 100, 0)
  ) %>%
  ungroup() %>%
  dplyr::select({{ scale }}, disp_class, pct_richness, pct_abundance) %>%
  pivot_wider(
    names_from = disp_class, 
    values_from = c(pct_richness, pct_abundance),
  ) 
    }

summary(summary_table(Point,data_merged))
summary(summary_table(Window,data_merged))


    ## Analysis of proportions ##

    # Alpha : in abundance #
data_abundtot <- data_merged %>%
  filter(!is.na(disp_class)) %>%
  group_by(Window, Point) %>%
  summarise(
    total_abundance = sum(abundance),
    abundance_long = sum(abundance[disp_class == "long"]),
    prop_long_abund = abundance_long / total_abundance
  )

summary(data_abundtot)

# Merge with landscape table
data_all=merge(data_abundtot, landscape, by = "Window")
data_all$Window=as.factor(data_all$Window)

#Model
# We use a mixed model to take into account the Window effect
# If needed, proportions equal to 0 or 1 are transformed according to the recommended 
# method by Smithson and Verkuilen (2006).
n <- nrow(data_all)
data_all$prop_adj <- (data_all$prop_long_abund * (n - 1) + 0.5) / n


mod_prop_abund <- glmmTMB(prop_adj ~ SHDI + pNC.hete + pNV_2 + Sum_Length +  (1 | Window),
                          data = data_all, family = beta_family(link = "logit"))


plotresid(mod_prop_abund)   # check of validity

Anova(mod_prop_abund) # Anova, type II to check significance
summary(mod_prop_abund) # to obtain the estimated coefficients
r.squaredGLMM(mod_prop_abund) # to obtain the pseudo R-squared (conditional R-squared with delta method)


    # Alpha : in presence-absence #
data_richness <- data_merged %>%
  filter(!is.na(disp_class)) %>%
  group_by(Window, Point, disp_class) %>%
  summarise(richness = n_distinct(species), .groups = "drop") %>%
  pivot_wider(names_from = disp_class, values_from = richness, values_fill = 0)

# Merge with landscape table
data_all_S = merge(data_richness, landscape, by = "Window")
data_all_S$Window = as.factor(data_all_S$Window)

# Model
# We use a mixed model to take into account the Window effect
# "Long" is considered as success in a binomial (short or long) model
mod_prop_S <- glmer(cbind(long, short) ~ SHDI + pNC.hete + pNV_2 + Sum_Length + (1|Window),
                    data = data_all_S, family = binomial)

plotresid(mod_prop_S)   # check of validity

Anova(mod_prop_S) # Anova, type II to check significance
summary(mod_prop_S) # to obtain the estimated coefficients
r.squaredGLMM(mod_prop_S) # to obtain the pseudo R-squared (conditional R-squared with delta method)


    # Gamma : in presence-absence #
data_gamma <- data_merged %>%
  filter(!is.na(disp_class)) %>%
  group_by(Window, disp_class) %>%
  summarise(richness = n_distinct(species), .groups = "drop") %>%
  pivot_wider(names_from = disp_class, values_from = richness, values_fill = 0)

# Merge with landscape table
data_all_gamma = merge(data_gamma, landscape, by = "Window")

# Model
# "Long" is considered as success in a binomial (short or long) model
modele_glm_gamma <- glm(cbind(long, short) ~ SHDI + pNC.hete + pNV_2 + Sum_Length,
                        data = data_all_gamma, family = binomial)

plotresid(modele_glm_gamma) # check of validity

Anova(modele_glm_gamma) # Anova, type II to check significance
summary(modele_glm_gamma) # to obtain the estimated coefficients
pseudoR2=(modele_glm_gamma$null.deviance-modele_glm_gamma$deviance)/modele_glm_gamma$deviance 
# to calculate the pseudo R-squared
pseudoR2


      ## Analysis of indices separating both dispersal classes ##

class_factor="short" # or "long"

survey_data_class <- survey_data %>%
  dplyr::select(Window, Point, all_of(
    trait %>%
      filter(disp_class == class_factor) %>%
      pull(species) %>%
      intersect(colnames(survey_data))
  ))


# Calculation of indices and merge with landscape table #
indices_class=indices_calc(survey_data_class)
Point_indices_class=indices_class$data_idc_Point
Window_indices_class=indices_class$data_idc_Window
data_Point_class=merge(Point_indices_class, landscape, by = "Window")
data_Window_class=merge(Window_indices_class, landscape, by = "Window")

      ## Alpha : specific richness ##

# Since specific richness is a count, we use a Poisson distribution, or a 
# negative binomial distribution in case of overdispersion
# We use a mixed model to take into account the Window effect

plot(specific_richness ~ SHDI + pNC.hete + pNV_2 + Sum_Length, data = data_Point_class) 
#to have an idea of the tendancies
mod_lin_S_class = glmer(specific_richness ~ SHDI + pNC.hete + pNV_2 + Sum_Length 
                  + (1 | Window), family = "poisson", data = data_Point_class)
testDispersion(mod_lin_S_class)  # check of overdispersion.
# If there is overdispersion, we use negative binomiale
# If not, ignore the two next lines
mod_lin_S_class = glmer.nb(specific_richness ~ SHDI + pNC.hete + pNV_2 + Sum_Length + (1 | Window), data = data_Point_class)
testDispersion(mod_lin_S_class)

plotresid(mod_lin_S_class)   # check of validity

Anova(mod_lin_S_class) # Anova, type II to check significance
summary(mod_lin_S_class) # to obtain the estimated coefficients
r.squaredGLMM(mod_lin_S_class) # to obtain the pseudo R-squared
# we chose the conditional R-squared with the delta method


      ## Gamma : specific richness ##

plot(specific_richness ~ SHDI + pNC.hete + pNV_2 + Sum_Length, data = data_Window_class) 
#to have an idea of the tendancies
mod_lin_Sg_class = glm(specific_richness ~ SHDI + pNC.hete + pNV_2 + Sum_Length, family="poisson", data = data_Window_class)
testDispersion(mod_lin_Sg_class)# check of overdispersion.
# If there is overdispersion, we use negative binomiale
# If not, ignore the two next lines

plot(specific_richness ~ SHDI + pNC.hete + pNV_2 + Sum_Length, data = data_Window_class)
mod_lin_Sg_class = glm.nb(specific_richness ~ SHDI + pNC.hete + pNV_2 + Sum_Length, data = data_Window_class)
testDispersion(mod_lin_Sg_class)

plotresid(mod_lin_Sg_class)   # check of validity

Anova(mod_lin_Sg_class) # Anova, type II to check significance
summary(mod_lin_Sg_class) # to obtain the estimated coefficients

pseudoR2=(mod_lin_Sg_class$null.deviance-mod_lin_Sg_class$deviance)/mod_lin_Sg_class$deviance 
# to calculate the pseudo R-squared
pseudoR2


      ## Beta : total Bray-Curtis Dissimilarity Index ##

plot(Bray ~ SHDI + pNC.hete + pNV_2 + Sum_Length, data = data_Window_class)
# Bray-Curtis Indew being between 0 and 1, we use a betaregression
# If needed, proportions equal to 0 or 1 are transformed according to the recommended 
# method by Smithson and Verkuilen (2006).
n <- nrow(data_Window_class)
data_Window_class$Bray_prop_adj <- (data_Window_class$prop_long_abund * (n - 1) + 0.5) / n

mod_lin_B_class=betareg(Bray_prop_adj ~ SHDI + pNC.hete + pNV_2 + Sum_Length, data = data_Window_class)

plotresid(mod_lin_B_class)   # check of validity

Anova(mod_lin_B_class) # Anova, type II to check significance
summary(mod_lin_B_class) # to obtain the estimated coefficients and the pseudo R2


## Beta : proportional part of balanced changes component ##

plot(propbal ~ SHDI + pNC.hete + pNV_2 + Sum_Length, data = data_Window_class)
# As a proportion, it is by definition between 0 and 1, so we use a betaregression
# If needed, proportions equal to 0 or 1 are transformed according to the recommended 
# method by Smithson and Verkuilen (2006).
n <- nrow(data_Window_class)
data_Window_class$propbal_adj <- (data_Window_class$prop_long_abund * (n - 1) + 0.5) / n

mod_lin_Bpropbal_class=betareg(propbal_adj ~ SHDI + pNC.hete + pNV_2 + Sum_Length, data = data_Window_class)

plotresid(mod_lin_Bpropbal_class)   # check of validity

Anova(mod_lin_Bpropbal_class) # Anova, type II to check significance
summary(mod_lin_Bpropbal_class) # to obtain the estimated coefficients and the pseudo R2

