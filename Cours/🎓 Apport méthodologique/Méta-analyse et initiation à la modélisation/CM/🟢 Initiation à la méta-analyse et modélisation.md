---
prof: Jocelyne FLAMENT
prof2: Nicolas BEDERE
---
### Objectifs
Initiation aux démarches systémiques (modélisation, méta-analyse,…) afin de comprendre leurs utilités et fondements et comment les mobiliser et mettre en œuvre. Il s’agit d’expliciter la démarche méthodologique.
Sur la base d’exemples concrets, il explicite les spécificités de ces démarches tant au niveau de leurs objectifs, que de leur déroulé et des outils à mobiliser.

### Compétences visées
• Mettre en œuvre des outils d’approche systémique tels que la cartographie de la littérature, la démarche de méta-analyse et la modélisation
• Proposer des démarches de modélisation en adéquation avec la problématique (types de modélisation, formalisme, démarche)

### Acquis d’apprentissages visés
Cartographie de la littérature :
• Identifier les étapes-clés d’une démarche de cartographie
Méta-analyse :
• Identifier les étapes clés d’une méta-analyse contribuant à la qualité du travail réalisé et à la validation des résultats
• Repérer dans un jeu de données des données influentes, des données aberrantes en utilisant des méthodes de diagnostics sous R
• Faire l’analyse critique d’une publication de méta-analyse et de la robustesse des résultats (équations de prédiction proposées)
Modélisation :
• Représenter un système et concevoir un modèle conceptuel répondant à une question
• Identifier les étapes-clés d’une démarche de modélisation : du système à la simulation informatique (représentation, explicitation
des hypothèses, mise en équations, validation et calibrage, tests)
• Représenter un mécanisme par une équation par des illustrations concrètes

___
___
___

# Module « Initiation à la méta-analyse et modélisation »
## Introduction au module


## 1. Qu’est-ce qu’une démarche systémique ?

### Construire un raisonnement : la pensée cartésienne …analytique
![[Pasted_image_20240909070048.png|center|400]]
>[!quote] Extrait du discours de la méthode (Descartes, 1637) :
Le second, de diviser chacune des difficultés que j’examinerois, en autant de parcelles qu’il se pourroit, et qu’il seroit
requis pour les mieux résoudre.
Le troisième, de conduire par ordre mes pensées, en commençant par les objets les plus simples et les plus aisés à
connoître, pour monter peu à peu comme par degrés jusques à la connoissance des plus composés, et supposant même
de l'ordre entre ceux qui ne se précèdent point naturellement les uns les autres **"**

#### Rationalisme de René Descartes dans ‘discours de la méthode’ (1637)
• ne recevoir aucune chose pour vraie que je ne la connaisse évidemment pour telle (évidence).
• diviser chacune des difficultés en autant de parcelles qu'il se pourrait et qu'il serait requis pour les mieux résoudre (réductionnisme / analyse).
• conduire par ordre mes pensées en commençant par les objets les plus simples et les plus aisés à connaître pour monter peu à peu jusqu'à la connaissance des plus composés (ordre, recomposition).
• faire partout des dénombrements si entiers et des revues si générales, que je fusse assuré de ne rien omettre (exhausitivité / vérification).

#### Construire un raisonnement : la pensée cartésienne … Mais ?
![[Pasted_image_20240909070358.png|center|350]]
#### Construire un raisonnement : L’approche systémique ?
![[Pasted image 20240909091454.png|center|350]]

#### Les préceptes de la systémique
**Pertinence** (vs. Évidence)
Utilité, permet la subjectivité, ce qui est important pour les fins poursuivies
**Globalisme** (vs. Réductionnisme)
Partie d'un tout plus grand, ne pas découper, on perd de l'information
**Téléologie** (vs. Causalisme)
Comprendre le comportement de l'objet face aux finalités données au système par le modélisateur
**Agrégativité** (vs. Exhaustivité)
Simplification par regroupement à l'aide de recettes pour représenter les aspects pertinents

### Construire un raisonnement :
L’approche systémique
• Voir le monde comme un **ensemble** coordonné de **systèmes coordonnés**
• Ne s’applique pas uniquement à la production de connaissances (aide à la décision, développement ...)
• Nombreux outils, mathématiques ou non

#### Complémentarité des 2 raisonnements
![[Pasted image 20240909091631.png|center|350]]
## 2. La notion de système

