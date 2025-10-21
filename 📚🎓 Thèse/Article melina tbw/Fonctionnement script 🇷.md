
## ⛃ DATA 

| Noms                                                                    | Formats | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| ----------------------------------------------------------------------- | ------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| plants_hedgerows, plants_crops, plants_grasslands, birds, carabids_2023 | .txt    | Relevés naturalistes (plantes (localisation), carabes, oiseaux). <br>Formaté tq : Col window (fenetre pays), col point (zone prélèvement), <br>**==cols sp plantes==** => (avec donc les relevés en colonnes; valeur = somme de tts les relevés pour la plante dans la fenetre x point DIVISE par nb de relevés sur zone/pt (dans tableaux données brutes) → **POURCENTAGE DE RECOUVREMENT**)<br>**==cols sp birds==** => (avifaune landbio brut → onglet avifaune → x lignes de la maille XXX → si  Y lignes même sp, alors Y individus (sommer les valeurs de la colonnes tot pour avoir l'**abondance (nb indiv)**. Attention, les t5/10/15 → une écoute tt les 5min, et inf/sup70 = seuil distance 70m. Un indiv peut donc avoir été entendu à t5 et/ou t10 et/ou t15 et avoir bougé par rapport au seuil 70m distance, donc ne se fier qu'à la col total. Autre élément d'importance, au dela de 10 indiv de la même sp dans la même maille/point, le compte d'abondance est capé pour les sp a large pop°, afin d'éviter de biaiser les analyses stats))<br>**==cols sp carabes ⚠ 2022==** => valeur donnée = **abondance (compte) / nb session** *AVERAGE ABUNDANCE donc* (5 session, landbio carabe data brut) donc 1 sur 1 session = 1/5 = 0,2 par ex<br>**==col sp carabes ⚠ 2023==** => valeur donnée = **abondance (compte) / nb session** *AVERAGE ABUNDANCE donc* (6 session (la n°7 n'est pas comptée, landbio carabe data brut) donc 1 sur 1 session = 1/6 = 0,33 par ex |
| trait_plants, trait_carabids                                            | .txt    | Tableaux de traits. <br>Obtenus tq : <br>**==trait_carabids==** => valeur donnée = **classe de dispersion (capacité)** issue de *[Hendrickx et al;2009](https://doi.org/10.1111/j.1466-8238.2009.00473.x)*, (short et long), déterminées à partir du système d'ailes et de leur capacité musculaire à être utilisé<br>semblent s'être basé sur les catégories (1 à 4) listées dans l'appendix 2 (fichier à part) de Hendrickx → 1&2 = short, 3&4 = long. <br><span style="background:#ff4d4f">Si data pas existante pour l'espèce, quel protocol ???? pcq y a des NA et des trucs remplis pour des sp qui existent pas dans la liste de l'appendix </span>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
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

### Taxonomic approach

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
- check de vallidité via plot de pearson résiduals vs fitted → tendance ok ?
- pour le modèle on fait anova type 2
