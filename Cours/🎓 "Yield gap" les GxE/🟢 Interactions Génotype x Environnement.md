---
prof: Christine BISSUEL
prof2: Anne LAPERCHE
---

#### Réseau variétal colza Nord Est :
14 lieux, 16 génotypes
![[Pasted image 20241002101117.png]]

#### Rendement selon les lieux classés selon leur rendement moyen
![[Pasted image 20241002101145.png]]

#### Quelles stratégies de conseil variétal ?
• On fait l’hypothèse que chaque site expérimental représente les conditions de culture d’un agriculteur et que les rendements observés dans le réseau correspondent aux rendements que ferait cet agriculteur.
• On fait l’hypothèse que dans un contexte d’incertitude sur l’adéquation des variétés aux conditions locales, l’agriculteur constitue sa sole de colza à partir de 3 variétés.

#### Stratégie S1 : « non conseil »
![[Pasted image 20241002101317.png]]
![[Pasted image 20241002101327.png]]

#### Stratégie S2 : conseil à partir des « rendements moyens des variétés »
![[Pasted image 20241002101403.png]]

Gain moyen pcq 4,40 au lieu de 4,21 avec strat 1

#### Avantage de S2/S1
![[Pasted image 20241002101444.png]]
Le gain moyen est de 4,63% (dernier point à droite du graph) : d'un site à l'autre, il varie d'une valeur négative (99,6 (%)) à presque 10%.
Les informations de rendement variétal apportées par le réseau génèrent en moyenne un gain de près de 3% de rdt et une amélioration de la régularité de ces rendements par rapport à une situation S1 correspondant à l'absence de réseau. Ce gain de 5% est très irrégulièrement réparti entre les "agriculteurs" (entre perte légère et +10%)

#### S3 : on connaît « un peu » les IGE, les 3 meilleures variétés en chaque lieu
![[Pasted image 20241002101802.png]]

### S4 : on connaît « parfaitement » les IGE
![[Pasted image 20241002101832.png]]

### Quels gains de la connaissance des IGE ?
![[Pasted image 20241002101859.png]]

#### Valeur en indice de chaque stratégie
![[Pasted image 20241002101940.png]]

#### Contexte des essais variétaux

• Des essais nombreux et couteux...
– Pré-inscription : VATE (GEVES)
– Post-Inscription (instituts techniques)
• Des variétés qui se renouvellent vite -> **peu de temps pour les connaître/ les évaluer (de moins en moins)**
![[Pasted image 20241002102101.png]]

#### Importance des l’IGE pour la sélection variétale ?

• Compliquent beaucoup le travail des sélectionneurs qui travaillent pour une large zone géographique
- difficiles à dissocier des effets génétiques
- limitent la répétabilité des résultats
- réduisent l'efficacité de la sélection

#### Contexte environnemental
![[Pasted image 20241002102214.png]]

#### Réflexions ….

• Est-ce que les moyennes seront toujours pertinentes ?
– Environnements plus contraignants
– Moyenne toujours idéale quand on sort d’environnements non limitants ?
• La sélection doit-elle proposer des variétés généralistes et/ou spécialistes ? Notion d’adaptation
• Le choix de la variété est un élément important de l’ITK : quelle information fournir aux agriculteurs pour faire le bon choix ?
• Nécessité de mieux mettre en évidence, quantifier, voire comprendre les interactions GxE

#### C’est quoi une IGE ?
![[Pasted image 20241002102314.png]]

>[!example] EX 
>![[Pasted image 20241002102353.png]]


# Méthodes d’analyses des interactions GxE
## Méthodes statistiques

#### Caractérisation des IGE basée sur l’ANOVA

• Déterminer la part des IGE par ANOVA
– Tableau d’analyse de variance
– Introduction de la notion d’écovalence
• Caractérisation des IGE par des méthodes liées à la régression

#### Analyse de Variance
![[Pasted image 20241002102646.png]]

#### Décomposition de l’IGE
$$\large \pmb{Y_{ijk} = \mu+G_i+E_j+GE_{ij}+e_{ijk}}$$
Pour chaque couple Génotype i x Environnement j, on peut estimer le terme GE<sub>ij</sub>
![[Pasted image 20241002103144.png]]

