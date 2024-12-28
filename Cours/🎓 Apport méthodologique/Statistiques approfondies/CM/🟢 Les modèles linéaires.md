---
prof: Yannick Outreman
category: Cours
cours: Statistiques
---
# INTRODUCTION GENERALE
## OBJECTIF

*Remplacer une multitude de méthodes statistiques présentées souvent sans lien clair entre elles, par une approche unique, intégrative et cohérente de la statistique.*
### 1ère partie : Le modèle linéaire général
Le modèle linéaire général : les concepts fondamentaux
-  La régression linéaire
- L'analyse de variance (ANOVA)
- L'analyse de Variance-Covariance (ANCOVA)
### 2ème partie : Le modèle linéaire généralisé
Comment s'affranchir de la normalité et de l’homogénéité de variance ?
Les modèles linéaires généralisés
- La régression logistique
- Le modèle Poisson – modèle Binomial Négative
### 3ème partie : Le modèle linéaire mixte
Qu’est-ce qu’un effet aléatoire ? Intégration dans un modèle linéaire
L’intérêt réel d’un modèle mixte.
___

Article de 1947, ou on utilise cyclomycine sur des insectes ede morts
![[Pasted image 20240903093949.png|600]]
*attention les ordonnées ont été tronquées sur la première diapo*
![[Pasted image 20240903094013.png|600]]
*K. von Frisch (1947) - Effects of cyclomycine of the life-history traits of the main pest in
the world - Symphasia phorhphyrha - J. Stud. Prob. Stat*

==Représentation graphique permettra jamais (hors extrêmes) d'observer des différences==

###  Contexte général 

1. Quand on compare plusieurs échantillons, issus d'une expérience ou d'observations, **on observe toujours une différence entre eux**.
2. Au moins **une partie** de cette différence (et peut être même la totalité) sera due au **hasard**, à cause des **fluctuations d’échantillonnage**. Ces fluctuations **sont totalement inévitables**.
3. Avant de se précipiter vers une mauvaise conclusion, il est **indispensable de tester si la différence observée est liée à l'effet unique du hasard** ou non.
4. L’usage des statistiques est le **seul moyen connu** actuellement pour effectuer cette vérification de manière objective

![[Pasted image 20240903094131.png|center|600]]
![[Pasted image 20240903093349.png|center|600]]




### POURQUOI FAIRE ?
#### Transmettre de l'information
Les statistiques peuvent résumer l'information contenue dans un jeu de données et ainsi faciliter sa transmission.
#### ‘DESCRIPTIVES’ = UTILISATION DE DESCRIPTEURS
La statistique descriptive est employée pour décrire le jeu de données. Il faut noter que certains descripteurs ne retiennent qu'une partie de l'information contenue dans les données.

**ATTENTION A LA DEFORMATION DE L’INFORMATION**
____
### GENERALITES

1. Différents niveaux hiérarchiques fondamentaux
- La population statistique
- L’échantillon
- L’individu ou unité statistique
2. Sur chaque unité statistique, on mesure des variables aléatoires

**UNE VARIABLE ALEATOIRE "quelque chose dont il est impossible de connaître le résultat à l'avance"**
___
### VARIABLES ALEATOIRES ET PROPRIETES

1. Avant tout, il faut définir **le type** de variables :
- Les variables qualitatives
- Les variables quantitatives discrètes
- Les variables quantitatives continues
2. La répartition des valeurs prises par une variable aléatoire se nomme **distribution**. Une distribution a pour base des lois de probabilités et de fait, ne prend pas n'importe quelle forme.

*‘toute valeur d’une variable aléatoire dépend d’une loi de probabilités’*
![[Pasted image 20240903093801.png|center|600]]
Pour une variable aléatoire donnée, certaines valeurs sont très probables et donc courantes alors que d’autres sont peu probables et donc rares.

*Si on mesure la durée de vie de, on prendra les gamma souvent* 
*Si on compte peu, on rentre dans les types poissons / binomiale negative, et si on compte bcp on va vers la normale*
Loi poisson (caractéristique aléatoire de la distribution des valeurs), force des comptages de faible espérance de faible dispersion.
La loi binomiale négative permet d'avoir des grandes valeurs (caractère agrégatif)(par ex pas de parasites et un indiv avec plein de parasites)
Variables binaires => loi binomiale
___

L’allure générale de la distribution des valeurs de la variable analysée **dépend** de l’effort d’échantillonnage.

![[Pasted image 20240903093521.png|center|500]]

3. Comment **décrire** des variables ?
#### <font color="#245bdb">Paramètres de position</font>
Ils renseignent sur l’ordre de grandeur des valeurs de la série et sur
l’existence d’une ou plusieurs valeurs centrale autour desquelles se
groupent les différentes mesures

#### <font color="#245bdb">Paramètres de dispersion</font>
Ils renseignent sur l’étalement de la distribution des valeurs et
précisent ainsi le degré de dispersion autour de la valeur centrale.
___
### ECART TYPE ET ERREUR STANDARD

**L'écart-type et l'erreur standard de la moyenne : deux notions à ne pas confondre**
![[Pasted image 20240903094348.png|center|500]]
___
### CONTEXTE GENERAL

Dans une démarche scientifique, la question posée correspond le plus souvent à identifier une ou plusieurs relations entre différentes variables.
**Quelle relation existe-t-il entre ces variables ?**

***Exemples***
- Ex 1 : Un traitement modifie la fécondité d’une plante
- Ex 2 : La santé d’un individu dépend de son habitat
- Ex 3 : Les pratiques culturales sont influencées par l’âge de l’exploitant
- ….

**Selon** notre hypothèse, une variable sera dite dépendante (ou à expliquer) de l'autre variable dite indépendante (ou explicative).
![[Pasted image 20240903094456.png|center|500]]

![[Pasted image 20240903094521.png|300]]     *Moyenne +/- erreur standard*    ![[Pasted image 20240903094607.png|300]]
___
### PHILOSOPHIE DES TESTS STATISTIQUES

