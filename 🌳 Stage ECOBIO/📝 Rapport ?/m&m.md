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