#### Décomposition de l’IGE : matrice de GxE / exemple du GEVES - colza
![[Pasted image 20241017165007.png]]

##### matrice de GxE / exemple du GEVES - colza
![[Pasted image 20241017165045.png|500]]![[Pasted image 20241017165102.png|450]]
![[Pasted image 20241017165155.png|center|450]]

#### Analyse de Variance
![[Pasted image 20241017165229.png|center|550]]

##### L’écovalence variétale (Wricke, 1965)

> [!tl;dr] Définie à l’échelle du génotype :
➨ Analyse des contributions individuelles à l’interaction GxE
>Contribution d’un génotype à la SCE de l’interaction
>$$\Large\pmb{W_{g}^{2}=\sum\limits_{e=1}^{E}(Y_{ge}-Y_{g.}-Y_{.e}+Y_{..})^{2}}$$
>➨ Caractérisation des différents génotypes
>Un génotype à <u>écovalence faible</u> tend à se comporter comme la moyenne des génotypes = <u>stable</u>
>Un génotype à <u>écovalence forte = instable</u>
>**NB : On peut de manière symétrique définir une écovalence pour les milieux**
>
>Cela représente aussi la somme des carrés des GxE pour chaque génotype ou environnement
> ![[Pasted image 20241017165721.png|250]]
> G1 = (+1)² +(-2)² = 5     |      G2 = (+1)²+(-1)² = 2     |     G3 = 0²+²0² =0     |     G4 =(-1)²+(+2)² = 5     
> L1 = (1)² +(1)²+0²+(-1)² =3     |     L2 = (-2)²+ (-1)²+(+2)² = 9

##### Exemples d'écovalences
![[Pasted image 20241017165900.png|center|550]]
##### Méthodes de la régression : La Régression Linéaire Conjointe (Finlay & Wilkinson, 1963)
![[Pasted image 20241018090805.png|center|550]]
![[Pasted image 20241018090917.png|center|500]]
![[Pasted image 20241018091754.png|center|700]]

###### => Interprétation de la RLC :
Pente ($\large \beta$) = 1+Coefficient de régression génotypique ($\large \rho$)

#### Etude des IGE pour une collection d’orges
![[Pasted image 20241018092335.png|center|550]]
![[Pasted image 20241018092540.png|center|650]]
##### Application au réseau variétal colza 14 lieux, 16 génotypes
![[Pasted image 20241018092732.png|center|550]]

![[Pasted image 20241018092834.png|center|650]]

#### La RLC en résumé
**RLC :**
– Permet de caractériser la réponse des génotypes au milieu
– Efficace pour un grand nombre de génotypes / nb de milieux
– Pas besoin de caractérisation de l’environnement 
**Limites :**
– la caractérisation des milieux n’est pas indépendante de la caractérisation des lignées : perte de puissance dans l’analyse
– Par construction : corrélation négative entre performance et stabilité
➨ Utilisation des méthodes de régression factorielle

#### Décomposition de l’interaction par le modèle de MANDEL
![[Pasted image 20241018093105.png|right|300]]

$\Large \pmb{Y_{ij} + \mu + \alpha_{i} + \beta_{j} + \gamma_{i}.\theta.\delta_{j} + \epsilon_{ij}}$
i (1, 2.... I) : les environnements
j (1, 2....J) : les génotypes
$\large Y_{ij}$: le rendement réalisé par le génotype j dans l’environnement i
$\large \mu$ : moyenne générale
$\Large \alpha$i : effet principal de l’environnement i
$\Large \beta$j : effet principal du génotype j
$\Large \gamma_{i}.\theta.\delta_{j}$ terme d’interaction, positif ou négatif, obtenu quand le génotype j est cultivé dans l’environnement i

**Valeur absolue de ($\large \pmb{\delta_{j}}$) élevée => fortes interactions du génotype j avec les environnements**
$$\large\pmb{Y_{ijk} = \mu + G_{i} + E_{j} + GE_{ij} + \epsilon_{ijk} \;\;\Rightarrow\;\; Y_{ijk} = \mu + G_{j} + E_{j} + \gamma_{i}.\theta.\delta_{j} + \epsilon_{ij}}$$
Matrice des résidus G x E 

