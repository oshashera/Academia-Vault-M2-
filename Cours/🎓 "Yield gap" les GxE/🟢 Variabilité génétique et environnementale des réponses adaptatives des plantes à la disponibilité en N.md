---
prof: Céline Richard Molard
---

## I] Introduction 

### Contexte et enjeux :

De la révolution verte... à la marée verte
Progression démographique -> demande agricole forte pour nourrir la population mondiale
Considérations environnementales croissantes -> contraintes réglementaires et sociétales à intégrer

>[!donc]  Développement d'une agriculture durable
>Maintenir la production agricole dans un système de culture bas intrants

Problématique agro-écologique
- Sécuriser / stabiliser le rendement
- Optimiser l'utilisation des ressources
- Favoriser la résilience
=> Quels leviers ?
![[Pasted image 20241015143650.png|center|500]]

Jouer sur plasticité, les itinéraires techniques innovantes, la durabilité des résistances, la création variétale et tenir compte de l'écologie (discipline)
![[Pasted image 20241015143740.png|center|400]]

###### De la problématique agro-écologique à la question scientifique
Comment améliorer l'efficacité d'utilisation de l'azote (NUE)

> [!info] NUE = combien de biomasse produite à partir de combien d'azote
![[Pasted image 20241015143942.png|center|450]]
Nitrogen Uptake Efficiency (combien on absorbe de ce qu'on a donné)
Nitrogen Utilisation Efficiency (combien une fois absorbé on valorise, biomasse produite)

<u>Questions scientifiques :</u>
- Quels sont les traits importants qui déterminent la NUE ?
- Quels sont leurs liens avec le rendement ?
- Quelles sont les stratégies d'adaptation des plantes à la disponibilité en N ?
	- quels traits adaptatifs, quelle modulation selon la quantité / qualité de la ressource, la structure du peuplement ?
- Ces stratégies sont-elles variables génétiquement ?
	- en quoi certaines variétés sont-elles plus efficaces ?
	- quelles sont les bases génétiques et moléculaires de cette variabilité ?
## II] Démarche

- Expérimentation et modélisation
- Espèce modèle
- Variabilité génétique

#### Plant adaptation to N supply is complex

|                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |                                                   |
| -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------- |
| A set of compensating traits, leading to a wide range of phenotype<br>-  Several interacting traits<br>-  Both shoot and root compartments<br>-  Interactions between N and C metabolisms<br>-  Compensation due to plant plasticity<br>-  A wide range of variations due to : <br>	- Large genetic variability<br>	- Temporal variation<br>	- environmental variation<br>♦ Real issue to identify the pertinent traits determining plant adaptation to N supply<br> | ![[Pasted image 20241015144214.png\|center\|270]] |
=> NEED TO COMBINE EXPERIMENTATION AND MODELING Experimentation to measure, modeling to integrate and prioritize

>[!warning] Real issue to identify the pertinent traits determining plant adaptation to N supply

>[!donc] NEED TO COMBINE EXPERIMENTATION AND MODELING

#### Plantes modèles, échelles d'étude

Une approche pluri-espèces, centrée sur Arabidopsis thaliana
![[Pasted image 20241015144805.png|center|600]]
Cycle de vie court, permet de répéter rapidement les expé, plante bien connues, plante diploide a génome simple, bcp de ressource génétique disponible (écotypes et autres), mais faire attention car par forcément représentatif de tt les espèces, notamment des sp d'intérêt agronomique, et comme petite c'est chiant pour mesurer/ faire plein d'analyses vu que peu de biomasse, et cultivé en intérieur = env controlé, mais pas possible de check irl
#### Schéma conceptuel
![[Pasted image 20241015144857.png|center|500]]
=><u>Questions de recherche :</u>
- Des génotypes contrastés ont-ils le même fonctionnement CN ?
- A quoi tiennent les différences de réponse à N ?
- Quelles sont les bases génétiques et moléculaires de ces différences ?

# III] Variabilité génétique du fonctionnement CN en réponse à la disponibilité en N

#### Les étapes du projet
Un outil de comparaison des génotypes
![[Pasted image 20241015145215.png|center|600]]
#### Caractériser le stress azoté
L'indice de nutrition azotée (**INN**) chez Arabidopsis ? 
![[Pasted image 20241015145334.png|center|650]]
- Indicateur validé chez Arabidopsis
- Equation similaire à celle des plantes en C3
- Outil de tri des génotypes vis-à-vis de leur capacité à valoriser l’azote

| Selection of 3 contrasted RILs                                                                                                                                     |                                           |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ----------------------------------------- |
| ♦ Bay0 x Shahdara population : 415 RILs<br>♦ 3 RILs selected according to contrasted<br>   NNI, DM, %N at 3 mM and 10 mM nitrate<br>   under a PAR of 170 μmol/m2/ | ![[Pasted image 20241015145535.png\|350]] |
By using NNI as an indicator to screen the RIL population

#### Mise au point du système de culture
###### Un système de culture adapté : les Ara-rhizotron
![[Pasted image 20241015145800.png|center|550]]
✔ Suivi non destructif de la morphogenèse aérienne et racinaire
✔ Culture sur terreau (non-fertilisé pendant toute la phase végétative
✔ Culture en peuplement (racines en 2D, feuilles en 3D)
✔ Récupération possible du matériel végétal

#### Caractérisation de la variabilité GxN de 5 génotypes constrastés
###### Experimental design

Culture on rhizotrons during vegetative growth

35 days, 19°C, 300 μE, 8h day/16h night, 625 plants.m-2, non-fertilized greenhouse mix

| Entrées                                                                                                          | Sorties                                                                                                         |
| ---------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| 5 genotypes<br>3 RILs (282, 363, 432)<br>2 ecotypes (Shahdara, WS)<br>3 levels of N supply<br>2 to 15 mM Nitrate | • 6 harvest dates, 5 repetitions<br>• morphogenesis quantification<br>• nitrate, total C and N content analysis |
###### Characterizing genotypic variability
3 contrasted RILs towards N availability

♦ Contrasted phenotypes at 31 DAS under low N nutrition
♦ Which explanatory variables ?
![[Pasted image 20241015150251.png|center|400]]

Contrasted phenotypes in response to N supply
![[Pasted image 20241015150540.png|center|650]]
=> Cette variabilité phénotypique provient-elle de différences de fonctionnement C/N ?
=> BESOIN D’UN MODELE 

#### Implémentation dʼun modèle simple de fonctionnement C/N plante entière
##### ARNICA : Arabidopsis N/C whole-plant functioning model

###### Principle, hypothesis and validity range
![[Pasted image 20241015150721.png|center|400]]
♦ Principle :
- The model is based on interactions between 2 compartments exchanging C/N fluxes
- Endogenous N availability drives shoot expansion, whereas C availability drives root growth and architecture
♦ Underlying hypothesis/ priority rules : Priority of the shoots for C and of the roots for N
♦ Validity range : vegetative growth (7 to 35 DAS) in a controlled environment (given PAR and stable nutrition)
♦ Outputs : plant growth, leaf area, biomass partitioning, N accumulation, NO3 storage

###### Model framework : a model based on efficiencies as parameters
![[Pasted image 20241015150850.png|center|600]]
###### Parametrization on the Shahdara ecotype
![[Pasted image 20241015151508.png|center|700]]
![[Pasted image 20241015151751.png|center|450]]
#### Analyse de la variabilité GN des paramètres

###### Analyzing genotypic variability by using a simplified version of ARNICA
![[Pasted image 20241015151915.png|center|400]]
###### Use of ARNICA to screen genotypic variability
Parameters G x N variability
![[Pasted image 20241015152055.png|center|650]]
No significant variation between genotypes or N supply levels
Parameter G x N variability limited to SCA and SNU

#### Test du modèle sous les autres conditions G x N
###### Does the model well simulate the genotype behaviours?
Considering the variation of only two parameters
![[Pasted image 20241015152832.png|center|850]]
♦ The phenotypic variability relied on the variation of only two efficiencies for the 5 genotypes under the various N conditions

#### Rôle déterminant de SNU et SCA
___
___
#### Les étapes du projet
![[Pasted image 20241015153123.png|center|650]]
#### Analyse dʼune core-collection d’écotypes
###### Exploring exhaustive natural genetic variability
<u>Experimental design - growth chamber</u>

- Plant population 1400 pl/m2 grown on pots filled with sand
-  Dynamic study throughout the vegetative growth (32 DAS)
- 40 to 48 ecotypes
	- Core-collection of 32 to 40 ecotypes (100% of the allelic diversity)
	- 8 ecotypes used as parental lines in many populations
- 2 levels of N supply
	- 3 mM (N-) / 15 mM NO3- (N+)

<u>Phenotypic variability observed</u>
![[Pasted image 20241015153407.png|center|550]]
- Large phenotypic variability under N- or N+ supply in response to genotypic variability.

<u>Phenotype and integrative variables differ strongly</u>
![[Pasted image 20241015153457.png|center|450]]
- Many integrative variables implied, differently according to N supply
- Various behaviours ?
- What is the origin ?

<u>What about the variability of efficiency parameters?</u>
![[Pasted image 20241015153959.png|center|850]]
♦ The variability of efficiencies is low
♦ It is mainly due to variation of SNU
=> The diversity of responses to N supply of the core collection results mainly from the only variation of specific nitrogen uptake efficiency

#### Etude comparative des 3 RILs lors d’une carence en N --> Expression des gènes de transport de nitrate
##### Etude de la réponse à une carence en azote
Experimental design
![[Pasted image 20241016163907.png|center|700]]
##### Deux systèmes de transport selon la concentration externe en nitrate
![[Pasted image 20241016164043.png|center|500]]
##### Etude de la réponse à une carence en azote
Influx et expression de la famille de gènes NRT2
![[Pasted image 20241016164302.png|center|600]]
#### Simulation du mutant AtNRT2.1a 
##### Validation fonctionnelle par les mutants 
Simulation du mutant atnrt2.1-1 : a driven variation
![[Pasted image 20241016164759.png|center|550]]
♦ Mutant well simulated
♦ Validation of NRT2 genes as key determinant

#### Rôle clé de l’efficience spécifique d’absorption azotée / Gènes candidats AtNRT2.1, 2.4 et 1.1
_____
_____
#### Généricité des réponses pour les espèces d’intérêt agronomique ? L’exemple du colza

#### ARNICA : un modèle pour le colza ?
###### Validation des relations chez le colza au stade 1 mois en rhizotron
![[Pasted image 20241016165205.png|center|650]]
![[Pasted image 20241016165259.png|center|650]]![[Pasted image 20241016165335.png|center|650]]
![[Pasted image 20241016165855.png|center|650]]![[Pasted image 20241016165950.png|center|650]]
##### Validation sur le cycle complet en conditions semi-contrôlées
![[Pasted image 20241016170308.png|center|550]]
=> En nutrition discontinue, SNU n’est plus constant !
![[Pasted image 20241016171416.png|center|750]]

##### Faut-il prendre en compte les feuilles mortes ?
![[Pasted image 20241016171717.png|center|650]]
##### Validation sur le cycle complet en conditions semi-contrôlées
![[Pasted image 20241016171923.png|center|650]]
![[Pasted image 20241016172043.png|center|650]]
![[Pasted image 20241016172538.png|center|650]]
![[Pasted image 20241016172647.png|center|500]]![[Pasted image 20241016172817.png|center|650]]
#### Généricité des réponses pour les espèces d’intérêt agronomique : et pour le blé ?
#### Utiliser ARNICA pour identifier les bases génétiques de la réponse chez le blé

##### Sélection assistée par modèle : variabilité sur les paramètres plus que sur les variables d’état
![[Pasted image 20241016173035.png|center|650]]
##### Validité du modèle et variabilité des paramètres chez le blé
![[Pasted image 20241016173239.png|center|800]]
##### QTLs de paramètres
![[Pasted image 20241016173351.png|center|750]]
# IV] Variabilité de la morphogénèse racinaire en réponse à la disponibilité en N
#### Schéma conceptuel
![[Pasted image 20241016173508.png|center|650]]
<u>Questions de recherche</u>
• Des génotypes contrastés ont-ils la même architecture racinaire?
• A quoi tiennent les différences d’architecture en réponse à N ?
• Quelles sont les bases génétiques et moléculaires de ces différences ?

#### Mais pourquoi donc s’intéresser à l’architecture racinaire ?
(Rappel des épisodes précédents)

- ARNICA studies highlighted SNU as a major trait supporting genotype variability to N supply
- A major role of the root system in increasing nitrogen uptake efficiency

⇢ Fine roots biomass was pointed out as a major determinant of NUpE in several genotypes of WOSR under low N supply

- Root system architecture (RSA) also holds promise for optimizing soil exploration
⇢ Some RSA traits are highly and differently responsive to N supply
⇢ RSA traits significantly correlate with NUE or N uptake in Arabidopsis
⇢ In rapeseed, RSA strongly varies depending on the genotype
![[Pasted image 20241016174035.png|center|650]]
=> The RSA is a promising but under-exploited lever !
##### Plan du projet 
![[Pasted image 20241016174206.png]]

#### Dispositifs de phénotypage
Beaucoup de dispositifs, mais aucun n’est parfait
![[Pasted image 20241016174626.png|center|750]]

#### Caractérisation de l’architecture R sous deux niveaux d’azote
##### Disponibilité en N et architecture racinaire
Quelle adaptation ?
![[Pasted image 20241016175241.png|center|650]]

Chez Arabidospis, l’adaptation de l'architecture racinaire en situation de faible N caractérisée par :
– une longueur un peu plus faible
– des racines plus fines
– une plus grande efficacité d'exploration
– efficacité d’absorption (SNU) réduite mais moins que proportionnellement à la baisse de concentration
![[Pasted image 20241016175523.png|center|650]]
#### Utilisation d’un modèle FSPM de morphogenèse racinaire
##### ArchiSimple, a great modeling tool to study RSA traits
![[Pasted image 20241016175749.png|right|350]]

Global overview of major rules

<u>Principles</u>
• ArchiSimple simulate the root system architecture (RSA) from a C source (i.e. from shoot)
• RSA parameters with biological meaning
• Root system = S root segments + meristems spatially distributed
• Root growth is driven by the C relative availability
• At each time step, comparison C supply (Srs) / total root system C demand
• Satisfaction coefficient : A = Srs / Drs = Srs / somme Di
• A determines the relative variation of diameter and elongation of each meristem

<u>Growth rules</u>
1. Apex Diameter = f(bearing root apex diameter)
2. Potential elongation = f(apex diameter
![[Pasted image 20241016175915.png|center|350]]
###### Model validation
![[Pasted image 20241016180146.png|center|650]]
#### Régulation de la réponse à la disponibilité en N
##### To what extent does RSA response to N supply depend on C availability ?
Several CxN conditions but a unique parametrization
![[Pasted image 20241016180233.png|center|550]]
![[Pasted image 20241016180257.png|center|650]]
♦ Simulation accuracy
- Overall good predictions for total root length and lateral root number
- Bad prediction for SRL : greatly underestimated in the N– condition, even if it decreased with time as for observed data
![[Pasted image 20241016180429.png|center|700]]
=> Lenght and number of lateral root variations were mainly driven by C fluxes 
Specific root lenght is driven by a specific N effect (signalling)

#### Analyse G x N des paramètres du modèle
##### Study ArchiSimple parameters to understand RSA genotypic variability
###### Parameters with biological meaning
• Focus on 9 of the 23 input parameters corresponding to RSA traits
![[Pasted image 20241016180642.png|center|650]]
##### Plasticity to N supply and genotypic variability of RSA in rapeseed
###### Experimental design
![[Pasted image 20241017151947.png|center|600]]

###### Variation of ArchiSimple model parameters in response to low-N supply
>[!abstract] Plasticity in response to N
• Decrease of the main root maximal diameter (Dmax)
• Strong increase of the interbranching distance (IBD)
• No changes of the minimal diameter (Dmin)

![[Pasted image 20241017152628.png|center|750]]

#### Hiérarchisation des paramètres impliqués dans la réponse à la disponibilité en N
##### Calibrating Archisimple to simulate root system development of WOSR
![[Pasted image 20241017154052.png|center|750]]

##### Which are the most influent RSA traits ?
###### Sensitivity analysis
> [!todo] Methodology
> ![[Pasted image 20241017154709.png|right|350]]
> ♦ Selection of 9 parameters corresponding to RSA traits, among the 23 Archisimple parameters
> ♦ Variation of the 9 parameters within an experimental range, corresponding to the genetic diversity and plasticity to nitrogen availability observed in previous experiments on 11 rapeseed genotypes under 2 nitrogen levels (Lecarpentier et al. 2021)
> ♦ ANOVA based Sensitivity Analysis with a factorial simulation design (4 values per parameter, n=65 500 simulations)
> ♦ Calculation of classical indicators : Main Sensitivity Indice (mSI) and Interaction Sentivity Indice (iSI)

![[Pasted image 20241017161431.png|center|750]]

#### Définition de morphotypes adaptés à des niveaux de nutrition contrastée

##### Existe-t-il des combinaisons de paramètres définissant des morphotypes spécifiques ?
![[Pasted image 20241017161941.png|center|650]]
##### Les traitements N+ et N- correspondent-ils à des clusters particuliers ?
![[Pasted image 20241017162025.png|center|650]]
♦ Cluster 1, 2 : High Colonization efficiency, High IBD and DelBEl
♦ Cluster 3, 4, 5 : Increasing thin root proportion, soil explorated volume and biomasses, in correlation with increasingly high Dmax, EL and DlDM values.

# V] Conclusion et perspective
##### What we learned from this study…

![[Pasted image 20241017162941.png|right|200]]
♦ Relevance to use modeling to :
-  test hypothesis and decipher complex plant responses
-  to join ecophysiology to molecular physiology
-  hierarchize influent parameters

♦ Genericity of the approaches developed :
- Arabidopsis is a good ecophysiological model, whose results and conceptual model can be extrapolated to crops (rapeseed and wheat).

♦ About plant adaptation to N availability, using ARNICA model, we showed that :
- Plant representation via efficiencies parameters was fruitful to cut oneself of the G x E variation of integrative variables.
- It was possible to reduce the large genetic diversity of plant responses to N availability to the variation of one main parameter.
- The key role of SNU in this adaptation was demonstrated.

♦ On root architecture regulation by N supply:
- Most RSA adaptations to N supply are driven by changes in C fluxes coming from the shoot
- Large genotypic diversity on all RSA traits

♦ On RSA morphotypes :
- Trade-offs between certain RSA traits, leading to contrasting root system morphotypes

♦ On influent RSA traits :
- 5 main RSA traits that drive root system development, plasticity and variability
- IBD is the most plastic trait and is therefore one of the main traits for adapting to N supply
- N-limited plants are characterized by a low maximal diameter, elongation rate, and hierarchy in the root system, and by a low lateral root density, resulting in high colonization efficiency.
![[Pasted image 20241017163527.png|center|750]]
#### Perspectives : comprendre et modéliser l’adaptation des associations à la contrainte N
![[Pasted image 20241017163640.png|center|550]]

