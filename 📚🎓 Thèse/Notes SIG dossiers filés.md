31 mailles paysagères
1 doublon / → lequel

2 zones ou y a 3 tinytags ????? (maille 1 et 25) → décalés en réalité

Mailles carabes correspondent pas tjrs aux mailles ou y a les points carabes pcq **Landbio // climahaie**


Points carabes tjrs a coté des points botas (fin même fenêtres) → climahaies



## Identifier et lier par mailles 

| SIG                      | Numérotation exemple                                                                                                      |
| ------------------------ | ------------------------------------------------------------------------------------------------------------------------- |
| Mailles paysagères       | 791, 506, 16,...                                                                                                          |
| Haies échantillonnées    | 791A, 791B, 791C,.... (ds même fenêtre)                                                                                   |
| Prairies échantillonnées | 791A, 791B, 791C,... (ds même fenêtre)                                                                                    |
| Maille carabes (landbio) | 791, 242, 166,...                                                                                                         |
| Tinytags                 | 791A, 791B (ds même fenêtre)                                                                                              |
| Pts botanique            | Au sein d'une même maille, le code_2 est celui de la maille, et ID_CER_2 jsp ce que c'est ? y en a 3/4 dans chaque maille |
| Pts carabes              | ID_CER c'est la même merde, pour se repérer a quelle fenêtre, c'est la première partie du "Code_maille"                   |
| Haies 2022               | juste un intersect de celui fourni par l'ign, pas d'id de maille                                                          |
| Haies 2017               | idem, d'ailleurs y a l'air d'avoir quasi 0 diff entre 2017 et 2022                                                        |
| Occ_sol 2023             | Cod_Maille = n° maille, ID spécifique par parcelle                                                                        |
| Occ_sol 2022             | Cod_Maille = n° maille, ID spécifique par parcelle (le même que pour 2023)                                                |
| Occ_sol 2021             | IDEM                                                                                                                      |
| Occ_sol 2017             | IDEM                                                                                                                      |

## Infos table attribut ?

#### Mailles paysagères

| Colonne  | Info                                                                                                                                     |
| -------- | ---------------------------------------------------------------------------------------------------------------------------------------- |
| Code     | Numéro de la maille                                                                                                                      |
| Area     | Surface (km² semblerait-il)                                                                                                              |
| **SUPP** | que 0, sauf pour la **fenêtre 30** ou y a écrit "1". → est-ce l'info de la fenêtre remplacée ? si oui, ca veut dire que la 1???? **NON** |
#### Tinytags

| Colonne     | Info                                                                                                                                                                                                                                          |
| ----------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Commentaire | Donne maille + A ou B ou BH (b = bh si j'me souviens bien ce que alexandre corbeau avait dit)                                                                                                                                                 |
| X           | coordonnée gps                                                                                                                                                                                                                                |
| Y           | coordonnée gps                                                                                                                                                                                                                                |
| Near_dist   | **?????????????????????????**                                                                                                                                                                                                                 |
| rel_fev_21  | check statut + récupération des données (réussite/échec/pb technique) **non changement maille en remplacement 452 pour la maille 30, est-ce le changement de maille ?**                                                                       |
| Code_agri   | **???** j'imagine permet d'identifier si on est dans une parcelle d'agri, et si oui a qui ca appartient ? (culture et prairies)                                                                                                               |
| rel_jui_21  | check statut + récupération des données (réussite/échec/pb technique) **????????? en 452 (maille) y a "decalé maille finie", du coup c'est elle la nouvelle maille? mais y a du "ok en fev 21 pour cette maille donc elle existait déjà ???** |
| mars_22     | check statut + récupération des données (réussite/échec/pb technique)                                                                                                                                                                         |
| nov_21      | check statut + récupération des données (réussite/échec/pb technique)                                                                                                                                                                         |
| juin_22     | check statut + récupération des données (réussite/échec/pb technique)                                                                                                                                                                         |
| nov_2022    | check statut + récupération des données (réussite/échec/pb technique)                                                                                                                                                                         |
| mars_2023   | check statut + récupération des données (réussite/échec/pb technique)                                                                                                                                                                         |
| juin_2023   | check statut + récupération des données (réussite/échec/pb technique)                                                                                                                                                                         |
#### LANDBIO : Prairies échantillonnées et Haies échantillonnées et Mailles échantillonnées

##### Maille échantillonnée

| Colonne | Info (utile)                                     |
| ------- | ------------------------------------------------ |
| Code    | N° de maille correspondant à "maille paysagères" |
##### Haies échantillonnées

| Colonne   | Info                            |
| --------- | ------------------------------- |
| Hedgerows | N° maille + Id haie (A,B,C,...) |
| Adj_LU    | Occsol adjacente (des 2 cotés)  |
##### Prairies échantillonnées

| Colonne      | Info                                                                                                                                                   |
| ------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Maille       | N° maille                                                                                                                                              |
| Id prairies  | id de chaque prairie échantillonnée ds cette fenêtre                                                                                                   |
| Code_Agri    | **encore un truc pour identifier a qui ca appartient ?**                                                                                               |
| Gestion      | modalités de gestion si elles existent (et qu'on a l'info)                                                                                             |
| Age          | age de la prairie depuis sa création par l'homme ou son origine naturelle                                                                              |
| Commentaires | **pas d'info pour la 452 car "maille supprimée ensuite"?????**<br>diversité de commentaire (gestion, appréciation agri, doute sur ??? (par renseigné)) |
#### Climahaie : pt bota et pt carabe

##### Points carabes

| Colonne     | Info                                                                               |
| ----------- | ---------------------------------------------------------------------------------- |
| Code_maille | **????**                                                                           |
| ID_CER      | n° maille                                                                          |
| Long_haie   | Longueur de haie (***parfois vide, probablement si pas échantillonné ds haie ?***) |
| Nature      | **H ou A, correspond à Haie ou Autre ???** → proche haie et pas haie               |
| Commentaire | donne info de déplacement potentiel de pts par ex                                  |
##### Points bota

| Colonne     | Info                                                                                 |
| ----------- | ------------------------------------------------------------------------------------ |
| Pt_Car      | **null ou 1 ??????? correspondance relative avec endroit échantillonnage carabes ?** |
| Code 2      | Id de maille                                                                         |
| ID_CER_2    | **??????**                                                                           |
| Code_maille | Code_2 + Id_CER_2                                                                    |
#### OCCSOL (pareil entre années)

| Colonne    | Info                                                       |
| ---------- | ---------------------------------------------------------- |
| fid        | Id de la feature (au global), **constant entre années**    |
| code_occ_s | N°de la classe theia pour cette catégorie (large) d'occsol |
| Surface    | surface en m² (probablement)                               |
| Cod_Maille | N° maille                                                  |