| GEij | G1  | G2  | G3  | G4  |
| ---- | --- | --- | --- | --- |
| L1   | +1  | +1  | 0   | -1  |
| L2   | -2  | -1  | 0   | +2  |
=> ACP

Définition de N axes de l’ACP par la contribution (vecteur propre) de chaque environnement et chaque génotype à l’axe
$$\large Axe\; 1\;= \normalsize{\sum\limits} \large{\alpha_{ij}\; E_{i}\times G_{j}\;}...$$
$\large \delta_{j\;}:\;\sum\limits{jk}$     Valeur de l'axe k pour le génotype j (tous les environnements i)
$\large \gamma_{i\;}:\;\sum\limits{k}$      Valeur de l’axe ik pour l’environnement i (tous les génotypes j)
**Valeur absolue de ($\large\delta_{j}$) élevée => fortes interactions du génotype j avec les environnements**

#### La régression **factorielle**

• Analyse de l’adaptation spécifique
• Utilisation de régresseurs pour décomposer l’interaction, mais aussi les effets principaux
- Covariables décrivant les génotypes
	- Précocité
	- Résistance à la verse
	- Résistance aux maladies
- Covariables décrivant les milieux
	- Climat
	- Sol
	- Pression de maladies
	- Etat nutritionnel de la culture

##### La régression factorielle : cas général

$$\large\pmb{E[Y_{ge}]=\mu + \alpha_{g} + \beta_{e} + \alpha\beta_{ge}}$$
<center>⬇</center>
Décomposition à l’aide de covariables environnementales
$$\large\pmb{E[Y_{ge}] =\mu + \alpha_{g} + \color{limegreen}{\sum\limits Cove_{e}} \color{black}+ \color{limegreen}{\sum\limits \phi_{g}.Cove_{e}}}$$
Décomposition à l’aide de covariables génotypiques
$$\large\pmb{E[Y_{ge}] =\mu + \color{red}{\sum\limits Covg_{g}} \color{black}{ + \beta_{e} +} \color{red}{\sum\limits \rho_{e}.Covg_{i}}}$$
Coefficient positif : Génotype bien adapté 
Coefficient négatif : Génotype mal adapté
Coefficient nul : Génotype indifférent

Quand on cumule les deux types de covariables : décomposition complète des effets principaux et des effets d’interaction.

##### Sensibilité de génotypes de blé à la disponibilité en azote
![[Pasted image 20241026163352.png|center|500]]

#### Généralisation à plusieurs covariables environnementale

Quand il existe un grand nombre de covariables le modèle devient ….. Complexe
Il faut rajouter aux décompositions précédentes les interactions entre covariables…
$$\large\pmb{E[Y_{ge}] = \mu + \alpha_{g} + \beta_{e} + \sum\limits X_{he}.\Theta_{hk}. Z_{kg} + \sum\limits \rho_{gh}. X_{he} + \sum\limits \eta_{ek}. Z_{kg}}$$

➨Limites, plusieurs facteurs limitants dans le milieu, le nombre de covariables peut-être important
Difficile d’interpréter les pentes quand les covariables sont trop nombreuses
➨ Vers des modèles plus complexes : régression factorielle biadditive

#### La régression factorielle biadditive

![[Pasted image 20241026164040.png|right|300]]


• Quand l’étude d’un seul facteur du milieu n’est plus suffisante

-> Proposition de nouvelles variables (en nb plus limité)

- Variables synthétiques : Combinaisons linéaires des covariables existantes

- Les variables synthétiques maximisent la décomposition de l’interaction

<br>

#### En résumé 

- Caractérisation par des approches biométriques
- Une caractérisation des génotypes 
	- Pente, rendement moyen….
- Quelle justification du choix des covariables environnementales
	- Quelle hiérarchisation de ces variables ?
- Pas de prise en compte biologique ou agro-physiologique des IGE

#### Principes de la Méthode DiagVar