### Qu’est-ce qu’un système ?
***exemple du système d’élevage***

![[Pasted image 20240909091726.png|350]]![[Pasted image 20240909091747.png|350]]
![[Pasted image 20240909091810.png|350]]![[Pasted image 20240909091830.png|350]]
qqc qui a une finalité, qui a du sens pour qqc d'autre (ce qui l'englobe)
![[Pasted image 20240909091935.png|350]]

#### Qu’est-ce qu’un système ? Autre point de vue
• un système constitué de système sous‐jacents incorporé dans un système au niveau supra
![[Pasted image 20240909092015.png|center|180]]

#### Définitions du système

 • de Saurrure: « une **totalité organisée**, faite d’éléments solidaires ne pouvant être définis que les uns par rapport
aux autres en fonctions de leur place dans cette totalité »
• von Bertalanffy: « **ensemble** d’éléments en **interrelations** mutuelles »
• Lesourne: « ensemble d’éléments liés par un ensemble de relations »
• de Rosnay: « ensemble d’éléments en interaction **dynamique** en fonction d’un but »
• Von Bartalanffly : Un objet qui, dans son **environnement**, doté d’une **finalité**, exerce une **activité** et voit **sa structure**
**interne évoluer** au fil du temps, sans qu’il perde pour autant son

#### Définition du système

• Un ensemble d’entités/éléments interagissant et interdépendants qui forment un tout intégré
• Naturel / construit par l’homme
• Avec une finalité / une fonction
• Ouvert / fermé

![[Pasted image 20240909092249.png|200]]

### Les propriétés du système
- l’interaction
- l’organisation
- la complexité
- l’émergence (notion de globalité)

#### L’interaction / différents types d’interactions
• flux de matière
• centres de décision --> flux d’information
• boucles de rétroaction
– Positives (amplifiantes)
– Négatives (stabilisantes)
– Ago‐antagonistes
![[Pasted image 20240909092439.png|center|300]]

#### L’organisation
• Système caractérisé par une structure et une fonction (finalité)
• Souvent organisation hiérarchique
• Adaptabilité et maintien de la cohérence interne en vue de la finalité qui est la leur
- complémentarité des rôles amplificateur des boucles de
- rétroaction positives et régulateur des boucles de
- rétroaction négatives.

#### La complexité /
###### Pourquoi dit-on d’un système qu’il est complexe ?

• Existence de nombreux niveaux (sous‐systèmes) organisés de façon hiérarchique
• Multiplicité des niveaux, des composants, des finalités (et/ou des dimensions), des interactions et régulations
• Caractère dynamique
• Impossible de représenter tous les composants, les interactions,...
• Propriétés du système qui vont au‐delà des propriétés des composants
==>  **Complexe $\large \pmb\ne$ Compliqué**

#### Système d’élevage / complexité **horizontale**
Articulation de plusieurs dimensions et plusieurs points de vue
==> biologique, biotechnique, économique, physique ...
![[Pasted image 20240909093049.png|center|400]]
#### Système d’élevage / complexité **verticale**
Organisation hiérarchique / multiplicité des niveaux
![[Pasted image 20240909093206.png|center|400]]

#### L’émergence / illustration
*Un système est plus que la somme de ses composants*
![[Pasted image 20240909093423.png|center|200]]
interactions au niveau N
![[Pasted image 20240909093504.png|center|200]]

**Propriété / sorties**
![[Pasted image 20240909093545.png|300]] ![[Pasted image 20240909093622.png|300]] ![[Pasted image 20240909093655.png|250]]
*exemple de la fonction lactation*
![[Pasted image 20240909093803.png|center|300]]

#### En résumé
###### Comment représenter un système?
=> Délimitation des frontières (ce qui permet de faire la distinction entre la réalité et le système)
=> Définition des éléments ou sous‐systèmes définit comme des entités qui au sein du système général fonctionnent de façon apparemment autonomes mais entretiennent des relations avec le système général
=> Description du milieu extérieur et des relations système ‐ environnement
- Facteurs agissant sur le système = entrées
- Facteurs n’agissant pas sur le système
- Facteurs du système agissant sur
![[Pasted image 20240909094220.png|center|250]]
<center>Pas de finalité représenté | Système à un instant t</center>

### Exemples de systèmes ?

