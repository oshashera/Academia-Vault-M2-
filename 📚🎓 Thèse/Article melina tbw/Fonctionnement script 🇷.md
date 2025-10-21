
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
> le reste de la fx → alpha(s) simple ✅
>> richesse spé : somme du nb de colonnes sup à 0 (=nb sp présentes) pour la ligne.
>> abondance totale : arrondi du nb
> beta → pour chaque window unique (windows), subset de data général (genre hedgerows) par window, création d'une matrice de 

### Taxonomic approach


>[!important] Important
> testdispersion() → si pas précisé "alternative=" ca fait two sided aka test over et underdispersion
> => si dispersion sup à 1et que signif → over disp (qui peut poser pb de faux positif en augmentant les pvalues), si signif et disp inf à 1 → underdisp

>[!question] QUESTIONLAND AAAAAH
>
??? testdispersion() utilisé pour tester overdispersion mais y a jamais d'alternative indiquée donc ca test en "two.sided" aka over/underdispersion donc jsp si c'est le bon test? je présume qu'on veut pas d'under nn plus mais le script mentionne que le over