| **1- Décrire le réseau d'essais par une analyse sur des génotypes révélateurs** | Mesurer des variables descriptives des facteurs limitants possibles sur un petit nombre de génotypes révélateurs<br><br>Diagnostic agronomique<br><br>Identifier les facteurs limitants ayant le plus impacté le fonctionnement des témoins révélateurs sur le réseau d'essai et quantifier leur impact |
| ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **2- Expliquer les variations de comportement des variétés**                    | <b><font color="#494429">Analyse de l'interaction génotype X milieu sur l'ensemble des variétés <br>Estimation des tolérances variétales aux facteurs limitants</font></b>                                                                                                                              |

#### Qu'est-ce qu'un bon témoin révélateur ?

- Petit nombre de génotype (3-4)
- Comportement complémentaire et connu pour des facteurs limitants
	- Récital : pour sa sensibilité au stress azoté
	- Arche : pour sa tolérance au stress azoté
	- Soissons : variété sensible à la rouille brune
	- Ritmo : variété tardive pour révéler des stress de fin de cycle
- Permettent un diagnostic a posteriori des facteurs limitants d’un milieu
- Comparaison de leur comportement / comportement potentiel
- Explication de leur écart au comportement potentiel par les facteurs limitants
![[Pasted image 20241026165100.png|center|650]]

#### Caractérisation du réseau d'essai 

- Génotype: Soissons
- 20 milieux
- 24 indicateurs env. stress organisés par phase de développement
- Valeurs 0-10

#### Diagnostic agronomique : Identifier les stress environnementaux majeurs....

Pour chaque génotype révélateur:
=> Estimation des pertes de rdt (ou de PMG ou de NGM) –par rapport valeur de référence
=>Estimation par rapport aux courbes enveloppes
=>Estimation de dPMG et dNGM et dRDT

>[!abstract] Modéliser pour chaque génotype révélateur, les pertes de rendement en fonction des différents stress environnementaux par régression multiple.

$\large dRdtrj = \lambda 0+ \lambda 1.Ve1j + \lambda 2.Ve2j + ... + \lambda n.Venj + Ei$
avec $dRdtrj$ : perte de rdt du témoin considéré dans le milieu j
$\lambda n.Venj$ : termes correspondant aux différentes variables décrivant les facteurs limitants
$Ej$ : représente le reste de la variation, non expliquée par le modèle 

#### Caractérisation variétale 
![[Pasted image 20241026165752.png|center|300]]

## Méthodes basées sur la modélisation 

#### Mobilisation des outils de modélisation pour appréhender les interactions GxE

>[!element] To model the impact of genotypic variability on the plant phenotypic plasticity
To associate various kind of models to predict the integrated plant phenotypes
>The available modelling approaches (not exhaustive):
>- biophysical balances,
>- crop models, => **Exemple de SUNFLO**
>- ecophysiological descriptions of regulations and signals in plants,
>- 3D architectural plant and canopy models,
>- mathematical models to estimate parameters in complex systems…

##### Exemples d'application

###### Le modèle SUNFLO
![[Pasted image 20241026170644.png|right|400]] 


Comprendre la part génétique et les intégrer via des « composantes écophysiologiques » dans un modèle de fonctionnement de la culture

-> permet une décomposition plus fine de la contribution de l’effet G dans l’IGE

> [!donc] Paramètres : 
> <font color="#92cddc">Phénotypiques</font>
> <font color="#ffc000">Non phénotypiques</font>

![[Pasted image 20241026171308.png|right|500]]
<br>
<b><font color="#494429">Sunflo - tournesol :</font></b>

• Représenter explicitement les différences variétales (modèle) et les IGEC majeures dans un contexte où l’eau est le principal facteur limitant
<br>
• Caractéristiques dépendantes du génotype qui influencent des variables et paramètres clés, ici LAI, k et RIE)

<br>

###### Innovations agronomiques : Interactions Génotype x Environnement x Conduites : les comprendre pour pouvoir les simuler et les valoriser
![[Pasted image 20241026171731.png|center|650]]

###### Paramètres variétaux de SUNFLO
![[Pasted image 20241026171840.png|center|750]]

##### Qualité prédictive du rendement de 12 Variétés par SUNFLO
![[Pasted image 20241026172113.png|center|750]]

##### Application 1 : identification d’idéotypes adaptés au milieu 
![[Pasted image 20241026172358.png|center|500]]
##### Application 2 : simuler les IGE
![[Pasted image 20241026172823.png|center|450]]
#### Exemples d’application 