**Du système au modèle...**
=> le système matérialisé peut se décliner en un ou des modèles représentant un aspect du système étudié
=> définition: « an abstraction of the real world, specified so as to capture the principal interactions and behavior of the system under study and capable of experimental manipulation in order to project the consequences of changes in the determinants of the system’s behavior »

**Du système au modèle...**
=> Représente une réalité mais ne constitue pas cette réalité (un point de vue)
=> Un modèle vise une ressemblance suffisante de la réalité
=> Le comportement du modèle correspond dans une certaine mesure au comportement de la réalité (définition d’une plage de validité)

Les principaux enjeux ou difficultés de la construction d’un modèle sont:
Simplifier le système complexe auquel il se rapporte tout en restant fidèle à sa structure et aux processus

**La modélisation permet:**
=> Acquérir une représentation cohérente du monde: visualisation et conceptualisation d’un problème
=> Répondre à une question dont la réponse n’est pas évidente
=> Représenter, étudier et analyser les propriétés émergentes des interrelations entre les différents composants du système
=> L’expérience virtuelle (coût)
=> Tester des hypothèses innovantes ou de situations extrêmes
=> Permet le contrôle parfait de l’environnement expérimental

#### Système, modèle, outil: en résumé...
![[Pasted image 20240910134042.png|center|350]]
>[!cite] "Le racisme systémique" Pol
>après que la prof ai demandé d'autres exemples de systèmes 'même ceux avec système dedans'

## 3. La modélisation / démarche privilégiée de la systémique
![[Pasted image 20240909095000.png|center|400]]

#### Exemple de modèle :
une équation mathématique
• équation(s) qui représente(nt) le comportement du système
- ex. : Quantité ingérée = a + b x Poids Vif
• version simplifiée de la réalité (i.e., jamais exact)

#### Pourquoi faire des modèles ?
• Pour la recherche, synthétiser les connaissances
• Pour le conseil, l’aide à la décision, la concertation
• Pour l’enseignement

==> Intégrés à des outils :
‐ Application logicielle
‐ Jeu sérieux
‐ ...
## 4. Les étapes de construction d’un modèle
#### Les étapes de construction du modèle
![[Drawing 2024-09-09 10.00.55.excalidraw|center|400]]
#### Etapes dans la construction d’un modèle
1.  **Définition des objectifs !**
• analyse économique de stratégies alimentaires, de pratiques d’élevage (quoi si....)
• comparer les performances actuelles avec le potentiel (problème d’indication)
• définir et interpréter des expériences de nutrition
• guider la recherche
• enseigner : démonstration de principes nutritionnels
**==> A quelle question notre modèle répond!!!**

2. **Analyse des connaissances existantes**
• données historiques (littérature)
• données expérimentales
=> données pour la construction du modèle

Hypothèses qualitatives du modèle
- Interactions (régulations, rétroactions)
- Dépendances
- Facteurs à prendre en compte
- Forme des relations
• données pour l’évaluation du modèle

3. **Construction du modèle (hypothèses qualitatives)**
• <font color="#245bdb">Choix du type de modèle (dépend largement des objectifs)</font>

Caractéristiques du modèle

• Statique vs dynamique
- un modèle statique représente un système à un pointunique dans le temps
- un modèle dynamique représente un système au cours du temps

• Mécaniste vs empirique
- les modèles empiriques utilisent un seul niveau d’agrégation
*Système « boîte noire »*
- les modèles mécanistes utilisent un (des) niveau(x) d’agrégation infra
*On représente les interactions entre composants du système*
*=> Hypothèses biologiques*

• Stochastique vs déterministe
- les modèles stochastiques incluent des éléments aléatoires
- les modèles déterministes n’incluent pas d’éléments aléatoires

###### Stochasticité
entrée (input) aléatoire
--> sortie (output) aléatoire
• une « run» de simulation n’est pas suffisant


• <font color="#245bdb">Choix d’un formalisme de modélisation et utilisation du formalisme graphique associé</font>
![[Pasted image 20240909101259.png|center|500]]
<center>==> possibilité de modèles hybrides</center>

• <font color="#245bdb">Choix des variables d’état, des facteurs de variation</font>
=> représentation graphique du modèle


4. **Construction du modèle (mise en équation, estimation des paramètres )**
• Relations existantes (littérature)
• Analyse des données pour développer des relations
– analyse visuelle des données
– analyses statistiques (par ex., méta‐analyse)