#### RESUME
Après avoir émis l’hypothèse nulle, notée <b>H<sub>0</sub></b> et suggérant l’absence de relation entre **Y** et <b>X<sub>s</sub></b>, on la soumet à un test pour discerner sa crédibilité.
On détermine si nos résultats sont conformes aux résultats supposés sous <b>H<sub>0</sub></b>, c'est-à-dire si les différences constatées ne relèvent que du hasard.
*Si la pb est forte, elle a bcp de chance de se retrouver sous l'hypothèse nulle*
#### NOTIONS DE RISQUE
Un test statistique comporte deux risques d'erreur :
![[Pasted image 20240903094833.png|center|500]]
*"le meilleur statisticien en fait le moins possible (limite le nombre de test pour limiter les risques)"*
___
### CE QUE LES STATS NE PEUVENT FAIRE POUR VOUS

Les statistiques ne peuvent pas remplacer la réflexion, les analyses donnent toujours une réponse et les logiciels indiquent rarement si une méthode est bien employée ou non. Trois points à retenir :

#### DIRE LA VERITE
Les statistiques vous induiront parfois à prendre la mauvaise décision. Il ne faut jamais confondre **conclusion statistique et vérité absolue**.

#### COMPENSER UNE MAUVAISE COLLECTE DE L’INFORMATION
Les résultats d’un test ne peuvent être **de meilleure qualité** que les données. Des analyses statistiques poussées peuvent rarement cacher les
lacunes d'une démarche.

#### RELATION CAUSE / EFFET
Les tests permettent de déterminer la probabilité que votre résultat soit lié au hasard. Si cette probabilité est faible, on dit que le résultat est significatif.
Ce terme n'a rien à voir avec la causalité. **La significativité statistique n'implique pas la signification biologique**.
___
### CRITERES DE SELECTION DES METHODES STATISTIQUES

#### LA NATURE DU PROBLEME ET DES DONNEES
Il existe une très grande variété de méthodes. Mais, pour une hypothèse et une démarche données, le nombre de tests appropriés est **restreint**: le
choix d’un test dépend du **but** visé, du **design** expérimental et du **type** de variables.
#### LA FIABILITE
Dans certains cas, plusieurs tests sont applicables. Mais la fiabilité des tests repose sur des conditions d'application. Si ces conditions **ne sont pas respectées**, le test peut ne pas être fiable. Il faut **maîtriser** les conditions d’application des tests.
#### LA PUISSANCE
Lorsque plusieurs tests peuvent être utilisés, il faut choisir le test le plus **puissant** : le test ayant la plus **petite limite de détection**. Un test faible ne
détectera pas un effet significatif qui serait détecté par un test plus puissant.
___
![[Pasted image 20240903095323.png|center|600]]
___


<center><b><font color="#ff0000">SOYONS PLUS AMBITIEUX…</font></b></center> 
<center><b><font color="#ff0000">LES MODELES LINEAIRES</font></b></center>

$$\Huge Y = \beta . X + \epsilon$$
___
### LA MODELISATION STATISTIQUE

L’objectif consiste à définir des outils appropriés pour **modéliser des données observées**, en tenant compte de leur **nature aléatoire**.

Dans les méthodes décrites ici, il y a toujours une variable privilégiée, appelée **variable à expliquer** et notée **Y** (variable aléatoire).
Le but est de construire un modèle permettant d’expliquer “au mieux” cette variable **Y** en fonction de **variables explicatives**, également observées/mesurées sur les individus statistiques de l’échantillon.

**UNE MODELISATION POUR EXPLIQUER POURQUOI LES INDIVIDUS STATISTIQUES PRESENTENT DES VALEURS DIFFERENTES DE Y**
$$\Large \pmb Y = \pmb\beta . \pmb X + \pmb\epsilon$$
____
### LES PRINCIPALES MODELISATIONS STATISTIQUES

<b><font color="#245bdb">Le Modèle Linéaire Général : le modèle linéaire gaussien</font></b>
À la fois le plus simple et le plus connu des modèles statistiques, il englobe **la régression linéaire, l’analyse de variance et l’analyse de variance-**
**covariance**.
Dans ce modèle, les variables explicatives ne sont pas aléatoires (effets fixes).

Pour pouvoir être exploité, ce modèle nécessite le respect des trois hypothèses suivantes :
- **stabilité de la variance (i.e. homoscédasticité)**
- **normalité des erreurs (i.e. résidus)**
- **indépendance des erreurs**

<b><font color="#245bdb">Le Modèle Linéaire Généralisé</font></b>
Ce modèle généralise le précédent à deux niveaux :
- la loi des erreurs **n’est plus nécessairement normale**,
- la liaison linéaire entre l’espérance de la variable à expliquer Y et les variables explicatives se fait à travers une fonction appelée **fonction de lien**.
Ce modèle englobe différentes méthodes telles que la régression logistique, la régression Poisson, le modèle log-linéaire ou certains modèles de durée de vie. Par nature, il considère des variables présentant un défaut **d’homogénéité de la variance** (car lien entre moyenne et variance).

<b><font color="#245bdb">Les Modèle Mixtes</font></b>
On désigne sous ce terme des modèles permettant d’expliquer la variable à
expliquer Y au moyen de diverses variables explicatives :
- **les facteurs à effets aléatoires** intervenant dans la modélisation de **la variance de Y**
- **les facteurs à effets fixes** intervenant dans la modélisation de **la moyenne de Y**
On trouve ainsi des modèles linéaires gaussiens mixtes et des modèles linéaires généralisés mixtes. Ces modèles permettent d’analyser des jeux de données présentant <b><u>de la dépendance</u></b> (mesures répétées, mesures corrélées, données longitudinales…)
___
#### POUR RESUMER :

![[Pasted image 20240903100408.png|center|600]]
___
### AVANT TOUTE MODELISATION…. L’EXPLORATION DES DONNEES
___
#### EXPLORATION DES DONNEES

![[Pasted image 20240903100525.png|600]]
![[Pasted image 20240903100545.png|300]]

#### VALEURS ABERRANTES DANS LE JEU DE DONNEES ?
La présence de valeurs aberrantes dans Y et/ou X peut affecter la qualité de l’analyse (influence forte sur la modélisation – influential observations).
![[Pasted image 20240903100631.png|center|500]]

