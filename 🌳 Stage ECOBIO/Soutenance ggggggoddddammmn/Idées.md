

Intérêt agronomique de ce que je fais 

→ on veut évaluer la capacité d'un paysage à supporter la biodiversité, en favorisant certaines fonctions, notamment de nutrition et d'abris

Pourquoi ? parce que la biodiversité associée (non-cultivées/gérée) a des effets divers sur les paysages agricoles, notamment pour des fonctions de première nécessité (production, pollinisation)
→ favoriser une caractéristique favorable à un organisme considéré "utile" peut aussi avoir des effets positifs pour un "nuisible"
→ besoin de fine-tune et d'en tenir compte, favoriser surtout les orga utiles
→ orga utiles : araignées (pred), carabes(pred, granivories), parasitoïdes(para, pollinisation), pollinisateurs (pollinisation)

En éco du paysage classique, on visualise le paysage comme une mosaïque d'habitats (fair enough,) mais ce qui est utilisé pour les caractériser est très limité (occsol, catégoriel, anthropocentrée → différences de perception avec organismes, et uniformise les provisions car chaque patch d'une même catégorie = même valeur (fin à taille comparable a priori))
donc

on propose d'évaluer autrement la fourniture en ressources nutritives et ou abris (on aurai pu envisager d'autres fonctions)
pour ca on propose d'utiliser des traits fonctionnels

l'idée c'est de dépasser les typologies catégorielles.
On veut utiliser comme entrée des typo classiques car facilement accessibles et bien renseignées → facile à manipuler / créer pour les acteurs du territoire → générer / simuler la fourniture du paysage pour ces fonctions pour chaque organismes.
On a pour ca utilisé traits fx d'intérêt → paysages fx

comme les typo accessibles donnent des infos surtout sur la couverture végétale, on va utiliser les traits fx des végétaux pour caractériser le paysage.
Utiliser traits fx de couverts végétaux ca a déjà été fait, surtout pour les pollinisateurs, et avec succès dans l'article d'alignier (2023), à partir duquel on a commencé notre réflexion.

On veut aussi une approche continue, pas catégorielle, pour s'émanciper de certains pb des typologies classiques → pb de ou est-ce qu'on coupe ?

On développe une méthodo expérimentale qui vise à exploiter la littérature et les bdd de traits fx de plantes

→→ développer méthodo

→→ présenter résultats encourageant via carto (carabes)

On a ensuite voulu créer des métriques adaptées → parler des métriques, de ce qu'il était possible de faire et de pq les classiques marchent pas ici, de quel choix on a fait et pourquoi

Une fois ce choix fait, on a voulu voir si on arrivait à observer / mesurer un lien entre paysages simulés (10) et biodiv carabes, pour 2 modalités d'aménagement qui ont a priori des effets positifs (haies, bandes fleuries) séparément mais on sait pas si conjointement c'est mieux → test HC vs HF.

On a aucun qui est significatif, donc ca marche pas.... on arrive pas à prédire un lien avec *ce taxon*, mais pq ???