5. **Implémentation informatique**
- <font color="#245bdb">Développer des équations pour les modèles avec la méta-analyse</font>
![[Pasted image 20240910134342.png|center|400]]

- <font color="#245bdb">Les étapes de construction du modèle</font>
![[Pasted image 20240910134653.png|center|400]]
- <font color="#245bdb">Comment la méta-analyse intervient-elle dans un processus de modélisation ?</font>
![[Pasted image 20240910135333.png|center|400]]
Les relations sous-jacentes --> inclues dans le modèle mécaniste
Les relations générales --> validation externe

6. **Analyse de sensibilité / validation interne**
• Vérification : est‐ce que le modèle fonctionne comme attendu? (débogage, comportement cohérent)
• Analyse de sensibilité :
• Quels sont les paramètres influents sur le comportement du modèle ?


• identification de composantes manquantes ou redondantes dans le modèle
• incertitudes des paramètres clés / identification des paramètres qui doivent être estimés le plus précisément (--> expérimentation, méta‐analyse,…)
• interactions entre paramètres ?

• relations entre la réponse du modèle et le paramètre d’entrée
• coefficient de sensibilité = $\large\Delta$ output / $\large\Delta$ input

7. **Evaluation du modèle / validation externe**

• Comparaison à des données réelles (non utilisées
pour l’estimation des paramètres du modèle)
- Expérimentations disponibles
- Nouvelles expérimentations
- Littérature / méta‐analyses
- Réseaux d’élevages
- …
• Confrontation à l’avis d’experts (<-- en particulier pour des modèles aux échelles exploitation, territoire, qui sont difficiles à valider par confrontation avec des données réelles)
- Pour identifier la gamme de validité du modèle
- Pour quantifier la capacité de prédiction du modèle
![[Pasted image 20240910140003.png|center|500]]

- <font color="#245bdb">Décomposition de l’erreur du modèle entre Le biais systématique / La rotation / L’erreur aléatoire</font>

Squared bias : $\large SB\;=\;(\overline Y_{pred}-\overline Y_{obs})^2$
Non-unity slope : $\large NU\;=\;(1-b)^2\;\times\;\sum\limits(Y_{pred\_n}-\overline Y_{pred)}/ N$
Lack of correlation : $\large LC\;=\;(1-r)^2\;\times\;\sum\limits(Y_{obs\_n}-\overline Y_{obs})/N$
Propriété intéressante : $\large{MSB=SB+NU+LC}$
![[Pasted image 20240910141527.png|center|450]]

8. **Application du modèle**

##### Conclusion

• Objets d’étude complexes
• Nouvelles questions en production animale
![[Pasted image 20240910141703.png|center|350]]
• Différentes échelles / niveaux à prendre en compte
• Nécessité de comprendre le comportement de ces systèmes / de le simuler
<center><font color="#245bdb">==></font> <b>Modélisation</b></center>

<b><font color="#1d1b10">Du modèle à l’outil…</font></b>
Implémenter le modèle pour créer un outil opérationnel (recherche, développement ou pédagogie)

<b><font color="#1d1b10">Exemples de modèles</font></b>
![[Pasted image 20240910142016.png|400]]


______
## Initiation à la méta-analyse de données expérimentales

#### Objectifs pédagogiques

Sensibilisation à la démarche
- Qu’est-ce qu’une méta-analyse ?
- A quoi cela sert ?
Initiation à la démarche
Comprendre et utiliser les résultats de méta-analyse
Appliquer la démarche sur un exemple simple

Qu’est-ce qu’une méta-analyse ?


| Une revue systématique de la littérature | +   | Une analyse statistique des données issues de la revue de littérature |
| ---------------------------------------- | --- | --------------------------------------------------------------------- |
###### La méta-analyse : un des plus haut niveau de preuve parmi la literature scientifique !
Outil d’aide à la décision, par exemple en terme de politique de santé !
![[Pasted image 20240909140338.png|center|500]]

>[!tldr] C’est une synthèse statistique des études incluses dans une revue systématique. La méta-analyse permet une analyse plus précise des données par l'augmentation du nombre de cas étudiés et de tirer une conclusion globale.

>[!tldr] C’est une démarche scientifique qui réalise des revues critiques et des études statistiques à partir des résultats des recherches antérieures pour améliorer et quantifier la connaissance sur un sujet

##### Deux grands types de méta-analyse avec des objectifs différents
![[Pasted image 20240909140542.png|center|500]]