Solution :
Analyses graphiques des valeurs de la variable Y et des covariables X
-> **Boxplot**
-> **Cleveland plot** (verticalité = ordre d'apparition des données dans le jdd, il faut s'intéresser à l'horizontalité (est-ce qu'il y a des valeurs extrêmes rares/isolées))
![[Pasted image 20240903100652.png|center|500]]

exemple : ![[Pasted image 20240903100909.png|center|400]]
#### HOMOGENEITÉ DE VARIANCE
L’homogénéité des variances est une hypothèse forte du modèle linéaire général (ANOVA, régression, ANCOVA). Il faut ainsi vérifier si **la variance de Y** est la même dans les différentes modalités d’un facteur ou si la variance ne varie pas selon les valeurs d’une covariable X.

Solution :
Analyse graphique
-> **Boxplot**
-> **Scatterplot**
-> **Analyse des résidus vs valeurs de la covariable X** (vu plus tard)
![[Pasted image 20240903101002.png|center|500]]
*ce qui nous intéresse c'est l'amplitude des boites => instabilité*
![[Pasted image 20240903101045.png|center|450]]
*pour x faible, peu variance, pour x fort, forte variance => instabilité*

#### NORMALITE
Si la normalité de la variable Y est une condition d’application pour certaines méthodes statistiques (e.g., test t, analyse discriminante…), s’agissant du modèle linéaire général (ANOVA, régression, ANCOVA), **la condition d’application est la normalité des résidus et non la normalité de Y**.

Solution :
Analyse graphique
-> **Histogramme**
-> **Q-Q plot**
![[Pasted image 20240903101154.png|center|500]]

#### COLINEARITE
Dans le modélisation linéaire, la question posée est :
**Quelles variables X influencent la variable Y ?**

**La problème le plus évident en modélisation statistique est l’existence d’une corrélation entre les variables X = colinéarité**. Si la colinéarité est ignorée, on peut obtenir une modélisation sans effet significatif ou en enlevant un X, d’autres peuvent devenir significatif (perturbation dans la modélisation).
![[Pasted image 20240903101318.png|center|500]]

Solution :
Analyse graphique
-> **Scatterplot**
-> **Boxplot**
##### COLINEARITE *ENTRE COVARIABLES*

![[Pasted image 20240903101359.png|center|300]]
<sub>*x2 à x5 sont super corrêlées et donc donnent peu ou prou la même info (compétition), donc on va en garder que une parmis ces 4 (soit x1 + 1 des 4)*</sub>

###### COLINEARITE *ENTRE COVARIABLE ET FACTEUR*

![[Pasted image 20240903101518.png|center|500]]
*risque de lien entre variables (ici taille / sexe), donc faut identifier en quoi le facteur influence les valeurs de mes covariables* et on garde covariables plutôt que facteurs

#### RELATION ENTRE Y ET LES X
Dans l’approche exploratoire des données, nous pouvons analyser graphiquement les éventuelles relations entre Y et les X. **Attention**, cette analyse graphique des relations entre Y et X ne présage en rien de la significativité de la relation. La modélisation statistique reste l’unique moyen permettant d’identifier si la relation existe ou non.

Solution :
Analyse graphique
-> **Scatterplot**
-> **Boxplot**

![[Pasted image 20240903102057.png|center|500]]
#### INTERACTIONS ENTRE LES X
Si le jeu de données le permet et si l’hypothèse est pertinente, nous pouvons intégrer dans la modélisation des interactions entre X :
Exemple : l’effet de X1 dépend des modalités/valeurs de X2 et réciproquement ?

Solution :
Analyse graphique
-> **Scatterplot**
-> **Boxplot**
![[Pasted image 20240903102139.png|center|500]]
*si on montre qu'un X dépends d'un niveau d'un autre X on peut décortiquer un processus biologique ou autre*
____

# Modelisation 

## Modèle linéaire général - La régression

Le Modèle Linéaire Général traite :
- La régression linéaire simple ou multiple
- L'analyse de variance
- La combinaison des deux : modèle de Variance – Covariance

Son inconvénient réside dans ses hypothèses restrictives :
- **Normalité des résidus**
- **Indépendance des résidus**
- **Homoscédasticité (stabilité de la variance)**
$$\large\pmb{Y = \beta . X \; +\; \Large\epsilon}$$
##### Les résidus 
![[Pasted image 20240903104103.png|center|300]]
Résidus = écart entre observations et valeurs estimées

##### Normalité des résidus

![[Pasted image 20240903104140.png|center|400]]
On veut que des résidus suivent une loi normale

##### Homodéasticité / Hétérodéasticité

**Stabilité des résidus**
![[Pasted image 20240903104315.png|center|400]]
Les résidus auront les mêmes patterns.

![[Pasted image 20240903105043.png|center|400]]

##### INDEPENDANCE DES RESIDUS

Le modèle linéaire général s’applique à **des données indépendantes**. Toutefois, il existe plusieurs types de données ne respectant pas cette condition :
- <font color="#245bdb">Mesures regroupées :</font>
	Sur plusieurs familles, on mesure les caractéristiques immunitaires. Dans cette situation, les mesures sur les différents membres d’une famille sont corrélées (environnement commun et proximité génétique).
- <font color="#245bdb">Mesures répétées :</font>
	On mesure les caractéristiques immunitaires d’un individu dans différentes conditions. Ici, les mesures effectuées sur un même individu sont corrélées.
- <font color="#245bdb">Données longitudinales :</font>
	On mesure les caractéristiques immunitaires de plusieurs individus au cours du temps. Ici, les mesures effectuées sur un individu sont corrélées.
- <font color="#245bdb">Données spatialisées :</font>
	On mesure les caractéristiques immunitaires d’individus vivant dans différentes régions. Il faut considérer que des individus proches spatialement présentent a priori des caractéristiques proches.
<b><center>DANS CES DIFFERENTES SITUATIONS, LES ERREURS DU MODELE SONT DEPENDANTES</center></b>

#### LA REGRESSION LINEAIRE

