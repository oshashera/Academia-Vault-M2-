Parties : 
- Biblio et choix des traits ✅
- Choix de la résolution / des nombres de communautés à simuler 🟧✅
- Data cleaning + remodeling ? 🔴
- Choix des indices et calculs pour les traits => variance ET moyenne des commus ✅?
- Choix des règles de simulation des communautés 🔴
- Choix des métriques calculées => Getis-Ord + PathOfLeastResistance + shortest euclidian distance + comparatif rapide des options dispo en familles / types de métriques pour continu 🔴

>[!important] A GARDER EN TETE 
>Tableau TRAIT X ORGANISME
>"rajouter une colonne type de trait quali/quanti" 🟧✅
>trier en fonction des organes (genre seed traits cote à cote dans tableau) ✅
> Voir comment faire pour la partie "valeur" qui favorise les espèces 🔴
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
#### Trait selection through bibliography.

My work aims to predict in-field abundance and species richness for 7 different taxa, through the use of the functional traits of the surrounding landscape's plant communities. In order to do was devised the following plan : for all animal taxa, ecological requirements would be split into two main categories labeled "nutrition" and "habitats", encompassing the most important needs for species establishment; as for the weeds, it was decided that the most important factor was the dispersal filter, thus my focus on the "dispersion" category of traits. The next step was to find, for (ideally) broad categories / subgroups of each taxa what their needs (for the two categories aforementioned) are through extensive -although not exhaustive- bibliographic research and discussion with experts on some of the taxa (carabids notably). Once all relevant articles have been read and selected, and the relevant / interesting citations indexed in tables, translation of all those needs to functional traits of surrounding vegetation was required. While defining relevant and sufficiently characterized taxa sub-groups was also a source of issues, I will discuss this further in the discussion section. Then, once the trait list was compiled, and the traits not referenced in TRY or baseflor databases were removed, it was time to create the TRY dataset requests. In order to do so, I also created a species list of the 3 main soil occupation types surveyed in the ConservES project (forest, grasslands, and hedgerows) and the field weed list.

#### Community simulation and GIS management
Variations ds landscape ; hetero inter et intra patch ; Donc patch IDs pour aider à savoir quoi assigner où un fois rasterizé.

- Our workflow takes the vector map of the landscape of interest and transforms it into a raster, allowing me to bypass the classical land-use approach; My model's purpose is to explore the influence of landscape's plant communities functional traits on in-field biodiversity. The community simulation is primordial since it will define the functional trait provision in our model. In order to simulate (ideally) realist plant communities, from the botanical survey datasets, I recovered for each land use, the average abundance, as well as the means, medians and standard deviations of the number of species present in a quadrat. I also calculated the rate (probability) of presence of each species in a quadrat. This information, recorded in Table XXX, will be of great use in creating plant communities. The probability of presence and average abundance has been aggregated with the list of all species so as to have this information readily available for all species and soil occupations.

|                                      | Forest           | Hedgerows        | Grasslands       | Weeds            |
| ------------------------------------ | ---------------- | ---------------- | ---------------- | ---------------- |
| Mean number of species per quadrat   | 12.2233502538071 | 10.1259259259259 | 11.39            | 10.4168831168831 |
| Madian number of species per quadrat | 12               | 9                | 11               | 10               |
| Standard deviation                   | 4.14813032400118 | 3.8615306339889  | 3.31896753613764 | 2.36939209102019 |
- Instead of creating a unique model community for each land use, this work aims to emancipate itself from the pitfalls of the discrete approach of landscape ecology that oversimplifies and smooths variations in landscapes. Thus, we state for instance that two forest patches amongst the same landscape, while possibly similar, are most-likely not identical in terms of species composition. Moreover, even under classical landscape ecology, it is recognized that a patch covering a large area of land displays some inner heterogeneity, and the discrete categorization of classical ecology does not allow us to capture it. In order to translate this notion into our model and process, I settled on defining "patch IDs" for each patch of each soil occupation type in the QGIS vector map that we use as an input. This way, even when rasterized, each tile has an ID which allows us to both know what under what land-use category it would fall under, and to avoid assigning too many different communities within what would be considered a single patch in classical landscape ecology. It also allows me to scale this process according to patch size. However in order to implement this mechanic, we have to define ==treshold ?== <font color="#ff0000">AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAH</font>