##### Quelques exemples parlants… en agriculture !

Plus il y a de soleil, plus les plantes s’enracinent mais moins elles gagnent de feuilles
![[Pasted image 20240909140752.png|center|400]]
Plus il y a de racines, plus les plantes grandissent
![[Pasted image 20240909140846.png|center|300]]
##### A quoi servent les méta-analyses ?
• Développer des équations de prédiction / quantifier les lois de réponse
• Explorer et valoriser collectivement des informations peu mesurées
• Paramétrer et valider des modèles mécanistes


### Initiation à la démarche

##### Une démarche rigoureuse vu les enjeux
![[Pasted image 20240909141015.png|center|350]]

![[Pasted image 20240909141432.png|420]]         ![[Pasted image 20240909141403.png|400]]
___
![[Pasted image 20240909141631.png|280]]             ![[Pasted image 20240909141706.png|350]]
___
![[Pasted image 20240909141732.png|350]]

> [!attention] What is already known on this topic
• The association between fruit and vegetable consumption and risk of mortality has been examined in many studies, but the dose dependency of this association has not been determined in a meta-analysis

>[!attention] What this study adds
• Higher consumption of fruit and vegetables is associated with a reduced risk of all cause mortality, with an average reduction in risk of 5% for each additional serving a day (6% for fruit and 5% for vegetables)
• There was a threshold around five servings a day, after which the risk of death did not reduce further
• There was a significant inverse association for cardiovascular mortality, but higher consumption was not appreciably associated with cancer mortality

### Démarche : les objectifs

On cherche à tirer des conclusions générales; quantifies : dose-réponse, loi de réponse…

### Démarche : la conception de base

<b><font color="#000000">Construire une base de données / Recherche des publications</font></b>
- Sélection des mots-clés très importante
- Déterminer les synonymes de ces mots-clés
- Utiliser les mots clés tronqués avec * pour élargir le champ de recherche : Fat* -> fatness, fattening,…
- Les synonymes sont connectés par « OR » et les mots-clés différents par « AND »
- Pour restreindre le champ de recherche : expression entre « » 

Utilisation de différentes bases pour la recherche : PubMed, Web of Science, Medline…

<b><font color="#000000">Construire une base de données / conception de la base</font></b>
- Recherche bibliographique assez large
- Faire une liste des meilleures publications candidates
- Examiner chaque étude de la liste et déterminer si elle remplit les critères
<center>⬇</center>
<center>Choix de la structure de base : </center>
<center>Variables</center>
<center>Codage des information</center>

--> Manipuler une grande quantité d’information / utiliser un tableur ou un logiciel de base de données biblio (Reference Manager, EndNote,…)

<b><font color="#000000">Preferred Reporting Items for Systematic reviews and Meta-Analyses (PRISMA)</font></b>
![[Pasted image 20240909142414.png|500]]![[Pasted image 20240909142452.png|500]] 

### Démarche : codage des informations

##### Construire une base de données / Codage des données
Définir et appliquer un code, basé sur une seule source de variation
La définition du code se fait sur la base d’un échantillon de publications
- Publications
- Expérimentations intra-publication
- Groupes d’animaux intra-expérimentations
- Traitements
- Schéma expérimental
- …


##### Construire une base de données / Incrémentation de la base
- Vérifier la cohérence de l’étude avec les objectifs de la méta-analyse
- Faire une lecture critique de chaque publication considérée, en focalisant sur la détection des erreurs (expertise)
	- En contrôlant la cohérence intra-publi :
		- =>calculs croisés des résultats les uns à partir des autres et vice-versa (e.g. flux nets de nutriments à partir de concentrations et de flux sanguins)
		- => Comparaison avec les valeurs issues des tables / systèmes d’alimentation
	-  En recherchant d’éventuels effets « méthode » ou « équipe »

Pour chaque publication de la liste :
- Noter la référence
- Indiquer si l’étude est inclue ou pas dans l’analyse
- Indiquer le critère d’exclusion

##### Construire une base de données / en résumé
![[Pasted image 20240909143246.png|center|400]]

### Démarche : Analyse graphique

##### L’analyse graphique : pourquoi faire ?
![[Pasted image 20240909143406.png|center|400]]

##### Deux préalables à l’analyse graphique 
• On travaille (en général) avec les valeurs moyennes / traitement ou / lot
• On étudie (en général) les lois de réponse intra-expérience

