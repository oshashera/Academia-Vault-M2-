a = 76 = 76 = 76 = 76 = 76 = 76 = 76 = 76 = 76 = 76 = 76 = 241




si hotspots, homogénéiser seuils pour tt les buffer d'un grand paysage ? genre chaque carte issue d'un champ, doit être homogénéisé en terme de seuils vàv des autres champs de la région échantilloné, pour qu'un champ de blé en 1 soit pas estimé en 4 dans les autres relevés si on fait une gamme de valeur paysagère ? => étalonner pr homogénéiser le point commun des champs par ex?

nb cold/hotspots pourrait aussi servir de mesure de **composition**

Tester hypothèses en amont sur des trucs simples pour voir si ca peut marcher
Mettre les raisonnements ou idées virées / pas gardées / pas réalisées en annexes potentiellement


Pour l'EDLA : le faire sur **paysages fx**, pas sur les métriques en tant que tel, même si ca sera discuté plus tard (métriques) dans m&m ?

Pour l'intro : Mettre ce que je vais mobiliser / le lien avec mes questions, et donc aussi mettre le focus de l'intro plus sur la biodiv que sur les ES (serviront dans la discussion les ES)
Aussi expliquer un peu le projet COnservES je pense, développer l'opposition éco paysage classique (développer) vs continu et fonctionnel + introduire qu'on a ds projet le coté facteur bande fleurie/haie en absence/présence (voir plan échantillonage sur p-cloud) + définir concepts clés d'éco paysages => hétéro spatiale (conf, comp, connection etc) => question sur la pluvalue ajoutée du fx vàv du classique ?




### Réu cendrine 17/04/25

***GLANDULIFERA***


2 options : tirer quadrats / simuler commu en tirant sp

___
###### Questionnement méthodo 