→ lien carabes/paysage non significatif, pour :
- les carabes (pas testé les autres taxons)
- les traits testés (discutables, notamment pcq overwhelming granivorie trait, et on a pas forcément réussi à évaluer quel trait aurait le plus d'effet de base à partir de la littérature)
- métriques testées → trop simples ? trop globales ? pas assez d'info sur la config ?
- échelle de réponse du taxon discutée dans la littérature ?
- pas assez de répéts/paysages nn plus
- On a pas forcément bcp de variations en compo entre fenêtres, car paysage (au global) globalement assez homogène, donc fatalement on voit des pts (reg lin) bcp autour du même endroit
- Config c'est *un poil* mieux mais bon... 
- Problème échelle aussi c'est que au sein d'un buffer sur lequel on calcule les métriques y a les champs HC ET HF donc ca dilue l'effet testé → mais ca reste réaliste par rapport à la possibilité de gestions différentes entre parcelles dans un paysage
- On peut aussi se demander s'il y a des différences d'effet dans le paysage de base genre on a pas testé avec approches classique de si on estimait qu'il y avait des diffs ?

Pas mal de choses à améliorer / adapter + autres taxons à tester 
pour autant ca peut être prometteur et pas nécessairement inutile pour gestion paysage.
Faut aussi dire que, même dans les paysages classiques, selon les organismes, y a pas de réponse linéaire claire marquée à des aménagement et surtout ca se répercute pas nécessairement en terme de services (fin c'est pas automatique et encore étudié)


## Plan diapos


## Intro

### Objectif : évaluer la capacité d'un paysage à supporter la biodiv

### Pourquoi supporter la biodiv ? dans quel contexte ?
**(1)** ✅
→ en déclin ?
→ donne services écosys ?
→ dans contexte de territoires agricoles → agroécosystèmes → distinction de 2 composants de la biodiv

### Quelle biodiversité ? 
**(2)** ✅
→ les 2 composantes, et les organismes que nous on a étudié dans l'étude et avec ces fonctions

### Comment la supporter → fourniture ressources et abris par approche paysagère

**(3)**  ✅
→ rôle paysage → fourniture en ressources et abris par exemple.
→ concept important d'éco du paysage  → hétéro compo / config 


### Comment concevoir l'impact du paysage sur la biodiversité

**(4)** ✅
→ conception classique de l'habitat / ressource par occupation des sols
→ ca a des limites claires → perception paysage par organisme + catégorisation (cf kendron machin là)


**(5)** ✅
→ Comment passer outre cet anthropocentrisme ? → traits fonctionnels, décorrêlés de notre perception
→ utilisation de typologie fonctionnelles (fahrig 2011) → "To map a landscape of functional cover types, we consider the resource needs of each of a representative set of different animal species. Next, we identify the patches that contain these resources. A set of patches that offer the same resources (considering the needs of all exemplar species) is then a functional cover type" → reste typo assez catégorielle tho

**(6)** ✅
→ utilisation d'échelle continue ?
→on pourrait utiliser les traits fonctionnels des couverts végétaux pour estimer la fourniture d'un paysage en réalisant les CWM dessus ?
→existe déjà des test pour certains taxons, notamment l'article qui nous a inspiré (alignier et al, 2023) → présenter sa carto et sa méthode → MAIS ON RECATEGORISE A LA FIN

→ on espérait pouvoir faire une méthodo qui prenne, de manière continue (pas catégo) l'intérêt du paysage pour un orga, on va vous présenter ca.

**(7)**
quel projet ca prends part, son objectif et tt
## Méthodologie développée 

**(8)**
Estimation des besoins des orga et traduction en trait fx → donner 2/3 exemples
Parler de la génération des paysages classiques → comment, via quoi, pourquoi (table attribut pour lier aux commu simulées)

**(9)** **(10)**
Simulation des commus → comment, quel méthode

**(11)**
Simulation des paysages fx : calcul cwm / commu, jonction avec le buffer, rasterisation → **point à questionner ca le raster pcq ca revient à commu végétale fin pq on fait ca ????**

**(12)**
Présentation de carto réalisées, parler du fait d'utiliser de nouvelles métriques, mettre métriques développées

**(13)**
Lier paysages simulés et biodiv récup → modèles réalisés,

## Résultats
**(14) (15)**
On a fait carabes pcq xx → data
Résultats pour les carabes, carto (analyse ???) et stats

#### Discussion carabes
**(16)**
Discussion des résultats

**(17)(18)**
limites et améliorations possibles

**(19)** = Applications potentielles une fois améliorées
Land-sparing/vs land-sharing → évaluer a quel pt un paysage a des effets intéressants pour un orga selon qu'on change sa compo/config ?
gestion des aménagements agroéco, pour trouver compromis entre limites agris et vision écologues

