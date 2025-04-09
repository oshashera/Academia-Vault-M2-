Parties : 
- Biblio et choix des traits
- Choix des indices et calculs pour les traits => variance ET moyenne des commus
- Data cleaning + remodeling ?
- Choix de la résolution / des nombres de communautés à simuler
- Choix des règles de simulation des communautés
- Choix des métriques calculées => Getis-Ord + PathOfLeastResistance + shortest euclidian distance + comparatif rapide des options dispo en familles / types de métriques pour continu


#### Bibliography and trait selection.

My work aims to predict in-field abundance and species richness for 7 different taxa, through the use of the functional traits of the surrounding landscape's plant communities. In order to do so my supervisors and I devised the following plan : for all animal taxa, we would split ecological requirements into two main categories labeled "nutrition" and "habitats", encompassing the most important needs for species establishment, and for the weeds, we thought that the most important factor was the dispersal filter, thus we only focused on the "dispersion" category of traits. The next step was to find, for (ideally) broad categories / subgroups of each taxa what their needs (for the two categories aforementioned) are through extensive -although not exhaustive- bibliographic research and discussion with experts on some of the taxa (carabids notably). Once all relevant articles have been read and selected, and the relevant / interesting citations indexed in tables came the complex and sometimes janky task consisting of translating all those needs to functional traits of surrounding vegetation. While defining relevant and sufficiently characterized taxa sub-groups was also a source of issues, the main source of friction was the translation of animal needs into plant traits; I will discuss this further in the discussion section. Then, once the trait list was constitued, and the traits not referenced in TRY or baseflor databases were removed, it was time to create the TRY dataset requests. In order to do so, I also created a species list of the 3 main soil occupation types surveyed in the ConservES project (forest, grasslands, and hedgerows) and the field weed list.

#### Indicator choice 

From the beginning of the internship it was clearly intended for us to use Community-Weighted Means (CWM) to analyse the functional landscape, as it is both a common indicator in functional ecology, and as it was already used in previous works as an indicator of compositional heterogeneity (but not configurational, which is harder to quantify, thus prompting us to search for additional metrics). What stemmed from the aforementioned bibliographic work was that either due to 