==[définir seuils pour nb communautés au sein d'un patch de taille X,XX,XXX ????]

With those issues solved, only the species selection remains. In order to create plant communities for our landscapes, we used sub-communities based on a "land-use" species list while taking into account abundance (see fig X)


[parler du mécanisme de création de pools / commus + règles internes ????]

```R
# Elements to choose from
elements <- c("apple", "banana", "cherry")

# Corresponding weights (probabilities of presence)
weights <- c(0.1, 0.3, 0.6)

# Randomly select 1 element, weighted by probability
set.seed(123)  # for reproducibility BUT WILL BE RANDOMIZED TOO (like with 10k possibilities ig?)
sample(elements, size = 1, prob = weights)


# Select 5 elements with replacement
sample(elements, size = 5, replace = TRUE, prob = weights)

# Select 2 elements without replacement
sample(elements, size = 2, replace = FALSE, prob = weights)

```
- *`prob` doesn't have to sum to 1; R will normalize them internally.
- *When sampling **without replacement**, the sum of weights must match the number of elements and all probabilities must be non-zero for any element to be selected.*


#### Indicator choice 

From the beginning of the internship it was clearly intended to use Community-Weighted Means (CWM) to analyse the functional landscape, as it is both a common indicator in functional ecology, and as it was already used in previous works as an indicator of compositional heterogeneity (but not configurational heterogeneity, which is harder to quantify, thus prompting us to search for additional metrics). What stemmed from the aforementioned bibliographic work was the need to characterize the diversity (and proportion) of the supply of different habitats/resources, prompting us to use Community-Weighted Variance (CWV) too. This was either due to a varied life cycle that requires different habitats, or to a failure to create sufficiently precise / differentiated subgroups for a taxa (the most obvious example being carabids once again) .









## Sélection commu : 

#### pour cultures 
1. Déterminer le nombre de communautés à simuler
Prendre le tableau Summary_attribut_table
Filtrer les lignes où Classe ∈ c(5, 6, 7, 10)
Compter les parcelles distinctes via Id_parcell
	→ Ce compte = nombre de communautés à simuler pour l’occsol "culture"


2. Pour chaque communauté (i.e. chaque parcelle concernée) :

a. Identifier la classe (5, 6, 7 ou 10)
→ Elle influencera le choix des cultures prioritaires uniques (excluant les autres grandes cultures)

b. Déterminer la taille de communauté à simuler
Aller chercher min et max dans le tableau Min_Max_communautés_occsol, colonne "Adventices"
Tirer une valeur entière entre ces bornes selon une distribution normale
	Moyenne = moyenne(min, max)
	Écart-type ≈ (max - min) / 4 (pour rester dans l’intervalle 95%)

c. Tirer aléatoirement (sans remise) des espèces depuis List_sp_filtres, sous conditions :
Adventices.Mean.abundance > 0 et Adventices.Presence.probability > 0
Exclure "Zea mays", "Fagopyrum esculentum", "Brassica napus", "Vicia faba", "Triticum aestivum", "Pisum sativum", "Hordeum vulgare" sauf si :
	Classe == 5 → peut tirer "Brassica napus"
	Classe == 6 → peut tirer "Triticum aestivum" ou "Hordeum vulgare"
	Classe == 7 → peut tirer "Pisum sativum" ou "Vicia faba"
	Classe == 10 → peut tirer "Zea mays"
Une et une seule parmi les espèces autorisées par classe peut être tirée par communauté

🔹 3. Stocker les communautés
Pour chaque simulation : un tableau avec les IDs TRY des espèces tirées
Répéter pour chaque communauté à simuler (nb déterminé en étape 1)
Stocker dans une liste de dataframes, ou un tableau long avec un identifiant de simulation







Tableau sp (import du csv) ou on garde que les colonnes qu'on veut.

Data avec nb sp commu (min, max, moy, sd).


Pour culture : 

```R
# 1. Taille de la communauté : tirage selon loi normale, avec moyenne et écart type (standard deviation = sd) 
  min_sp = as.numeric(Min_Max_communautés_occsol[1, "Adventices"]) #valeur min pour l'occsol culture
  max_sp = as.numeric(Min_Max_communautés_occsol[2, "Adventices"]) # valeur max
  mean_sp = as.numeric(Min_Max_communautés_occsol[3, "Adventices"]) # moyenne
  sd_sp = as.numeric(Min_Max_communautés_occsol[4, "Adventices"]) # écart type 
  
  taille <- round(rtruncnorm(1, a = min_sp, b = max_sp, mean = mean_sp, sd = sd_sp)) # c'est un entier qu'on veut récup donc round
```




Récupérer la liste de tt les espèces avec simultanément des abondances > 2 et proba > 0.02. 
Stocker tt ces espèces dans un df "pool_adventices_full" (garder leur try ID et leur nom de FINAL.LIST.UNIQUE)

Split ce pool_adventice_full en 2 data_frame : 
"pool_adventices_weed" qui vaut à "pool_adventices_full" - les lignes ayant les noms de FINAL.LIST.UNIQUE : "Zea mays", "Fagopyrum esculentum", "Brassica napus",  "Vicia faba", "Triticum aestivum", "Pisum sativum", "Hordeum vulgare", qui vont aller dans le 2ème data frame "pool_adventices_culture"

Ensuite, on va, pour chaque parcelle, récup la classe  :
On va tirer aléatoirement parmis "pool_adventices_weed" (taille_commu - 1) sans remise (si il y a plus rien on tire plus). On va ensuite ajouter une espèce de pool_adventices_culture, selon l'occsol ("5" = "Brassica napus", "6" = "Triticum aestivum", ou "Hordeum vulgare" (un des 2 tirés random),  "7" = "Pisum sativum" ou"Vicia faba" (un des 2 tiré random),  "10" = "Zea mays") 

Donc en sortant de cette opération j'ai une commu qui a, pour taille de commu = N : 
N-1 sp tirées du pool_adventices_weed + 1sp issue de pool_adventices_culture selon le type d'occsol (colonne "classe").

On va répétér ca pour tt les commus, de manière a avoir 1 commu / parcelle (adapté au code d'occsol).

On va stocker tout ca dans un tableau nommé communautés_culture_sp qui aura comme colonne :
- une colonne avec l'Id_parcell
- une colonne avec la Classe
- une colonne avec le nom de l'espèce, tiré de FINAL.LIST.UNIQUE (1 sp de la commu par ligne donc chaque commu font plusieurs lignes)
- une colonne intitulée "abondance originale" qui a pour valeur pour l'espèce de la ligne la valeur associé à cette espèce dans Adventices.Mean.Abundance.
  
  
  
  
  
  
  
  
  To calculate the community-weighted mean (CWM) for qualitative traits, you can adapt the standard CWM calculation by using the modal class (the most frequent category) instead of a numerical average. This approach is particularly useful when dealing with categorical traits, such as pollination syndrome or seed morphology type.
🧮 CWM for Qualitative Traits
For each community, the CWM for a qualitative trait can be calculated by determining the most frequent category among the species present, weighted by their relative abundance. This method is known as the community-weighted mode

https://digital.csic.es/bitstream/10261/221270/3/R_Material_traits.pdf (P115 "tells us what is the most dominant type in each plot") => modal approach











Methodology : 

1) Species management
	1) Récupération de relevés des sp végétales dans parcelles de la zone étudiée
	2) Calcul pour chaque occsol des abondances et probabilités de présence moyennes par espèce du dataset correspondant
	3) Filtrage des communautés pour créer liste unique espèce avec abondances et proba de présence pour chaque occsol
2) Trait management
	1) Lecture articles trouvé via mots clés "need" "requirement" "preferences" "diet" "feeding" "food" "habitat" "shelter"
	2) Extraction de citations et infos clés sur taxons d'intérêts
	3) Traduction en possible traits végétaux ayant une influence (limitation au niveau du taxons et du niveau trophique inférieur : on peut check ce qui favorise l'abondance de ses proies, mais pas des proies de ses proies sinon on s'en sort plus
	4) On vérifie si on trouve ces traits ou des équivalents dans les bdds (TRY majoritairement, dataflor aussi,...), ou si on peut les calculer / approximer a partir de traits de ces bdds (transpiration plante pourrait être=> transpiration/leaf area X leaf area/plant = transpiration/plant).
	5) On fait un tableau croisé Trait / organisme pour tous les traits ainsi existant ou estimables
	6) Re