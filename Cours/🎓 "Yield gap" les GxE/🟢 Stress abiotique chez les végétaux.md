---
prof: Christine BISSUEL
---
## Analyse et modélisation de l’interaction développement-croissance en cas de déficit hydrique

Cadre d'analyse utile pour autre stress / combinaisons de stress
Cours partagé en 3 parties 
# I] Créer et caractériser un déficit hydrique

>[!element] Créer et caractériser une contrainte hydrique par :
>◼ son intensité
>◼ sa durée
>◼ sa position dans le cycle de développement
>◼ en référence à un « témoin » = traitement bien alimenté en eau
>>Complexe, faut accepter variabilité stress hydrique dans la phase de désèchement, rends moins facile à interpréter que quand on pilote d'autres déficits, et complexe a faire avoir un impact que là ou on voudrait dans le cycle de développement
>>Si on fait comparaison géno, pour un déficit hydrique donné, mais si ils ont pas la même surface foliaire et conductivité hydraulique => pas comparable comme ca
>>On peut faire différents pilotages, par pesée/séchage de sol par exemple (eau perdue par rapport au jour d'avant )
>
>◼ Sur la base de variables d’état hydrique du sol :
>- Humidité du sol,
>- Potentiel hydrique du sol,
>![[Pasted image 20240920083322.png|center|450]]
>>Dans le premier niveau de DH, on laisse se désècher les colonnes et on mesure l'évolution de potentiel hydrique du sol => le potentiel Hydrique de "surface" décroit plus vite que en profondeur, qui arrive vers 20j
>>D71/72 se différencient à un niveau de stress intense (600 millibars ou jsp quoi), on va maintenir ce stress pour D72, mais on va réalimenter au bout d'un moment. On les différencie par l'intensité pilotée
>
>◼ En ajustant des quantités d’eau variable
>![[Pasted image 20240920083659.png|center|400]]
>>Grande irrigation faite (pic)
>>Stress = noire, réalimentée = blanc
>>Transpiration fonction du climat, de l'état de la surface foliaire, de fermeture ou non des stomates, on essaie de mesurer l'évaporation pour pas la prendre en compte.
>>3 plateforme de phénotypage automatique haut débit en france
>
>◼ Pour estimer (ou modéliser) :
>
>
>- Eau disponible (ASW en % RU)
>- Fraction d’eau « transpirable » du sol (FTSW en % TTSW),
![[Pasted image 20240920083822.png|450]]![[Pasted image 20240920083922.png|380]]
>> RU = $\large\Delta$ (Capacité au champ - pt de flétrissement permanent)
>> RU des horizons inférieurs est moindre.
>> Au delà d'une certaine profondeur, il n'y a plus de racines, donc ca sert à r de calculer à partir de là.
>> Courbe verte = potentiel limite (-1,5 mPa) considéré pour toute les cultures.
>> En fin de culture on a de l'eau résiduelle entre mesurée (en rouge) et la limite réelle (ligne verte)
>> Au champ ce qui joue => la culture peut-elle aller jusqu'au pt flétrissement limite (-1.5 ? sinon faudrait voir la RU réelle qui serait plus petite); quelle proportion du sol la plante peut explorer et exploiter ?
>> Le total d'eau transpirable (TTSW)(Ritchie 81) => Eau utilisable entre capacité au champ et la limite inférieur d'humidité résiduelle que l'on mesure dans un sol à la fin de la saison culturale (ligne rouge). Correspond à la limite à partir de laquelle la culture n'absorbe plus l'eau
>> Liée à la fois à l'espèce et à la saison étudiée, peut excéder la RU
>> Ce qu'on va chercher à calculer ensuite c'est la FTSW, la fraction transpirable du sol, en %TTSW
>> On a décidé que 10% transpi par rapport à plantes témoin = limite inférieur TTSW (mesurable au champ) et en pot ca s'estime par rapport à la conductance stomatique gs, avec gs<10% témoin = limite inférieure
>> Attention cependant gs varie énormément donc on essaie de normaliser les variables
>
><b><font color="#245bdb">Réserve utile (RU)</font> & <font color="#7030a0">eau disponible (RH</font>, ASW, <font color="#00b050">FTSW</font>)</b>
>![[Pasted image 20240920084040.png|center|500]]
>>FTSW ==> trouver ou placer le 0 
>
>◼ Pas de temps fonction
>- Dispositif
>- Type de mesure
>- Pilotage irrigation
>![[Pasted image 20240920091214.png]]![[Pasted image 20240920091228.png|400]]
>>Chaque fois que irrigation, grosse fluctuation 
>>Sur les plateformes on peut faire bien plus précisément et en quantité (graph bleu), pour faire toute la gamme de stress hydrique, peut être utile par exemple pour paramétrer un modèle

>[!element] Caractériser les déficits imposés…
>◼ Variables d’état hydrique du sol :
>- Eau disponible (ASW ou FTSW)
>- Potentiel hydrique du sol (soil)
>◼ Variables d’état hydrique des plantes :
>- Teneur en eau relative (RWC),
>- Potentiel hydrique foliaire de base ($\large\Psi$predawn => témoigne directement de l'état hydrique du sol car transpi a pas encore repris) ou au midi solaire ($\large\Psi$midday => permet différencier sp. iso/anisohydriques),
>- Conductance stomatique (gs) = flux d'eau transpiré (indicateur de fermeture ou non stomate aussi, et non destructif)
>◼ Indicateurs :
>- Température de surface,
>- Variation de diamètre des organes,
>- \[ABA],
>- Signaux acoustiques, …
>![[Pasted image 20240920091914.png|center|200]]

##### FTSW corrélée au $\Large\Psi$ base des plantes
![[Pasted image 20240920092121.png|center|400]]

>[!element] … par période du cycle cultural
>![[Pasted image 20240920092549.png|center|500]]
>on va construire des indicateurs pour témoigner d'un indice du niveau de stress par échelle culturale
>>*Faut expliquer dans nos rapport pourquoi, et COMMENT on fait nos indicateurs agroclimatiques dans nos soutenances; >Faut le faire en fx de l'espèce, de la variété.*
>
>Ici (graph) on a des périodes caractéristiques bornée par stade dev clé, et on calcule les indicateurs selon les périodes qui nous intéresse

##### Analyser la réponse de variables clés /stress transpiration normalisée (gs/gs<sub>temoin</sub>) contrôlée par l’état hydrique du sol (FTSW)
![[Pasted image 20240920092950.png|center|350]]
>1 = remplissage, 0 = 0 de TTSW
>La variable est gs<sub>plante_déficit_hydrique/gstémoin</sub>
>Tant que la réserve est plutot bien rempliée on voit pas bcp de diff (NTR = normalized Transpiration ratio) => NTR 1 = pas de diff, et puis, à partir de la flèche rouge, transpi significativement inférieure (0.9 ratio jpacompry).
>Une fois fini d'exploiter la réserve on est à 0.1 pcq reste les 10% (borne inf, check avant)
>Courbe plutôt liée à sp, mais on va essayer de la faire par génotype
>NTR est réversible mais quand même sensible à l'état du sol


##### Analyser la variabilité de ces réponses entre espèces et génotypes

>[!summary] Résistance stomatique (rs)
![[Pasted image 20240920093204.png|260]]![[Pasted image 20240920093237.png|340]]
>rs = 1/gs
>On voit évolution pour tournesol par ex => grand écart hydrique par rapport au témoin car anisohydrique, accepte de baisser, alors que pour le manioc, isohydrique.
##### Variabilité génotypique existe : <b>FTSW seuil</b>
![[Pasted image 20240920094058.png|center|500]]

Sur l'arachide : 4 génotype => niveau de seuil pour le géno1 < 0.3 (bien!), alors que géno4 à 0,6 (pas bien!) => génotypes plus ou moins intéressant pour leur réaction par rapport au stress hydrique selon le lieu d'implantation désiré.

##### Phénotypage Haut débit de Variables d’intérêt
![[Pasted image 20240920094417.png|center|350]]
![[Pasted image 20240920094811.png]]![[Pasted image 20240920094849.png|200]]
Drone au champ                                                                   Sur plateforme expé (couleur donne info sur transpi etc)
![[Pasted image 20240920094937.png|center]]
modif de l'humidité de l'air en vert, en noir moyenne transpi, en orange rayonnement en serre
![[Pasted image 20240920095051.png|center|450]]
Noir = variétés ordonné en fx du delta entre T°air et T°couvert (à droite celle qui sont diff un max) en stress hydrique
Blanc = pareil mais en well watered


# II] Analyser les réponses du développement et de la croissance à la contrainte hydrique à l’échelle de l’organe et de la plante entière et ses conséquences pour le peuplement :

### 2.1. Vitesse de développement et durée de développement des organes

◼ Caractériser l’effet du déficit hydrique sur les nombres d’organes initiés, émis ou ayant fini leur expansion
- Taux de ramification (souvent booléen en stress hydrique => stop ramif, mais parfois relatif à la vitesse de dev)
- Initiation rate (Nb F initiées.CDD-1) ; plastochrone
- Leaf emergence rate (Nb F émises.CDD-1) ; phyllochrone => souvent nb feuille par °jours
>Pour la majorité des developements, qq soit l'espèce, la réponse est une fonction linéaire de la température.
>Une fois la pente mesurée, pour chaque couvert on peut déterminer quand est-ce que la plante a fait quoi : 15ème phytomère initié vers ~400 degrés jours, fini expension a presque 1100 degrés jours.
- Dates d’initiation d’un phytomère ou d’émergence d’une feuille donnée ou de fin d’expansion => variations de durée de développement selon stress (hydrique par ex) 
![[Pasted image 20240920095318.png|center]]

Développement = nombre (cellule, organe,...)
Croissance = expansion en dimension (surface, longueur, biomasse...)
Durée entre émergence de 2 feuilles successives = phyllochrome
Durée entre initiation phytomère 15 et 16 par  ex = \[???]chrome

![[Pasted image 20240920101048.png|center|400]]
Ce cadre d'analyse existe aussi pour les organes reproducteurs.
On prends le nb d'organe et on calcule un nb d'avortement (précoce/tardifs) pour accéder au nb de grains
![[Pasted image 20240920102107.png|center|400]]
A chaque processus il y a une pente spécifique qui permet de recalculer le developpement.
Calculer tous les étages, quand émergé, vitesse de dev...

Sur organes végétatif faut intensifier le stress pour voir des effets, comparés aux organes reproducteurs qui sont plus sensibles
>[!example] Ex 1 (maïs) contrainte hydrique temporaire et d’intensité modérée,
(Tardieu et al., 2010) :
>❑ sans impact sur le plastochrone ni le phyllochrone -> sans effet sur le nb de feuilles /plante (a)
>❑ affecte l’expansion des feuilles du 5ème au 11ème phytomère (b)
>![[Pasted image 20240920102418.png|center|350]]


>[!example] Ex 2 (pois) contrainte hydrique longue et d’intensité modérée,
(Turc et Lecoeur, 1995) :
❑ sans impact sur le plastochrone ni le phyllochrone, mais arrêt du fonctionnement du méristème apical -> effet sur le nb de feuilles émises /plante et la durée du cycle
❑ affecte l’expansion des feuilles
>![[Pasted image 20240920102644.png|center|350]]

>[!example] Ex 3 (Vigne) : déficit hydrique long et croissant :
❑ affecte la durée d’expansion des feuilles sans affecter leur vitesse d’initiation
❑ l’expansion individuelle des feuilles
>![[Pasted image 20240920102734.png|center|350]]

>[!example] Ex 4 (trèfle blanc) : déficit hydrique long et sévère :
❑ Inhibe la ramification
❑ réduit légèrement la vitesse d’initiation des phytomères + allonge la durée de développement des phytomères,
❑ Réduit l’expansion individuelle des feuilles et accélère leur sénescence
>![[Pasted image 20240920102816.png|center]]

##### Sensibilité de chaque processus à l’intensité du déficit est variable.

◼ <font color="#6425d0">Inhibition des ramifications (+++)</font>
◼ <font color="#245bdb">Vitesse d’apparition des phytomères (0 +)</font>
◼ Expansion feuille (++)
◼ Sénescence (++)

Surface foliaire/plante = <font color="#245bdb">Nb feuilles/stolon</font> x SF/feuille x <font color="#6425d0">Nb stolons/plante</font>
![[Pasted image 20240920102924.png|center|600]]
Stress hydrique, même modéré, limite énormément le nb de stolon => taux de réduction énormes
##### -> Modélisation de la réponse de la vitesse d’apparition des phytomères (NAR-Node Appearance Rate) à la disponibilité en eau du sol (FTSW)

>[!example] Ex pour un déficit hydrique précoce chez le coton (Cloudel et al., 2008)
![[Pasted image 20240920103133.png|center|350]]
NAR = Normalized Appearance Rate = noeud par °j
Processus robuste : pour voir un effet sur le nombre d'organe/leur dev il faut un stress intense ou long
### 2.2. Expansion des organes : feuilles, racines, organes reproducteurs
![[Pasted image 20240920103816.png|center]]
Méristème s'agrandit avant de faire les fleurs

##### Sensibilité de chaque processus à l’intensité du déficit est variable.

◼ Inhibition des ramifications (+++)
◼ Vitesse d’apparition des phytomères (0 +)
◼ <font color="#00b050">Expansion feuille (++)</font>
◼ Sénescence (++)

Pas réversible => arrêt de développement pas rattrapable
Conséquences sur l'ensemble du couvert sont plus importante

Surface foliaire/plante = Nb feuilles/stolon x <font color="#00b050">SF/feuille</font> x Nb stolons/plante
![[Pasted image 20240920104153.png|center|600]]

>[!element] Quelles variables calculer à partir des mesures de nb et dimension des organes ?
>◼ Nombre d'organes initiés, émis, ou ayant fini leur expansion
>- Initiation rate (Nb F initiées.CCD<sup>-1</sup>) ; plastochrone
>- Leaf emergence rate (Nb F émise.CCD<sup>-1</sup>) ; phyllochrone
>- Dates d'initiation d'un phytomère ou d'émergence d'une feuille donnée ; durée de développement
> 
>◼ Dimension des organes : surface, longueur, biomasse, volume, nb cellules
>- Distribution des surfaces foliaires (LA : Leaf Area) en fonction de la production du phytomère sur la plante ; distribution des différences LA entre traitements ou entre génotypes
>- Cinétique de surface foliaire en fonction du temps : Leaf Area (mm²) ; LA (échelle logarithmique) ; LA (%LAmax)
>  -> ajustement courbe sigmoïde : LA = LA<sub>final</sub> / \[1 + exp-((t-t0)/a)]
>  - Absolute leaf expansion rate : LER (mm²/CDD) = dLA/dt = (LA<sub>2</sub>-LA<sub>1</sub>)/(t2-t1)
>  - Relative leaf expansion rate : RER (mm².mm<sup>-2</sup>.CDD<sup>-1</sup>) = dLA / LAdt = (ln\[LA<sub>2</sub>]-ln\[LA<sub>1</sub>])/(t2-t1)
>  - Duration of leaf expansion (CDD : Cumulated Degree Day) : à partir de l'ajustement de la courbe sigmoïde = temps t<sub>95</sub> correspondant à 95% de LA<sub>final</sub>
>
>◼ Intégration échelle N+1 plante ou population de plantes
>- $\large\sum\limits$ LA (m²) / unité de surface (m²) = LAI (Leaf Area Index)

##### La vitesse d’expansion du limbe foliaire est fonction de l’intensité du déficit

Modélisation de la réponse de la vitesse d’expansion de la feuille (NLE-Normalized lLaf Expansion) à la disponibilité en eau du sol (FTSW) chez 10 génotypes de tournesol
![[Pasted image 20240920114108.png|center|200]]
#####  2 processus sous-jacents : division cellulaire & expansion cellulaire
![[Pasted image 20240920114541.png|center|550]]
##### Timing et sensibilité des 2 processus différents, … pris en compte dans certains modèles
![[Pasted image 20240920114623.png]]![[Pasted image 20240920114639.png]]


Modélisation de l’effet d’un déficit hydrique sur la surface foliaire individuelle chez le pois. 
Les données de surface foliaire par phytomère (observées et simulées par le modèle) sont exprimées en % témoin (bien
alimenté en eau) (Lecoeur et Sinclair, 1996)
![[Drawing 2024-09-20 11.48.13.excalidraw|center|600]]
##### Prise en compte de la variabilité spatio-temporelle (ex : expansion limbe tournesol)
![[Pasted image 20240920115106.png|center|300]]
Réponse de l’expansion du limbe foliaire (leaf area) et du taux d’expansion relatif (RER) à un déficit « précoce » ou
« tardif » chez la feuille de tournesol (Granier et Tardieu,1999)
![[Pasted image 20240920115419.png|center|300]]
![[Pasted image 20240920115707.png|center|400]]


LER (Leaf Expansion Rate, mm/ °Cd-1) : varie au cours de la journée, est sensible à l’état hydrique
![[Pasted image 20240920115759.png|center]]

##### Phénotypage plateforme : intégration spatio-temporelle, études des réponses génétiques et environnementales à différentes échelles
![[Pasted image 20240920115847.png|center|200]]
![[Pasted image 20240920115920.png|center|300]]
![[Pasted image 20240920120004.png|450]]![[Pasted image 20240920120127.png|450]]

##### Phénotypage au champ : traits ciblés (ex Green LAI)
![[Pasted image 20240920120222.png|center]]


>[!element] Déficit hydrique et développement des organes reproducteurs
>◼ Initiation florale
>◼ Avortement d’organes floraux
>◼ Taux de fécondation :
>- Viabilité du pollen
>- Croissance et/ou réceptivité des stigmates
>
>◼ Avortement d’embryons 
>![[Pasted image 20240920120400.png|center|250]]

**Potentiel de rendement** = Nb stolons reproducteurs x Nb inflorescences /stolon x Nb fleurs viables / inflorescence x Nb d’ovules / fleur

![[Pasted image 20240920120503.png|center]]
>[!warning] Un **déficit hydrique modéré** peut favoriser le développement reproducteur du trèfle blanc par rapport à un témoin bien alimenté en eau :
◼ **↗** % stolons reproducteurs / plante (ou m²)
◼ **↗** % inflorescences / stolon
◼ = % fleurs viables / inflorescence
◼ **↘** viabilité du pollen mais sans conséquence pour le taux de fécondation
◼ **↗** poids des grains
DONC **↗** rendement en semences

>[!warning] Un **déficit hydrique sévère** affecte le développement reproducteur du trèfle blanc :
◼ **↘**  % stolons reproducteurs
◼ **↘**  % inflorescences / stolon
◼ **↗** % avortement de fleurs
◼ **↘** viabilité du pollen et des ovules et le taux de fécondation
DONC **↘** Rendement en semences

##### Analyse d’images multispectrales au champ : reconnaissance et comptage d’organes reproducteurs (épis)
![[Pasted image 20240922153014.png|center]]
![[Pasted image 20240922153125.png|center|450]]
![[Pasted image 20240922153147.png|465]]![[Pasted image 20240922153223.png|450]]
![[Pasted image 20240922153305.png|450]]![[Pasted image 20240922153336.png|450]]

![[Pasted image 20240922153631.png|460]]![[Pasted image 20240922153740.png|450]]

### 2.3. Photosynthèse et production de biomasse sous contrainte hydrique
![[Pasted image 20240922154647.png|center|450]]

##### La photosynthèse : processus moins sensible que l’expansion foliaire
![[Pasted image 20240922154737.png|center|450]]
![[Pasted image 20240922154756.png|center|450]]

◼ WUE (water Use Efficiency) :
❑ Photosynthèse /Transpiration
❑ MS (ou Y) /ETR
![[Pasted image 20240922154838.png|350]]![[Pasted image 20240922154915.png|310]]

Réflexions (Passioura, 1996 ; Blum, 2009) / distinction entre WUE (Water Use Efficiency) & EUW (Effective Use of Water)

###### Quels traits améliorés par la sélection sous contrainte hydrique ?

◼ On n’a pas /on ne peut pas vraiment améliorer génétiquement la production en améliorant WUE
◼ 2 voix possibles d’amélioration :
- la capture de l’eau pour la transpiration (T) est un point clé pour augmenter la production : Araus et al., 2002, Izanloo et al., 2008, montrent que les meilleurs génotypes de blé, de coton et de riz expriment gs et T> permettant une fixation CO2> // TE (et WUE<)
- la synchronisation entre disponibilité de la ressource et période de développement où T peut être mieux valorisée // Water Use (W).
NB : HI augmenté quelque soit l’environnement de sélection

##### Analyser les facteurs limitants des contextes de sélection pour identifier les leviers 

Augmentation des rendements sous différents E (DH)
![[Pasted image 20240922155301.png|center]]

**Y= W x WUE x HI** (eq. Passioura, 1996)
Meilleure performance sous E limitant pourrait être due :
**Hyp 1/** capacité accrue à prélever l’eau (W en mm),
**Hyp 2/** amélioration WUE (g/mm),
**Hyp 3/** amélioration de HI (g récolté /g biomasse)
![[Pasted image 20240922155454.png|center|400]]
Analyses rétrospectives des performances de génotypes anciens & nouveaux sous différents environnements :
-> HI augmenté qq soit E

![[Pasted image 20240922155717.png|center|600]]
-> W diminué ou augmenté selon la période du cycle
->ratio augmenté **W post anthèse / W pré anthèse**

##### 2.4. Répartition des assimilats et élaboration du rendement : modification de l’équilibre source-puits
![[Pasted image 20240922160159.png|center|550]]











# III] Modéliser ces réponses à l’échelle de la plante entière et du peuplement & analyser leur variabilité génétique

##### Modélisation de la perte de biomasse du peuplement en fonction du degré de satisfaction des besoins en eau (ks)
![[Pasted image 20240920133328.png|center|300]]
Pas mal pour classer sp dans une région donnée par ex

##### Prise en compte des effets variables sur RIE, RUE et HI (et donc sur Y) d’un DH plus ou moins intense, affectant différentes phases de développement 
![[Pasted image 20240920133404.png|center]]
Déclinaison par phase de développement

##### Modéliser la réponse d’un processus (LER : échelle organe) aux variations des facteurs du milieu
![[Pasted image 20240920133509.png|center|350]]![[Pasted image 20240920133531.png|center]]
Permet de prendre en compte plusieurs combinaisons de facteurs
Modéliser LER pour trouver LAI en stress hydrique en tenant compte de tt les facteurs par ex (?)

##### Intégrer les réponses du développement et de la croissance des différents organes dans un modèle de fonctionnement du peuplement
![[Pasted image 20240920133752.png|center]]
Faut pouvoir intégrer LER (1feuille) pour la plante et la parcelle pour savoir ce que le peuplement fait

##### Améliorer le couplage des fonctions dans les modèles : transpiration / croissance…
![[Pasted image 20240920133846.png|center|400]]

##### … et paramétrer la variabilité génétique des processus …
![[Pasted image 20240920134048.png|center|450]]
##### … et les réponses des processus clés au déficit
![[Pasted image 20240920134130.png|center|450]]
##### … analyser la diversité génétique ,aider à identifier les déterminismes génétiques (combinaisons de traits) et reconstruire in silico le comportement de génotypes
![[Pasted image 20240920134256.png|center|350]]