##### Comment choisir la(les) variable(s) explicative(s) ?
Contenu en triglycérides dans le muscle Longissimus de taurillons
![[Pasted image 20240909143625.png|center|300]]
Age physiologique (PV/PVadulte)
La relation ne semble pas très claire entre les deux variables, en particulier pour les expérimentations en rouge
-> peu de variabilité de l’âge physiologique

![[Pasted image 20240909143715.png|center|300]]
Pour les expérimentations en rouge
-> peu de variabilité des dépôts adipeux carcasse (kg)

![[Pasted image 20240909143805.png|center|300]]
Une relation linéaire assez claire;  peu d’expérimentations où le % de dépôt adipeux carcasse ne varie pas

##### Comment identifier les facteurs explicatifs ?
Contenu en triglycérides dans les muscle Longissimus, Semitendinosus et Triceps brachii de taurillons
![[Pasted image 20240909144000.png|center|350]]
![[Pasted image 20240909144028.png|center|350]]

##### Un exemple simple…

Exemple des dépôts adipeux périrénaux de taurillons en fonction des dépôts adipeux du 5<sup>ème</sup> quartier
![[Pasted image 20240910124450.png|center|400]]
Une relation linéaire assez claire, quelque soit la race, avec vraisemblablement des différences de pente entre races

##### Relations intra-expériences et loi de réponse ajustée

Exemple : gain moyen quotidien en fonction de l’apport alimentaire de phosphore non phytasique chez le poulet de chair
![[Pasted image 20240910124604.png|center|400]]

##### Attention aux différences de relations intra et inter-expérimentations

Elles peuvent être dûes à des facteurs interférents ou encore à des observations/études « outliers »
![[Pasted image 20240910124705.png|center|400]]
Une variable cachée qui interagit avec X / examen des caractéristiques des études (2) et (3)
![[Pasted image 20240910124746.png|center|400]]
##### Relation inter- et intra-individuelle

Exemple de relation inter-expériences curvilinéaire et intra-expérience linéaire
![[Pasted image 20240910125418.png|center|200]]
### Démarche : étude du méta-dispositif

##### Etude du méta-dispositif
![[Pasted image 20240910125623.png|center|400]]
##### Un « dispositif expérimental » subi

>[!warning] 
>- Beaucoup de valeurs manquantes
>- Le dispositif des données de méta-analyse (méta-dispositif) est déséquilibré et les facteurs ne sont pas toujours indépendants

Problèmes rencontrés :
Corrélation des variables explicatives, Facteurs déconnectés
<span style="background:rgba(240, 107, 5, 0.2)">-> travail fréquent sur des sous-ensembles de la base</span>

##### Quand dit-on que les facteurs sont déconnectés ?
![[Pasted image 20240910125905.png|center|300]]
<center>Le niveau 3 de A ne peut pas être estimé séparément du niveau 3 du facteur B <br>
Travailler sur un sous-ensemble du jeu de données</center>

##### Comment repère-ton les problèmes de corrélation ?
analyse graphique avec les variables indépendantes prises 2 à 2
![[Pasted image 20240910130032.png|center|400]]
Ici, pas de corrélation observée
Les variables explicatives peuvent être utilisées ensemble dans une seule loi de réponse

##### Quel problème peut conduire à exclure des expérimentations ?
Exemple du contenu en triglycérides dans le muscle Longissimus de taurillons.
![[Pasted image 20240910130151.png|center|400]]

##### Plage de variation des « x »

L'établissement d'une loi de réponse de Y à une variation de X, ne peut se faire que si X varie et si la variation de X
a une signification biologique d'intérêt
<center>⬇</center>
Comment décider de la variation suffisante ou pas de X ?
- Expertise sur signification biologique
- Examen des variations intra-expérience
(s’il n’y a pas de variation de X dans l’étude, l’étude est éliminée de l’analyse)
$$\large \Delta X_{min} = \mu(\Delta X_{ij}) - | 2 \times SD \;\Delta X |$$
Avec $\large \Delta X_{min} = | X_{traitement\_{i}}\; - X_{traitement\_j}|$ et $\large SD\; X\; = écart\; type\; \Delta X_{ij}$

Cela revient à éliminer les études qui se trouvent dans les 2.5% inférieurs de la population

##### Variable explicative vs effet expérimentation

Existe-t-il un effet expérimentation significatif sur les variables explicatives ?