Le modèle SUNFLO : Comprendre la part génétique et les intégrer via des « composantes écophysiologiques » dans un modèle de fonctionnement de la culture

Exemple de couplage modèle écophysiologique / modèle de culture / contrôle génétique : Jusqu’à l’identification des gènes et/ou des QTL impliqués dans la sensibilité aux contraintes environnementales

##### Exemple de la réponse au stress hydrique chez le maïs

Modélisation du LER à l’échelle de la feuille

###### Décomposition des déterminants génétiques …

<b><font color="#494429">A. Un modèle de calcul du LER à l’échelle feuille</font></b>
$$\large \pmb{LER : dL/dt = ( T - T0) (a+ bVPD c
\Psi)}$$
T : température du méristème
a : LER intrinsèque : réponse du LER à la température du méristème
To : ordonnée à l’origine de la régression du LER /T
b : réponse du LER au VPD (taux d’humidité de l’air)
B0 : ordonnée à l’origine de la régression LER/VPD
c : réponse du LER au potentiel hydrique de la feuille
C0 : ordonnée à l’origine de la régression LER/ pot. hydrique

Un paramètre : constant pour calculer le LER d’un génotype… peut varier entre les génotypes

<b><font color="#494429">B. Le paramétrage de l’équation en fonction des variations entre les génotypes (Comparaison 2 génotypes)</font></b>
![[Pasted image 20241028015537.png|center|450]]
Paramètres a, b et c = variables génétiques

<b><font color="#494429">C. Des QTL pour les variables-paramètres</font></b>
![[Pasted image 20241028015637.png|center|400]]
<b><font color="#494429">D. Prédiction de phénotypes /composition allélique</font></b>
![[Pasted image 20241028015725.png|center|350]]
Bonne valeur prédictive du modèle dans un environnement

###### …. Et une meilleure caractérisation des interactions génotype x environnement
![[Pasted image 20241028015832.png|350]]![[Pasted image 20241028015905.png|200]] Time of the day (x)

Prédire les comportements des génotypes en fonction des changements de l’environnement

###### Oui, mais, … et à l’échelle de la parcelle cultivée 
![[Pasted image 20241028020144.png|center|480]]
###### Intégration des réponses du développement et de la croissance des feuilles de maïs (LER) dans un modèle de fonctionnement du peuplement (APSIM)
![[Pasted image 20241028020332.png|450]]![[Pasted image 20241028020451.png|450]]
![[Pasted image 20241028020655.png|center|750]]
###### Contrôle Génétique du LER et de l’ASI.(réseau de QTL)
![[Pasted image 20241028020841.png|center|550]]
###### Simulation de différents environnements
![[Pasted image 20241028020950.png|right|450]]
• 4 scénarios

A) Absence de stress hydrique

B) Stress hydrique pendant la phase végétative

C) Stress hydrique pendant la floraison

D) Stress hydrique pendant la phase végétative & la floraison

![[Pasted image 20241028021416.png|center|600]]

###### Evaluation des Rdt des RIL dans différents environnements
![[Pasted image 20241028021505.png|center|550]]
![[Pasted image 20241028021551.png|center|650]]
En x : la valeur prédite d’un paramètre (a, b ou c) pour chaque RIL
En Y : la valeur prédite d’un deuxième paramètre (a, b ou c) pour chaque RIL
Les valeurs de a, b et c de chaque RIL dépendent de leur combinaison allélique aux 11 QTL du modèle
La couleur de la case : information sur le rendement observé (écart à la moyenne)

###### Evaluation des Rdt des RIL dans différents environnements
![[Pasted image 20241028022631.png|center|850]]
![[Pasted image 20241028023012.png|center|450]]

#### Conclusions sur l’apport de la modélisation
![[Pasted image 20241028023108.png|right|530]]

• Le modèle prend en compte les paramètres stables et l’effet de plusieurs environnements
• Caractérisation de plusieurs génotypes
• Identification de QTL majeurs
• Identification des IQE
![[Pasted image 20241028023133.png|580]]
![[Pasted image 20241028023521.png|center|650]]
![[Pasted image 20241028023942.png|center|850]]
![[Pasted image 20241028024210.png|center|650]]