1) Quadrat = réel assemblage vu
2) Commu sp aléatoire weighted => risque de tirer un mélange inexistant | **demander à Cécile pourquoi elle a choisi quadrats** |
Si Quadrat : => aire minimale pour une "parcelle" → valeurs de ref (ex : 16m² pour prairies, donc il faut tirer (avec remise) 4 quadrats de 2x2m² tels qu'on a dans nos data)
Selon [DELASSUS L (2015)](https://www.cbnbrest.fr/pmb_pdf/CBNB_2015_Delassus_60091.pdf)
![[Pasted image 20250418161109.png]]
![[Pasted image 20250423092320.png]]
==CALCULER POUR FORÊT==




Si commu random: tenir compte des richesse max / occsol (= notre seuil max)
Et sinon, pour les intervalles, faire un graph (pour chaque OCCSOL) tel que : 
![[Drawing 2025-04-18 13.30.29.excalidraw]] a partir des infos (que **Cendrine doit retrouver**) de surface pour chaque relevé dans mes bdds.


Se renseigner sur ce qu'on pourrait utiliser du ***Package Chloé*** pour ce qu'on veut

==**Résolution minimale = largeur haies**

______
###### Pbs à résoudre ?

Combien de "adventice" : dans nos paysages on a champ de **blé** (liste "adventices), de **colza** (❌), et de **maïs** (❌)
\+ **que faire des cultures ?** → l'intégrer / la tirer ? l'ignorer ? quid du vrai pb de grosse disparités entre les **var.**????

Arbres ? dans relevés **forêts** (et haies jsp????) y a que les plantules qui ont été relevés, pas les adultes ?????
Cendrine a mentionné des **classes d'abondance** (à check ???)

____
###### ZBEUL BDDS ET NA

Seuils pour traits NA ?
On veut avoir les infos pour recouvrement >= **80%** (donc sp rares peuvent jarter?)
Sp rares ? → définir seuils pour Pba.presence et %abondance tel que :
![[Drawing 2025-04-18 13.40.05.excalidraw|800]]


==pas oublier compo
quelle est la variabilité de nos traits (var et mean, ecart min max(5% les + bas ou haut), etc etc pour lensemble du paysage==t

##### Réu 4/29/25 Cécile (30 min)

Adventices : Très  peu abondant et présent même si diversifié donc justifie de garder cutoff	
Demander sp	cultures (Orge???? Sarrasin, Pois, Févrole) ✅
Vérif tt les cultures existantes	
Autre cult encore + denses donc probablement que passeraient pas les seuils tt façon	
Ajouter mix cérale / légu ?	
On verra quand on aura le buffer réel en occsol ?
Demander cendrine pour le paysage à quel point ils sont précis la boite de presta	
Check sensi des seuils de abondance / présence ?


| Seuils \ Nb sp finale | Forêt  | Prairies | Haies  | Adventices      | Total      |
| --------------------- | ------ | -------- | ------ | --------------- | ---------- |
| A5% / P5%             | 11     | 17       | 9      | 7 (cultures...) | 44         |
| A4% / P4%             | 20     | 21       | 10     | 7 (cultures...) | 58         |
| **A3% / P3%**         | **28** | **24**   | **21** | **8**           | **81<br>** |
| **A2% / P2%**         | **41** | **34**   | **34** | **10**          | **119**    |
| A1% / P1%             | 69     | 66       | 86     | 20              | 241        |
Un seuil de 2 ou 3% semble le plus adapté (reste à savoir combien de Na on aurait avec ca dans les BDD de traits)

\+ mail cendrine
	
"Salut Thomas,

Alors le chiffre et la lettre A-E correspondent au numéro de la maille et le numéro de la parcelle dans la maille; par contre après ce sont plusieurs quadrats dans la meme prairie (5 en tout) - pr les prairies, cela doit etre la meme chose pr les haies (5 quadrats par haie) 

Pr les adventices tu dois avoir une étiquette du style: 1_83_C1 à 8 

C1 à 10 ce sont les quadrats par parcelle que tu peux pooler pour avoir un quadrat global

(en fait tu voudrais pas me renvoyer les matrices que je t'ai données ? je n'ai plus accès au drive car ce sont des outils google interdits en chine), cela me permettrait de te préciser les choses

les valeurs sont en pourcentage donc 0.1 veut dire 0.1% 20= 20%"





Ok it did not really select the good ones for quali or quanti
Be careful that there aren't always a value in StdValue for the quanti, when that is the case, make the mean with the values in OrigValueStr
So : here are the trait id for the quantitative : 18, 26, 27, 47, 59 (can be quali too but take only the quanti for now), 95 (also quali but only take the quanti ones), 96, 111, 129, 131, 215 (keep only quanti ones), 238, 239, 252, 410, 890, 1021, 1031, 1104, 1107, 2809, 2817, 3441, 3568 (make 2 separate means : for the "DataName" column : "Flower size (diameter)" in one mean, and "Display size (flower size incl. flower head, e.g. Asteraceae)"), 3574, 3579, 3580, 3636
and the qualitative : 33, 112,



129 et 3441 présente en théorie la même info mais grosse disparité si présent pour même plante, et bcp moins d'observations pour 3441 donc on garde 129 



#### Réu cendrine 13-05-25

Raster OSO (occsol avec classes,  vérif typo classe à quel point c'est fin sur le type de forêt) 
BD haies (buffer 5m large total (donc 10m pcq OSO est en rez 10m et on pourrait l'inclure en OSO))
Conservatoire bota brest carte prédictive habitats semi-naturels (cbn)
Theia


Regarder combien de patchs de forêt
Afficher photo aérienne 

**Demander à Ronan tt ses rasters au cas ou ????**

Vérif correlation entre traits et on aura 1 trait - 1 taille de buffer => 1 raster

Vérif correlation entre traits et 50% de Na (voir si certains prédisent des traits avec bcp de trous)

Vérif correlation entre les 11 traits à -25% pour réduire potentiellement


Vérif dans taxon-trait qu'est ce qu'il reste et si on peut tjrs faire tt les taxons ou pas (si pas dire que pas possibles vàv des données)

Prendre groupe taxo le + fiable en priorité 



Tirer richesse occsol par range (min-max) selon loi normale ?
Tirer XX (100 ?) commu pour chaque occsol, avec ID | Trait aggrégé (cwm) | trait aggégé 2
Faire nb parcelle occsol sur buffer full

Se focus sur 1 échelle pour l'instant (1Km ?)








3 couches buffer 
300
750
1000 m





|                         | Bois | Prairies | Haies | Adventices         |
| ----------------------- | ---- | -------- | ----- | ------------------ |
| Min nb sp par parcelles | 17   | 9        | 9     | 0 (1 avec culture) |
| Max nb sp par parcelles | 58   | 37       | 41    | 25 (avec culture)  |
Ok, mtn ce que je veux faire en gros c'est :

j'ai mon tableau avec combien j'ai de parcelles par occsol (Summary_attribut_table), le tableau avec le min et max d'sp dans une parcelle par occsol.