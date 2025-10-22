
## ⛃ DATA 

| Noms                                                                    | Formats | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| ----------------------------------------------------------------------- | ------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| plants_hedgerows, plants_crops, plants_grasslands, birds, carabids_2023 | .txt    | Relevés naturalistes (plantes (localisation), carabes, oiseaux). <br>Formaté tq : Col window (fenetre pays), col point (zone prélèvement), <br>**==cols sp plantes==** => (avec donc les relevés en colonnes; valeur = somme de tts les relevés pour la plante dans la fenetre x point DIVISE par nb de relevés sur zone/pt (dans tableaux données brutes) → **POURCENTAGE DE RECOUVREMENT**)<br>**==cols sp birds==** => (avifaune landbio brut → onglet avifaune → x lignes de la maille XXX → si  Y lignes même sp, alors Y individus (sommer les valeurs de la colonnes tot pour avoir l'**abondance (nb indiv)**. Attention, les t5/10/15 → une écoute tt les 5min, et inf/sup70 = seuil distance 70m. Un indiv peut donc avoir été entendu à t5 et/ou t10 et/ou t15 et avoir bougé par rapport au seuil 70m distance, donc ne se fier qu'à la col total. Autre élément d'importance, au dela de 10 indiv de la même sp dans la même maille/point, le compte d'abondance est capé pour les sp a large pop°, afin d'éviter de biaiser les analyses stats))<br>**==cols sp carabes ⚠ 2022==** => valeur donnée = **abondance (compte) / nb session** *AVERAGE ABUNDANCE donc* (5 session, landbio carabe data brut) donc 1 sur 1 session = 1/5 = 0,2 par ex<br>**==col sp carabes ⚠ 2023==** => valeur donnée = **abondance (compte) / nb session** *AVERAGE ABUNDANCE donc* (6 session (la n°7 n'est pas comptée, landbio carabe data brut) donc 1 sur 1 session = 1/6 = 0,33 par ex |
| trait_plants, trait_carabids                                            | .txt    | Tableaux de traits. <br>Obtenus tq : <br>**==trait_carabids==** => valeur donnée = **classe de dispersion (capacité)** issue de *[Hendrickx et al;2009](https://doi.org/10.1111/j.1466-8238.2009.00473.x)*, (short et long), déterminées à partir du système d'ailes et de leur capacité musculaire à être utilisé<br>semblent s'être basé sur les catégories (1 à 4) listées dans l'appendix 2 (fichier à part) de Hendrickx → 1&2 = short, 3&4 = long. <br><span style="background:#ff4d4f">Si data pas existante pour l'espèce, quel protocol ???? pcq y a des NA et des trucs remplis pour des sp qui existent pas dans la liste de l'appendix </span><br>==**trait_plants**== => “For plants, short-distance dispersal was related to barochory, myrmecochory and autochory while long-distance dispersal corresponded to species dispersed by hydrochory, zoochory and anemochory.”                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| landscape_2017, landscape_2021, landscape_2022                          | .csv    | Tableaux d'indices paysagers.<br>Formaté (mean-centered et scaled) tq : SHDI *(Shannon; Diversity metric; takes both the number of classes and the abundance of each class into account)*, pNC.hete *(Proportion of heterogenous pixel pairs)* , pNV_2 () , Sum_length *(Total length of hedgerows (m))*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |


indices climatiques → déjà fait / sélec ds article uroy (cascading effects...) → harmoniser périodes prises entre taxons tho ?

## 💻 Script  R 


Data loading + libraries ✅

>[!info] Preliminary analysis
>check les sp les plus fréquentes
>check les sp les plus abondantes
>check les lignes (donc pt / windows) et scan un ou la moyenne de tt les colonnes de relevé d'sp = 0 soit seulement possible si 0 species dedans.

> [!info] Fonction ==indice_calc==
>prends "data" en source (tableau donné taxon, genre plants_hedgerows)
>>``` r
>data_idc_Point=data[, c(1,2), drop = FALSE]
>Windows = unique(data[,1])
>data_idc_Window=data.frame(Window=Windows)```
>
récup les infos de windows et point (même si idc_point prends pt et windows alors que windows prends que windows (uniques))
>
> le reste de la fx → 
> alpha(s) simple : pour chaque **point, pas window (window beta ou gamma)**
>> richesse spé : somme du nb de colonnes sup à 0 (=nb sp présentes) pour la ligne.
>> abondance totale : arrondi de la somme totale des colonnes sp d'une ligne = arrondi de la somme des abondances de chaque sp
>> Index de Shannon et indice d'équitabilité de piélou:
>>> Shannon : package vegan, fx diversity(data avec juste col sp, index="shannon")
>>> Pielou : Shannon / log richesse spé
>
> beta :
>> pour chaque window unique (windows), subset de data général (genre hedgerows) par window qui garde que les sp.
>> `Br = beta.multi.abund(matrix_i, index.family = "bray")` → fonction beta.multi.abund (famille "bray" pour Bray-Curtis) du package *betapart* qui permet de calculer et récup dans une matrice les éléments suivants :
>>>- `Br$beta.BRAY` : dissimilarité totale de Bray–Curtis
>>>- `Br$beta.BRAY.BAL` : composante “turnover” (remplacement d’espèces, équilibrée)
>>>- `Br$beta.BRAY.GRA` : composante “nestedness” (perte/gain d’abondance graduelle)
>>pour chaque window, on crée une colonne pour les 3 indices, avec un nom différent, avec *en plus* une colonne qui indique quelle proportion de la dissimilarité est due au turnover (BAL/BRAY).
>
>gamma : 
>>Occurence :
>>>On supprime la 2è colonne (le site), car on veut agréger par fenêtre
>>>On transforme toutes les abondances ≠ 0 en **1** → **matrice de présence/absence** (1 = espèce présente, 0 = absente), enregistré dans `data_sspt_p_a`
>>>occurence moyenne par window = aggrégation des lignes par `Window`→ on prends la moy des vals de présence pour chaque sp → proportion de sites ou sp présente ds fenêtre
>>Richesse spé :
>>> somme pour chaque window de cb d'sp ont une occurrence > 0.
>>Shannon et Pielou
>>> Comme pour alpha mais sur data ***window*** pas point cette fois

## Taxonomic approach

#### Prélim
##### Table indices et landscape fusion
- tableau d'indice utilisant fx décrite plus haut
- Sous tableaux séparés pour indices site et window
- merge des tableaux indices sites et window avec landscape avec la clé commune de window à chaque fois

##### Analyses préliminaires
- moyenne de la richesse spé par points
- Analyses de corrélation (cor) pour éviter colinéarité entre variables étudiées, par site et par window

### Alpha

##### Richesse spé 
>[!important] Comptage donc loi de poissson, ou binomiale négative si overdispersion

Utilise **mixed model** pour garder compte de l'effet window

- plot (utilise formule modèle mixte) pour check les tendances
- `mod_lin_S = glmer(specific_richness ~ SHDI + pNC.hete + pNV_2 + Sum_Length + (1 | Window), family = "poisson", data = data_Point)` aka le lmm avec loi de poisson et avec en effet aléatoire la window.
- test de dispersion ↓↓↓
>[!important] testdispersion()
> testdispersion() → si pas précisé "alternative=" ca fait two sided aka test over et underdispersion
> => si dispersion sup à 1 et que signif (inf au seuil) → over disp (qui peut poser pb de faux positif en augmentant les pvalues), si signif et disp inf à 1 → underdisp

- si overdisp on utilise négative binomiale, et on re teste pour dispersion
- check de validité via plot de pearson résiduals vs fitted → tendance ok ?
- pour le modèle on fait anova type 2, pour tester significativité globale de chaque var prédictive et corriger pr présence d’autres var ds modèle
- summary du modèle pour avoir les coeffs estimés, qui sont les effets estimé des var expli sur var rep (ici richesse spé)
- r2 calculé avec `r.squaredGLMM` du modèle, et on a utilisé le r2 conditionnel (=effets fixe + aléatoire, alors que r2 marginal que effet fixe) calculé avec la méthode delta (standard a priori ?)

##### Piélou (varie entre 0 et 1)
- pareil plot avec fx glmm
- If there are proportion equal to 0 or 1, they are transformed according to the recommended method by Smithson and Verkuilen (2006).
	- stocke dans n le nb de lignes du tableau data_Point →→→ transfo colomn pielou tq new pielou = (old pielou ×(n−1)+0.5​ ) / n
- GLMM fait avec `glmmTMB` qui sert à "fitting generalized linear mixed models" dont les **betaregression**, employée ici dans le cas de pielou pcq compris entre 0 et 1
reste comme avant :
- check de validité via plot de pearson résiduals vs fitted → tendance ok ?
- pour le modèle on fait anova type 2, pour tester significativité globale de chaque var prédictive et corriger pr présence d’autres var ds modèle
- summary du modèle pour avoir les coeffs estimés, qui sont les effets estimé des var expli sur var rep (ici pielou)
- r2 calculé avec `r.squaredGLMM` du modèle, et on a utilisé le r2 conditionnel (=effets fixe + aléatoire, alors que r2 marginal que effet fixe) calculé avec la méthode delta (standard a priori ?)

### Gamma 

##### Richesse spé :

glm (pas glmm pcq pas effet window) 
- modèle glm poisson (comptages)
- testdispersion
- plot
- → si overdisp, refaire glm avec modèle négative binomiale
- check check de validité via plot resid?
- pour le modèle on fait anova type 2, pour tester significativité globale de chaque var prédictive et corriger pr présence d’autres var ds modèle
- summary du modèle pour avoir les coeffs estimés, qui sont les effets estimé des var expli sur var rep (ici richesse spé)
- r2 calculé avec ==**`pseudoR2=100*(mod_lin_Sg$null.deviance-mod_lin_Sg$deviance)/mod_lin_Sg$deviance)`!!!**== → la _déviance nulle_ = la déviance d’un modèle **sans prédicteurs**, juste avec une constante (la moyenne) et `mod_lin_Sg$deviance` → la _déviance résiduelle_ = la déviance du **modèle ajusté** avec var expli.

##### Pielou
- plot formule glm
- `betareg` modèle linéaire
- plot résiduals → check validité
- pour le modèle on fait anova type 2, pour tester significativité globale de chaque var prédictive et corriger pr présence d’autres var ds modèle
- summary du modèle pour avoir les coeffs estimés, qui sont les effets estimé des var expli sur var rep (ici pielou) et pseudo r2


### Beta

##### Total Bray Curtis Dissimilarity Index

- plot formule glm
- bray curtis entre 0 et 1 donc betaregression comme pielou avant
- plotresid validité
- anova II pour signif
- summary pour coeff et pseudo R2

##### Proportion de balanced change component

- plot formule glm
- betaregression
- plotresid validité
- anova II pour signif
- summary coeffs et pseudo r2

## Functional approach

#### Préliminaire

##### Tableau pivot 
Passe de colonnes SP et ligne = 1 pt /window à
Window/point/Sp/abondance = 4 col
![[Pasted image 20251022111341.png]]

##### Fusion avec le tableau classe dispersion des plantes 
établi via clé primaire "species"

#### Analyse préliminaire

#### Calcul des % par point puis window

Fonction `summary_table()` = résumé statistique selon une échelle (`scale`_Window_, _Point_,), → calcule % de richesse et d’abondance par classe de dispersion (`disp_class`)

1. nettoie les données avec `filter(!is.na(disp_class))`, ou on vire tt ceux qui ont pas de disp class
2. ```R
   group_by({{ scale }}, disp_class)
summarise(
  richness = n_distinct(species),
  abundance_totale = sum(abundance),
  .groups = "drop"
)```
donc là pour chaque couple scale/disp_class on récup somme abondance et richesse spé (nb sp distinctes)
3. pour scale uniquement 
- richesse totale (somme des richesses de chaque classe), l’abondance totale, puis les pourcentages de richesse et d’abondance pour chaque `disp_class`.
4. 
`