La **régression linéaire simple** permet de détecter et de quantifier l'effet d'une variable quantitative explicative sur une variable
quantitative à expliquer. Lorsque on applique une analyse de régression, on suppose que la variable explicative est **responsable**
d'une partie de la variation de la variable à expliquer, mais que la variable à expliquer **n'affecte pas** la variable explicative .

Le modèle de **régression linéaire multiple** est l’outil statistique le plus habituellement mis en œuvre pour l’étude de **données**
**multivariées**. Cas particulier de modèle linéaire, il constitue la généralisation naturelle de la régression simple.

La régression linéaire simple :
$$\Large \pmb{Y_{i}= \alpha + bX_{i}+\epsilon_i}$$
$$\pmb{\epsilon_{i} \backsim  N(O,\sigma)}$$
La régression linéaire multiple :
$$\Large \pmb{Y_{i}= \alpha + \sum\limits^{k}_{j=1}\beta_j+X_{ij}+\epsilon_i}$$
$$\large \pmb{\epsilon_{i} \backsim  N(O,\sigma)}$$
![[Pasted image 20240903105659.png|center|400]]

Une régression permet de **résumer**, sous forme mathématique, la relation existant entre une variable à expliquer Y et une variable explicative X.
La régression permet de **décrire** la forme de la relation liant les variables.
La régression permet de **prévoir** les valeurs de Y en fonction de celles de X.
![[Pasted image 20240903105728.png|500|center]]

##### DIFFERENTES ETAPES D’UNE REGRESSION SIMPLE

Poser **les hypothèses** de travail afin d’identifier la variable quantitative à expliquer  (Y) et la variable quantitative explicative (X).  
Représenter **le nuage de points** Y (en ordonnée) en fonction de X (en abscisse)  pour <u>estimer la forme de la relation potentielle</u>.  

Effectuer l’analyse et procéder aux étapes suivantes  
1- Identifier, dans le listing d’analyse, **l’effet significatif** ou non de X sur Y
2- Identifier la **significativité** des coefficients de la régression  
3- Identifier la part de variance de Y expliquée par la variable X, grâce au  coefficient de détermination, également appelé **R²**  
4- Valider **la normalité des résidus et l’homoscédasticité**  
5- Si besoin, vérifier la **qualité prédictive** de votre modèle

##### TESTS D’HYPOTHESE IMPLICITES

Le postulat de **normalité des résidus** peut être vérifié en effectuant
une représentation graphique des résidus.
![[Pasted image 20240903105827.png|center|400]]

#### DIAGNOSTIC GRAPHIQUE VALIDANT LA MODELISATION

Pour tester les deux postulats, **homoscédasticité et linéarité**, il est nécessaire d'examiner le graphique des résidus en fonction de la variable indépendante.
L’examen de ce graphique permet souvent de détecter visuellement les violations de ces conditions implicites.
![[Pasted image 20240903105913.png|center|500]]

##### VALIDATION D’UNE REGRESSION

![[Pasted image 20240903105952.png|center|500]]
___

## Modèle linéaire général - L'ANOVA

#### L’ANALYSE DE VARIANCE - ANOVA

L’ANOVA correspond à un modèle linéaire général dans lequel toutes les variables explicatives sont **qualitatives**. Dans ce contexte, elles
sont appelées **facteurs** (d’où le terme de plans factoriels) et leurs modalités sont appelées niveaux ou **modalités**.

Ces modalités sont supposées choisies, contrôlées par l’expérimentateur ou parfois contraintes, de sorte que l’on parle **de facteurs fixes**. De son côté, la variable aléatoire à expliquer ***Y*** est toujours **quantitative** et le plus souvent **gaussienne**.
On considèrera ici l’ANOVA à 2 facteurs et différents plans factoriels

##### LES PLANS FACTORIELS CROISES

Soient A et B, deux facteurs présentant deux modalités. Deux facteurs sont dits croisés si on peut classifier leurs modalités dans une table à
double entrée (tableau de contingence).
![[Pasted image 20240904224336.png|center]]

##### PLANS FACTORIELS CROISES – MODELE <font color="#245bdb">ADDITIF</font>

Si on considère les effets comme indépendants, le modèle est **additif**.
$$\Large \pmb{y_{ijk} = \mu + \alpha_{i}+ \beta_{j}+ \epsilon_{ijk} \; \; \; \;\;\;\;\; \epsilon_{ijk} \backsim N(O,\sigma)}$$
- $\mu$ moyenne générale
- $\alpha_i$ écarts à la moyenne des moyennes de groupe pour le facteur A
- $\beta_j$ écarts à la moyenne des moyennes de groupe pour le facteur B
- $\epsilon_{ijk}$ erreur (variance non expliquée ou résiduelle)

Ecriture sous R :
Fonction : ‘lm’
Formulation : ~A+B

##### PLANS FACTORIELS CROISES – MODELE <font color="#245bdb">INTERACTIF</font>
On peut considérer la dépendance entre les facteurs en intégrant le notion d’interaction : modèle interactif
$$\Large \pmb{y_{ijk} = \mu + \alpha_{i}+ \beta_{j}+ \gamma_{ij}+ \epsilon_{ijk} \; \; \; \;\;\;\;\; \epsilon_{ijk} \backsim N(O,\sigma)}$$
- $\mu$ moyenne générale
- $\alpha_i$ écarts à la moyenne des moyennes de groupe pour le facteur A *effet principaux*
- $\beta_j$ écarts à la moyenne des moyennes de groupe pour le facteur B *effet principaux*
- $\gamma_{ij}$ écarts à la moyenne des moyennes pour les traitements AxB *effet conjoint*
- $\epsilon_{ijk}$ erreur (variance non expliquée ou résiduelle)

Ecriture sous R :
Fonction : ‘lm’
Formulation : ~A+B+A:B ou ~A\*B

![[Pasted image 20240903110957.png|center|500]]

### LES PLANS FACTORIELS... un peu de pratique 

##### PLANS FACTORIELS CROISES ORTHOGONAUX

