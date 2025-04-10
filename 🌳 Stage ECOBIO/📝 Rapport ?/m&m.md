Parties : 
- Biblio et choix des traits
- Choix de la résolution / des nombres de communautés à simuler
- Data cleaning + remodeling ?
- Choix des indices et calculs pour les traits => variance ET moyenne des commus
- Choix des règles de simulation des communautés
- Choix des métriques calculées => Getis-Ord + PathOfLeastResistance + shortest euclidian distance + comparatif rapide des options dispo en familles / types de métriques pour continu


#### Trait selection through bibliography.

My work aims to predict in-field abundance and species richness for 7 different taxa, through the use of the functional traits of the surrounding landscape's plant communities. In order to do was devised the following plan : for all animal taxa, ecological requirements would be split into two main categories labeled "nutrition" and "habitats", encompassing the most important needs for species establishment; as for the weeds, it was decided that the most important factor was the dispersal filter, thus my focus on the "dispersion" category of traits. The next step was to find, for (ideally) broad categories / subgroups of each taxa what their needs (for the two categories aforementioned) are through extensive -although not exhaustive- bibliographic research and discussion with experts on some of the taxa (carabids notably). Once all relevant articles have been read and selected, and the relevant / interesting citations indexed in tables, translation of all those needs to functional traits of surrounding vegetation was required. While defining relevant and sufficiently characterized taxa sub-groups was also a source of issues, I will discuss this further in the discussion section. Then, once the trait list was compiled, and the traits not referenced in TRY or baseflor databases were removed, it was time to create the TRY dataset requests. In order to do so, I also created a species list of the 3 main soil occupation types surveyed in the ConservES project (forest, grasslands, and hedgerows) and the field weed list.

#### Community simulation
Variations ds landscape ; hetero inter et intra patch ; Donc patch IDs pour aider à savoir quoi assigner où un fois rasterizé.

Our work aims to emancipate itself from the pitfalls of the discrete approach of landscape ecology that oversimplifies and smooths variations in landscapes. We state that two forest patches amongst the same landscape, although possibly extremely similar, are most-likely not identical in terms of community composition. Moreover, even under classical landscape ecology, it is recognized that a patch covering a large area of soil is not totally homogeneous within it, and the discrete categorization of classical ecology does not allow us to capture this heterogeneity. In order to translate this notion into our model and process, we settled on defining "patch IDs" for each patch of each soil occupation type in the QGIS vector map that we use as an input. This way, even when rasterized, each tile has an ID which allows us to avoid assigning too many different communities within what would be considered a single patch in classical landscape ecology, and to scale this process according to patch size. We set ==treshold ?==
==[définir seuils pour nb communautés au sein d'un patch de taille X,XX,XXX ????]

[parler du patch id avant de convertir en grid, qui permet d'attribuer un pool de pool d'espèces à un grand patch pour avoir de la var mais pas 50 pools différents non plus]
[parler du mécanisme de création de pools / commus + règles internes ????]
#### Indicator choice 

From the beginning of the internship it was clearly intended to use Community-Weighted Means (CWM) to analyse the functional landscape, as it is both a common indicator in functional ecology, and as it was already used in previous works as an indicator of compositional heterogeneity (but not configurational heterogeneity, which is harder to quantify, thus prompting us to search for additional metrics). What stemmed from the aforementioned bibliographic work was the need to characterize the diversity (and proportion) of the supply of different habitats/resources, prompting us to use Community-Weighted Variance (CWV) too. This was either due to a varied life cycle that requires different habitats, or to a failure to create sufficiently precise / differentiated subgroups for a taxa (the most obvious example being carabids once again) .



>[!important] A GARDER EN TETE 
>Tableau TRAIT X ORGANISME
>"rajouter une colonne type de trait quali/quanti"
>trier en fonction des organes (genre seed traits cote à cote dans tableau)
> Voir comment faire pour la partie "valeur" qui favorise les espèces
>MENTIONNER le coté "on prends pas en compte ce qui défavorise les sp" genre allélopathie ou composés phénoliques etc etc (biais mais justifiable pcq pb de temps, et que vu qu'on s'intéresse que a des besoins primaire, s'ils sont pas satisfait / favorables, alors on peut raisonnablement supposer que c'est défavorable)
> Ptet virer d'ou viennent (fin mettre en ANNEXE) les traits en terme de bdd
>
>
>
>POUR LES RECHERCHES BIBLIOS :
>
   Expliquer le process d'acquisition des articles (types de requêtes, mots-clés genre "diet" / "food" / "feeding" / "nutrition" et "preferences", articles récup dans biblio d'autres articles, ...)
>
   JUSTIFIER PQ ON A PRIS QUE 2 BDD (TRY et baseflor => biais ???)
>
   "moi jv dire que bah c pas exhaustif mais j ai essayé de trouver des articles complets, dans des contextes européens, de préférence sur les adultes, etc
   que si je tombais sur plusieurs refs j évaluais laquelle etait meilleure selon x ou y critère, ma query WoS je vais la mettre aussi; vrmt le m&m faut le voir comme un "si il prennnent qqn en stage qui doit refaire la mm chose, comme je peux l aider; j'vais dire que sur les articles, j ai gardé qu un seul article à chaque fois pck ct plus pratique et que je pouvais pas doser entre les articles; forcément c pas le script de ton stage mais l idée c est qu on capte aussi un peu l etat d esprit que t avais dans tes recherches" Raph
>
   "qu en croisant des sources t as gardé telle valeur pck x raison" Raph
>
   Parler du tableau du vietnam des carabes (et que ca a un peu échoué notamment suite à la discussion avec saska)
>    
   PROCESSUS D'EXTRACTION DES INFOS