Quand la variable explicative n’est pas indépendante des effets expérimentaux
<center>⬇</center>
<u>Confusion plus ou moins importante des relations inter et intra-expérience</u>
<u>Risque de biais important</u>

![[Pasted image 20240910131158.png|center|300]]
### Démarche : choix du modèle statistique

##### Choix du modèle statistique 
![[Pasted image 20240910131632.png|center|450]]
<center>⬇</center>

![[Pasted image 20240910132231.png|center|400]]
<center>⬇</center>

![[Pasted image 20240910132252.png|center|400]]
<center>⬇</center>

![[Pasted image 20240910132310.png|center|400]]

##### Un exemple : ingestion d’aliment chez le porc en croissance en fonction du poids vif
![[Pasted image 20240910132857.png|center|400]]

##### Choix du modèle statistique
![[Pasted image 20240910132930.png|center|400]]

### Démarche : post-analyse

![[Pasted image 20240910104326.png|center|500]]

##### Les analyses post-ajustement

Un problème fréquent quand on ajuste le modèle :
La distribution des résidus est statistiquement différente d’une loi normale
--> Violation d’une hypothèse nécessaire en régression.
<center>⬇</center>
Identifier les observations responsables de ce résultat
Ou
Se poser la question de l’adéquation du modèle utilisé pour ajuster la loi de réponse

##### Les statistiques de diagnostic

>[!important] • Résidus studentisés externes
$$\large t_{i} = \frac{Y_{i}- \hat Y_{i(-i)}}{\sqrt Var[Y_{i}-\hat Y_{i(-i)}]}$$
$\large Y_{i}$ : Valeur observée pour l’observation i
$\large \hat Y_{i(-i)}$ : Valeur prédite de Yi avec le modèle ajusté sans l’observation i
On parle de résidu studentisé, car divisé par l’écart-type des résidus,
>
Habituellement, on considère suspectes les valeurs de $\large t_{i}$>=2 ou =<-2
En méta-analyse, compte-tenu du nombre important d’observations, on considèrera plutôt un seuil de ti >=3 ou =<-3

>[!important] • Effet de levier (leverage) / influence potentielle
$$\large h_{i} = \frac{1}{n} + \frac{(X_{i}- \hat X)^2}{\sum\limits(X_{i}-\hat X)^2}$$
$\large X_{i}$ Valeur de la variable prédictive pour l’observation i
$\large \hat X$ Moyenne des valeurs de la variable prédictive
><u>Détecter la présence d’observations pouvant avoir un fort impact sur le modèle ajusté</u>
Il est souvent intéressant d'analyser les valeurs d'effet levier excédant la valeur 3 (p + 1) / n, avec p le nombre de variables explicatives et n le nombre d'observations.

>[!important] • Distance de Cook / influence réalisée sur les paramètres
mesure de l’influence sur les estimateurs des effets fixes
>$$\large D_{i}=\frac{\sum\limits(\hat Y_{i}-\hat Y_{i(-i)})^2}{pMSE}$$
>$\large \hat Y_{i(-i)})^2$ Valeur prédite par le modèle ajusté sans l’observation i
>$\large \hat Y_i$ Valeur prédite par le modèle
>p : nombre de paramètres du modèle
MSE: Mean Square Error
Bien qu’un seuil statistique puisse être fixé (50ème percentile de la loi Fisher Snedecor (p, n-p))
Dans la pratique, une observation est souvent considérée comme influente quand sa valeur se démarque de celle des autres