Deux facteurs croisés sont dits orthogonaux si leurs nombres de répétitions par ligne, colonne et case vérifient la relation suivante :
$$\large\pmb{\eta_{ij}=\frac{\eta_{i.}\eta{.j}}{\eta_{..}}}$$
L’équilibre est un cas particulier
![[Pasted image 20240904215328.png|center|500]]
Lorsque le plan factoriel est orthogonal, le modèle permettra de séparer les sources de variabilités et donc de quantifier séparément les contributions de chacun des facteurs.

##### ABSENCE D’ORTHOGONALITE

Lorsque le plan factoriel n’est pas orthogonal, l’analyse de variance à plusieurs facteurs se complique : les différentes sommes des carrés des écarts ne sont plus indépendantes les unes des autres, elles ne sont donc plus additives.
Concrètement, ceci signifie que les valeurs du test F sont différentes si **l’ordre d’étude des facteurs** est modifié.

Illustration : ![[Pasted image 20240904215510.png|center|300]]
##### ABSENCE D’ORTHOGONALITE
![[Pasted image 20240904215605.png|center|400]]
![[Pasted image 20240904215631.png|center|400]]

___

<font color="#245bdb">Somme des carrés des écarts de type I</font>
	**Ajustement séquentiel**, le chercheur détermine les ajustements successifs.
	L’effet de A testé sans ajustement, effet de B testé en ajustant pour l’effet de A, effet de l’interaction testé en ajustant pour les effets de A et de B
	==> **solides arguments théoriques**
	
<font color="#245bdb">Somme des carrés des écarts de type II</font>
	**Priorité aux effets de niveau supérieur** = effet de A est testé en ajustant pour l’effet de B ; effet de B est testé en ajustant pour l’effet de A ; effet de l’interaction est testé en ajustant les effets de A et de B
	
<font color="#245bdb">Somme des carrés des écarts de type III</font>
	**Chaque effet est testé en ajustant les autres effets**, chaque facteur est étudié en dernier = effet de A est testé en ajustant les effets de B et de l’interaction A\*B
	==> **Type III plus conservateur**

Quelle que soit la méthode utilisée, l’interprétation des résultats est souvent délicate et nécessite un examen **approfondi** des résultats.

____

##### EN RESUME

<font color="#245bdb">Sommes des carrés séquentielles</font>
La somme des carrés séquentielle dépend de l'ordre dans lequel les facteurs sont entrés dans le modèle. Par exemple, dans le cas d'un modèle possédant trois facteurs A, B et C, la somme des carrés séquentielle pour B indique la proportion de la variation restante expliquée par B, du fait que A figure déjà dans le modèle. Pour obtenir une séquence de facteurs différente, répétez la modélisation en entrant les facteurs dans un autre ordre.

<font color="#245bdb">Sommes des carrés ajustées</font>
Les sommes des carrés ajustées ne dépendent pas de l'ordre dans lequel les facteurs sont entrés dans le modèle. Il s'agit de la part de la somme des carrés de la variation expliquée par un facteur unique, en fonction de tous les autres facteurs du modèle, indépendamment de l'ordre dans lequel ils ont été entrés dans celui-ci. Par exemple, dans le cas d'un modèle possédant trois facteurs A, B, et C, la somme des carrés ajustée
pour B indique la proportion de la variation restante expliquée par B, du fait que A et C figurent également dans le modèle.

##### LES PLANS FACTORIELS HIERARCHIQUES

![[Pasted image 20240903111104.png|center|350]]
![[Pasted image 20240903111125.png|center|350]]
![[Pasted image 20240903111140.png|center|400]]


##### VALIDATION D’UNE ANOVA

![[Pasted image 20240903111204.png|center|500]]

## Le modèle linéaire général - L'analyse de variance-covariance

L’analyse de variance-covariance permet d’associer dans une même analyse les principes de la **régression linéaire** et de **l’analyse de variance**. Son principal objectif est d’intégrer dans un modèle :
- **plusieurs** variables explicatives
- des variables explicatives pouvant être **qualitatives** et **quantitatives**
- en supposant une relation **linéaire** avec la variable à expliquer
$$\large \pmb{Y_{ij}= \mu + \alpha_{i}+ \beta(X_{ij}-\overline{X}_{i)}+ \epsilon_{ij} \;\;\;\;\;\;\;\;\;\; \epsilon_{ij}\backsim N(O,\sigma)}$$
**En incluant plusieurs variables explicatives, elle permet une analyse plus fine des processus biologiques**

![[Pasted image 20240903111532.png|center|500]]

##### VALIDATION D’UNE ANCOVA

![[Pasted image 20240903111556.png|center|500]]

### SYNTHESE

![[Pasted image 20240903111628.png|center|500]]

L’essentiel est en place…
… il nous reste à relaxer l’hypothèse de normalité des erreurs et d’homogénéité de la variance.

#### RAPPEL DU CONTEXTE

Le Modèle Linéaire Général traite :
- L'analyse de variance
- La régression linéaire simple et multiple
- La combinaison des deux (modèle de variance - covariance)

Son inconvénient réside dans ses hypothèses restrictives :
- **Normalité des erreurs (résidus)**
- **Indépendance des erreurs**
- **Homoscédasticité (stabilité de la variance)**
$$\Large \pmb{Y=\beta.X+ \epsilon}$$
#### RELATIVISATION DES ECARTS AUX HYPOTHESES

Le modèle linéaire général utilise le test F pour tester l’effet des variables explicatives sur Y. Le test F présente plusieurs propriétés intéressantes vis-à-vis des écarts aux hypothèses :

**Le test F est robuste aux écarts à la normalité**
- il supporte bien l’asymétrie
- il supporte moins bien l’aplatissement

**Le test F est robuste aux écarts entre les variances**
- Dans une fourchette de 1 à 16 environ

**MAIS, le test F est sensible aux écarts à l’indépendance**
- Se méfier de l’ordre d’observation des données
- Attention à la pseudo-réplication

#### ET DONC ?

**On préfère utiliser des règles empiriques**
- Examen visuel de l’histogramme/ QQplot des résidus
- Examen du graphique des résidus en fonction des estimées/ des X
- 
**… ou encore raisonner sur la nature même des variables**
- *Un dénombrement n’est pas une variable normale*
	- Elle est discrète
	- Elle varie de 0 à + infini
	- On peut, en première approche, lui supposer une loi de Poisson
	- Mais, si N grand et s petit, on peut admettre l’approximation normale
- *Une proportion n’est pas une variable normale*
	- Elle varie entre 0 et 1
	- Elle est établie sur un rapport de dénombrements (favorable/possible)
	- On peut déduire sa distribution de la loi binomiale

#### QUE FAIRE SI LES HYPOTHESES SONT VIOLEES ?

**Transformation des variables**

log(Y+1), √(Y), asin(√(Y))
On demande trois choses :
- Stabiliser la variance
- Symétriser la distribution
- La normaliser
- 
Et chacune ne peut en faire qu'une !
Par exemple, le logarithme stabilise la variance mais ne normalise pas. La racine carrée stabilise la variance sur une loi de Poisson mais ne symétrise pas. Mais parfois, on a de la chance…

**ATTENTION, UNE TRANSFORMATION PEUT MODIFIER LES EFFETS DE X**

![[Pasted image 20240903111917.png|center|600]]

## ALORS QUEL REMEDE ?…

## LE MODELE LINEAIRE GENERALISE

#### Pour résumer 

![[Pasted image 20240903112006.png|center|500]]

#### CONTEXTE

<font color="#ff0000">Le Modèle Linéaire Généralisé – (Generalized Linear Model - GLIM)</font>
Dans bien des applications, les variables à expliquer ne varient pas dans $\large \mathbf{R}$ tout mais dans $\large \mathbf{R+N}$, ou encore un intervalle d’entiers. Il est clair que le modèle gaussien est mal adapté à cette situation.
![[Pasted image 20240903112150.png|center|700]]
![[Pasted image 20240903112339.png|center|600]]
On peut pas avoir de stabilité parce que par nature ces var ont une variance qui évolue selon la moyenne

De nombreuses variables à expliquer souffrent invariablement de ces deux écarts aux conditions d’application du modèle général. Les GLM sont excellents pour traiter ces réponses.

Nous pouvons ainsi envisager d'utiliser les GLM lorsque la réponse est :
- une donnée binaire
- une donnée de comptage exprimée sous forme de proportion
- une donnée de comptage qui n’est pas une proportion
- une donnée de durée

Le modèle linéaire généralisé est une extension du modèle linéaire général.
Il présente trois propriétés importantes :
- <font color="#245bdb">La distribution des erreurs</font>
- <font color="#245bdb">Le prédicteur linéaire</font>
- <font color="#245bdb">La fonction de lien</font>

##### LA DISTRIBUTION DES ERREURS

Jusqu'à présent, nous avons effectué des modélisations statistiques avec des **erreurs normales**. En pratique, de nombreuses réponses présentent des **erreurs non normales**. Dans le passé, les seuls outils disponibles pour traiter ces problèmes étaient la transformation de la variable réponse ou l'adoption de méthodes non paramétriques.

Le modèle linéaire généralisé permet de spécifier la distribution des erreurs selon le type de réponse :
- **Erreurs de type Poisson** pour une réponse de type comptage
- **Erreurs de type Binomial** pour une réponse de type binaire
- **Erreurs de type Gamma** pour une réponse de type durée

Dans R, le type d’erreurs à considérer est défini par la directive ‘<font color="#ff0000">family</font>’.

##### LE PREDICTEUR LINEAIRE

La structure du modèle relie chaque valeur ***Y*** observée à une valeur prédite par le modèle. Cette valeur prédite est obtenue par transformation de la valeur issue **du prédicteur linéaire**. Le prédicteur linéaire, $\large \eta$, est une somme linéaire des effets d'une ou plusieurs variables explicatives $\large \pmb{X_j}$ :
$$\Large \eta_{i}= \sum\limits^{p}_{j=1} \beta_j.X_{ij}$$
où les $\large \pmb{X_S}$ sont les valeurs des $\large p$ différentes variables explicatives, et les $\large \beta_S$ sont les paramètres inconnus à estimer à partir des données.
La partie droite de l'équation est appelé **la structure linéaire**.

##### LA FONCTION DE LIEN

Le point le plus difficile à comprendre dans les GLM est la relation entre les valeurs de la variable réponse et le prédicteur linéaire. En fait, la fonction de lien va relier **la valeur moyenne de *Y*** à son prédicteur linéaire : $$\Large \pmb{\eta = g(\mu)}$$
Le prédicteur linéaire, $\large \pmb\eta$, émerge du modèle linéaire comme une somme des termes pour chacun des $\large \pmb p$ paramètres. Ce n'est pas une valeur de ***Y***. La valeur de $\large \pmb\eta$ est obtenue en transformant la valeur de ***Y*** par la fonction de lien, et la valeur prédite de ***Y*** est obtenue en appliquant la fonction de lien inverse à $\large \pmb\eta$.

<u>Exemple :</u>
Pr(tique) = Forêt + T°C + Hauteur nid + Présence d'autres sp.
\\-> \[0;1] mais impossible à déterminer 