>[!important] • dfbetas / influence sur les valeurs des paramètres
DFBETAS: DiFference in BETA = différence de chaque valeur de paramètre avec et sans chaque observation
Permet de vérifier la stabilité des paramètres du modèle quand une observation est retirée
$$\large DFBETAS_{ij}=\frac{b_{j}-b_{j}(i)}{\sqrt{s^{2(i)(X'X)_{ij}^{-1}}}}$$
$\large b_{j}$ est la valeur du coefficient de régression pour le j<sup>ème</sup> paramètre
$\large b_{j}(ij)$ est la valeur du coefficient de régression pour le j<sup>ème</sup> paramètre obtenue sans l’observation i
Le dénominateur est l’erreur standard du j<sup>ème</sup> coefficient de régression
Valeurs limites $\large \pmb\pm ^{2}/_{\sqrt{n}}$ avec n le nombre d'observations

• …
**Toujours** mobiliser son expertise (ou des experts) du sujet
**Toujours** croiser ces statistiques de diagnostic avec les graphes initiaux d’examen des données
Avant de supprimer une observation du jeu de données

##### Application / Exemple
![[Pasted image 20240910110654.png|center|500]]
<center><b>Que pensez-vous des observations du lot expérimental en rouge ?</b></center>

##### Influence d’un « outlier »
![[Pasted image 20240910110756.png|center|450]]

### Démarche : Évaluation des lois de réponses

##### Comment rechercher l’équation qui est applicable dans la plus large gamme de situations ?
![[Pasted image 20240910111730.png|center|500]]
##### Evaluer la capacité de prédiction de la loi de réponse
![[Pasted image 20240910111757.png|center|500]]

### Un exemple pour reprendre tout ca ?

##### Exemple …
• Estimer la composition en lipides intramusculaires dans les muscles des jeunes bovins à partir de données aisément accessibles…

##### Avec une seule expérimentation
![[Pasted image 20240910111920.png|center|300]]
##### Avec plusieurs expérimentations ?
![[Pasted image 20240910111953.png|center|300]]
##### Avec chaque expérimentation !
![[Pasted image 20240910112049.png|center|400]]
une relative constance des lois de réponse des différentes expérimentations
--> on peut ajuster une loi globale

##### Equation ajustée sans effet publication ?
![[Pasted image 20240910112148.png|center|500]]
Risque de biaiser les estimateurs de la pente et de l’ordonnée à l’origine de l’équation

##### Si on établit la relation moyenne :
![[Pasted image 20240910112236.png|center|400]]
Ecarts de chaque expérimentation significatifs ?
Les expérimentations ont-elles toutes la même influence ?

##### Modèle avec les effets de chaque publication
![[Pasted image 20240910112344.png|center|500]]
--> les effets des expérimentations sur la pente et l’ordonnée à l’origine sont donc considérés **aléatoires**

##### Ecriture du modèle de l’exemple considéré
$$\pmb{Y_{ij} = A + {\color{Cerulean}\alpha_{i}} + (B + {\color{Cerulean}\beta_{i}}).X_{ij} + \epsilon_{ij}}$$
$$\pmb{Y_{ij} = A + B.X_{ij} +{\color{Cerulean}\alpha_{i} + \beta_{i}.X_{ij}} + \epsilon_{ij}}$$
<center><font color="#00b0f0">Effet aléatoire publication</font></center>

$$\large Triglycérides_{ij} = A + {\color{Cerulean}\alpha_{i}} + (B + {\color{Cerulean}\beta_{i}}).\%Daca_{ij} + \epsilon_{ij}$$
$$\large i \Longleftrightarrow essai \qquad j \Longleftrightarrow observation$$

##### Résultat obtenu après ajustement des valeurs de paramètres dans R
![[Pasted image 20240910113536.png|312]]![[Pasted image 20240910113558.png|550]]

##### Identification de l’expérimentation cc97MO
![[Pasted image 20240910113736.png|center|350]]

##### On vérifie la normalité des résidus !
![[Pasted image 20240910113810.png|center|350]]

##### On fait un diagnostic
![[Pasted image 20240910113838.png|455]]![[Pasted image 20240910113858.png|400]]
![[Pasted image 20240910114039.png|center|350]]

##### On ajuste l’équation sans l’expérimentation cc97Mo
![[Pasted image 20240910114120.png|555]]![[Pasted image 20240910114155.png|300]]

##### On fait un diagnostic
![[Pasted image 20240910114244.png|center|450]]
##### Equation ajustée avec prise en compte de l’effet expérimentation
![[Pasted image 20240910114321.png|center|550]]

### Conclusions 

##### La méta-analyse : une démarche itérative
![[Pasted image 20240910114420.png|center|400]]

Suite aux étapes de recherche des facteurs interférents et/ou d’analyses post ajustement
On peut être amenés à réinterroger le méta-dispositif, à inclure de nouveaux facteurs,…

En premier lieu : définir un objectif précis et détaillé
--> il va conditionner toutes les étapes de la méta-analyse

Les méta-analyses sont précieuses pour établir des relations précises dans des gammes de validité assez larges

Démarche itérative avec retour(s) aux étapes précédentes

Procéder à des analyses graphiques poussées
--> Une démarche qui va continuer à se développer