Donc on passe par :
$\large logit(Prtique) = log( \huge\frac{P}{1-P})$ --> ] $-\infty$ ; $+ \infty$ \[

On a ainsi  $\large logit(p) = \eta$  <=> $\Huge p =\frac{e^\eta}{1+e^\eta}$

##### LES GRANDS CLASSIQUES

![[Pasted image 20240903114138.png|center|500]]

##### CALCUL DES ESTIMATEURS

Le GLM tient compte de la véritable distribution des erreurs (loi Binomiale, Poisson, Binomiale Négative, Gamma…). Ceci implique que les paramètres du modèle, $\large \beta_S$, ne sont plus estimés par la méthode des **‘Moindres carrés’** mais par la méthode dite du **‘Maximum de vraisemblance’**.

<center><b>VRAISEMBLANCE = la probabilité d’observer les données sachant les paramètres</b></center>

L’objectif de la modélisation est d’identifier les coefficients maximisant la fonction de vraisemblance : dans ce cas, les données estimées sont les plus vraisemblables au regard des données observées et de la loi de distribution des erreurs.
Les procédures utilisent plutôt le logarithme de la vraisemblance pour faciliter les calculs. La vraisemblance logarithmique sera toujours négative, les valeurs les plus élevées (plus proches de zéro) indiquant un modèle mieux ajusté.

##### QUALITE DE L’AJUSTEMENT – LA DEVIANCE

Il est très peu probable que les valeurs estimées, définies par le modèle, correspondent parfaitement aux valeurs observées. L'importance de la différence entre estimations et observations est une mesure de la qualité d’ajustement du modèle. Si une petite différence est tolérable, une grande ne le sera pas.
La mesure de la différence, permettant d’évaluer la qualité de l'ajustement du modèle, est appelée **la déviance**.

Pour calculer la déviance, le modèle estimé est comparé au modèle dit **saturé**,c’est-à-dire le modèle possédant autant de paramètres que d’observations et estimant donc exactement les données (modèle de référence).
Ainsi, **la déviance D** est – 2 fois la différence entre le logarithme du rapport de
vraisemblance du modèle estimé (L) et celui du modèle (L<sub>sat</sub>)
$$\large\mathbf{D = -2(L-L_sat)}$$
La déviance est distribuée comme un $\large \chi^2$ 
![[Pasted image 20240903114654.png|center]]

Le modèle nul est le modèle qui résume les données en un seul paramètre (E(y)) : il n’explique rien. Tout modèle estimé est situé entre les modèles saturé et nul et contient entre 1 et N paramètres.

##### Quel test ?

**RAPPORT DE VRAISEMBLANCE**
Le principe : comparer un modèle avec un modèle réduit. Ainsi, le rapport de vraisemblance ou la différence de déviance est une évaluation de l’apport des variables explicatives supplémentaires dans l’ajustement du modèle.
<center><b>D2 – D1 = 2(L1 - Lsat) - 2(L2 - Lsat) = 2(L1 – L2)</b></center>
La différence de déviance entre deux modèles suit un loi de $\large \chi$². Ceci permet donc de tester la significativité de la diminution de la déviance par l’ajout de variables explicatives ou la prise en compte d’interactions.
![[Pasted image 20240903115154.png|**center******]]

Si cette différence est statistiquement significative, on considère que le modèle le moins restrictif (celui qui comporte le plus de variables) s'adapte significativement mieux aux données que le modèle le plus restrictif.

##### LES RESIDUS

Comme dans le modèle linéaire général, plusieurs types de résidus peuvent être définis. La définition la plus naturelle, consiste à quantifier l'écart entre l'observation et sa prédiction par le modèle. On définit ainsi les résidus bruts.
L'inconvénient de ce type de résidus est qu'ils n'ont pas toujours la même variance, il est donc difficile de les comparer à un comportement attendu.
Deux types de résidus utilisés dans les GLM :
- **Les résidus de Pearson**
- **Les résidus de déviance**

Dans les deux cas, on vérifiera comme pour le modèle linéaire, qu'il n'existe pas de structure inattendue dans les résidus, en moyenne ou en variance. La présence d'une telle structure devrait porter le modélisateur à reprendre le modèle proposé pour identifier la cause de cette structure, par exemple un effet non linéaire d'une variable. **On peut montrer que les résidus sont asymptotiquement gaussiens si le modèle est adéquat, et cette hypothèse peut être vérifiée à l'aide d'un qqplot**.

##### LES INGREDIENTS D’UN MODELE LINEAIRE GENERALISE

EN RESUME
1. Une variable à expliquer
2. Des variables explicatives (covariables et facteurs)
3. Un modèle défini par :
	- Une **famille d'erreur**
	- Une **fonction de lien**
	- Un **prédicteur linéaire**
Le travail est facilité par le fait qu’il existe une liste de cas qui fonctionnent bien et des fonctions de lien, par défaut, sont associées à la plupart des familles d'erreurs.

##### LA SURDISPERSION

**DANS LE CAS D’UN MODELE ‘POISSON’**
Il se peut que la distribution observée de la variable à expliquer ***Y*** ne suive pas exactement une loi de Poisson telle qu’attendue : sa variance (i.e., dispersion) soit plus forte que celle issue d’une loi de Poisson.
![[Pasted image 20240903115415.png|center]]
Il est possible de prendre en compte cette possible **surdispersion** et d’y remédier.
<center><b>==> MODELE BINOMIALE NEGATIVE</b></center>

## LE MODELE LINEAIRE MIXTE

##### Qu'est-ce qu'un effet aléatoire 

##### CONTEXTE

> [!example] Illustration / exemple
> 
> <p align="justify">Quatre personnes Pierre, Paul, Pierrette et Paulette veulent comparer les consommations de carburant de leur voiture. Pour ce faire, ils mesurent les consommations de chaque voiture pour 5 parcours de 100 kms effectués dans des conditions homogènes de circulation. A la fin de cette récolte de données, ils ont un plan à 1 facteur ‘voiture’ ayant 4 modalités avec 5 répétitions par modalité.</p>
> Le modèle considéré est un modèle d’analyse de la variance :

 $$\Large \pmb{Y_{ij} = \mu + \alpha_{i} + \Large\epsilon_{ij}}$$

>[!example] Illustration / exemple (suite)
> <p align="justify">En pratiquant une analyse de la variance, les conclusions tirées de ces données ne valent que pour ces 4 voitures et pas pour d’autres : le facteur ‘voiture’ est un facteur à effet fixe à 4 modalités.</p>
> 
> 
><p align="justify">Un constructeur de voitures veut étudier la consommation de carburant des voitures d’un même modèle qui constituent une population, supposée homogène, mais sur laquelle il envisage une possible hétérogénéité dans la consommation de carburant (comme dans tout processus de fabrication).</p>
><p align="justify">Ainsi, il constitue un échantillon au hasard de 4 voitures de ce modèle et relève la consommation de chaque voiture pour 5 parcours de 100 kms. Il dispose alors de données se présentant sous la même forme que celles de l’exemple précédent : <b>Le facteur voiture présente quatre modalités et pour chaque modalité, on dispose de 5 répétitions.</b></p>
>
>**ET ALORS ???**
><p align="justify">Contrairement à la situation précédente, les voitures observées ne sont qu’un échantillon extrait de la population des voitures du modèle, et c’est cette population que l’on veut étudier. <b>DONC</b>, le modèle va être différent.</p>
>
><p align="justify">On admet que la consommation théorique de carburant est distribuée dans ce modèle selon une distribution normale, d’espérance <b>µ</b> ce qui signifie qu’une voiture tirée au hasard dans cette série a une consommation moyenne <b>µ</b> qui est une réalisation d’une variable aléatoire.</p>
>Le modèle devient alors : 

$$\Large \pmb{Y_{ij}=\mu+A_j+\epsilon_{ij}\;\;\;\; \epsilon_{ij}\backsim N(O,\sigma) \;\;\; A_{j}\backsim N(0,\sigma_a)}$$
$$\Large \pmb{E[Y_{ij]}= \mu \;\;\;\; V[Y_{ij}] = \sigma^{2}_{a}+\sigma^a}$$

>[!example] Illustration / exemple (suite)
> <p align="justify">Ce modèle est le modèle à un facteur à effet aléatoire qui présente donc trois paramètres inconnus (<b>µ, σ<sub>a</sub>², σ²</b>), le paramètre mesurant l’effet du facteur étant σ<sub>a</sub>².</p> 
> <p align="justify">Si σ<sub>a</sub>² est nul, le facteur n’a pas d’effet : toutes les voitures de ce modèle sont identiques, non seulement les 4 voitures observées mais toutes les voitures du modèle (i.e., la population).</p>
><p align="justify">On voit la différence avec un facteur à effet fixe : les 4 niveaux observés sont utilisés pour estimer la variance σ<sub>a</sub>² qui mesure l’hétérogénéité de toute la population constituée de l’ensemble des voitures du modèle.</p>

#### MODELE LINEAIRE MIXTE

Un facteur à effet aléatoire est un facteur dont les *I* niveaux observés sont un échantillon extrait au hasard d’une population sur laquelle l’effet de ce facteur est distribué suivant une loi gaussienne de variance inconnue σ<sub>a</sub>².
Les effets des I niveaux observés sont des réalisations indépendantes de cette loi gaussienne ; le but de l’analyse est d’étudier σ<sub>a</sub>².

Nous avons introduit cette notion de facteur à effet aléatoire avec un exemple à un facteur ; on aura compris que l’on rencontre :
- des situations où l’on observe les effets de deux ou plusieurs facteurs à effets aléatoires : ce sont les plans factoriels à effets aléatoires
- des situations où l’on étudie les effets de plusieurs facteurs dont certains sont à effets fixes et d’autres à effets aléatoires : **ce sont les plans mixtes**

Ce qui caractérise un modèle à effets aléatoires ou un modèle mixte, par comparaison avec un modèle à effets fixes, c’est 
- le fait que l’effet d’un facteur à effet aléatoire est mesuré par une variance au lieu d’être mesuré par plusieurs moyennes
- la présence de corrélations : les observations faites pour un même niveau d’un facteur à effet aléatoire sont corrélées puisqu’elles contiennent le même ai qui est l’observation d’une variable aléatoire ; 
donc, parmi toutes les observations, certaines sont indépendantes et d’autres sont corrélées, alors que dans un modèle où tous les facteurs sont à effets fixes, toutes les observations sont indépendantes

#### UN AUTRE INTERÊT : GERER LA DEPENDANCE DANS UN JEU DE DONNEES
##### MODELES MIXTES ET DONNEES CORRELEES

- <font color="#245bdb">Mesures regroupées :</font>
	Sur plusieurs familles, on mesure les caractéristiques immunitaires. Dans cette situation, les mesures sur les différents membres d’une famille sont corrélées (environnement commun et proximité génétique).
- <font color="#245bdb">Mesures répétées :</font>
	On mesure les caractéristiques immunitaires d’un individu dans différentes conditions. Ici, les mesures effectuées sur un même individu sont corrélées.
- <font color="#245bdb">Données longitudinales :</font>
	On mesure les caractéristiques immunitaires de plusieurs individus au cours du temps. Ici, les mesures effectuées sur un individu sont corrélées.
- <font color="#245bdb">Données spatialisées :</font>
	On mesure les caractéristiques immunitaires d’individus vivant dans différentes régions. Il faut considérer que des individus proches spatialement présentent a priori des caractéristiques proches.
<b><center>DANS CES DIFFERENTES SITUATIONS, LES ERREURS DU MODELE SONT DEPENDANTES</center></b>
Les modèles mixtes constituent un outil de modélisation extrêmement utile pour les situations de données dépendantes. Il est assez courant de disposer de données dans lesquelles nous avons effectué des mesures répétées pour les unités statistiques, ou dans lesquelles les unités statistiques sont regroupées (par exemple des individus dans un bloc, des sites dans une région géographique). Les modèles mixtes peuvent traiter ces données de différentes manières.
<center><b><font color="#245bdb">LA SOLUTION</font></b></center>
<center><b>En cas de données dépendantes, on intègre la structure de la dépendance comme un effet aléatoire. <br> Cet effet aléatoire rend compte de la corrélation dans les données.</b></center>

![[Pasted image 20240905120132.png|center|900]]



___
# Utilisation des modèles linéaires mixtes (cm/td doctorantes)

Y=µ+XB+E
Y (var rep) est tjrs quanti dans modèle linéaire mixte
si XB quanti = reg linéaire, si quali = anova, si quanti+quali = ancova



lmer(rep~trait1+trait2+1|trait3,data=data)
1|trait3 = effet aléatoire

BLUE, (=moyenne ajustée) permet d'estimer Beta = lmer commme avant mais avec REML =TRUE à la fin 
puis données = as.data.frame(ismeans(model,"Genotype"))

BLUP =W cherche a estimer u (dans Y=XB +Zu +E), le vecteur des effets aléatoires
variance inconnue => matrices de variance-covariance
Covariance => corrélations pour variables aléatoire => différence entre espérances


package sommer (fait pour étudier GxE)
mmer(phenotype~effetfixe1,random=~vsr(genotype,Gu=k),rcov=~units,data=fr)
predict(object=model,D="geno")

effet environmentaux mmer(phenotype~Env,random=~Genotype+Env:Genotype,rcov=~units,data=fr)



