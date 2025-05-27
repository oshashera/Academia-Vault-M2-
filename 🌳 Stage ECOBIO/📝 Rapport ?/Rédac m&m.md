Disclaimer : This part is both the Materials and Methods of this internship as well as being a result in itself, since the proposed methodology developped here is a result and could be employed and derived for other contexts
## 1) Species management
#### 1.1) Récupération de relevés des sp végétales dans parcelles de la zone étudiée
I have retrieved 3 spreadsheet files detailing vegetation surveys in the Brittany region in 2023 for the following 4 land-uses: Hedges, forests, crops and grasslands. 
The data I thus had at my disposal was : 50 forest land plots, 77 crop land plots, 122 grassland land plots and 135 hedgerows land plots. All abundances have been expressed as percentages.

#### 1.2) Calcul pour chaque occsol des abondances et probabilités de présence moyennes par espèce du dataset correspondant
For each land-use, I computed the average abundance and presence probability of each species by first calculating those for each plot (initially split in numerous quadrats), then averaging it over all of the plots of the land-use. Following this, all of the resulting Species/Mean Abundance/Mean Presence Probability were joined in a single spreadsheet.
#### 1.3) Filtrage des communautés pour créer liste unique espèce avec abondances et proba de présence pour chaque occsol
Then, since numerous species were present in at least 2 different land-use, I filtered this spreadsheet to only have unique species remaining (Using the TRY database species list to harmonize the nomenclature and to associate each unique species with its TRY Species ID). This table had 2 columns for each land-use (to have the abundance and the presence probability). When species were absent in a land-use, their values for both columns of this land-use was set to 0.
## 2) Trait management
This part is the both crucial and is arbitrary to an extent. The idea is to scan relevant literature for the target in-field taxa -in our case those taxa would be spiders, parasitoïds, pollinators, carabids, slugs and snails, cereal aphids and weeds- to document and assess their needs, by splitting those taxa into subgroups of varying requirements if needed, then to translate those needs into plant functional traits of the neighboring plant communities. Early in the internship my supervisors and I decided to split the needs of animal taxa into two categories -"Habitats/shelter" and "Diet"- and to focus on the "dispersion" for the weeds.
#### 2.1) Lecture articles trouvé via mots clés "need" "requirement" "preferences" "diet" "feeding" "food" "habitat" "shelter"
The first step was to search for relevant literature for our target taxa. Since we split the requirements as stated before, I used search equation based on the following structure : "taxa name (multiple synonyms possible)" + "need" (or "requirements" or "preferences") + "feeding" (or "food" or "diet" or "habitat" or "shelter"). I then downloaded the most relevant papers and books. I tried to pace myself so that I would characterize the requirement of a taxa in one or two weeks at most.
#### 2.2) Extraction de citations et infos clés sur taxons d'intérêts & traduction en possible traits végétaux ayant une influence (limitation au niveau du taxons et du niveau trophique inférieur : on peut check ce qui favorise l'abondance de ses proies, mais pas des proies de ses proies sinon on s'en sort plus
I then read those documents carefully to extract key informations and citations (see ==**APPENDIX XX**==) and stored them in tables of the format "relevant information"/"citation"/"source material". In the "relevant information" column, I would write what possible plant traits would be relevant on this need when possible This process was time-consuming and rather arbitrary, especially as - and this will be discussed again in the discussion section - there are many gaps in the literature. One issue stood out to me, and I can't say I'm satisfied with how I solved it : when the studied organism was a secondary consumer, it's food source would be other (often diversified) animal organisms; Then, to characterize what would favor our target organism in terms of nutrition would be to characterize what would favor its prey abundance, but to do so would also mean to do this whole process over for the lower trophic level, and so on and so on. Since that would be too much time-consuming and would probably decrease -due to this process being arbitrary-, or at least not increase the accuracy of the later landscape characterization, I decided to limit myself to a few (2/3, ideally already useful traits for target organisms) traits that would favor these preys. Overall, this whole process took more than two months of this internship, and although not all of the downloaded and read documents were used in the end, their careful reading was lengthy and unavoidable : just for this step (taxa characterization), I read 98 documents (altough I did not read the books in their entirety, only relevant chapters).
#### 2.3) On vérifie si on trouve ces traits ou des équivalents dans les bdds (TRY majoritairement, dataflor aussi,...), ou si on peut les calculer / approximer a partir de traits de ces bdds (transpiration plante pourrait être=> transpiration/leaf area X leaf area/plant = transpiration/plant).
From the newly-formed plant trait list, I then searched for their existence in online databases, mainly TRY and Baseflor, and if those traits were not readily measured or available in those, I tried to approximate them from existing trait. A good example would be plant transpiration, which did not exist as such : By combining the existing "transpiration per leaf area" and "leaf area per plant" traits, I could estimate the transpiration per plant. Overall, most of the traits existed and were available (although with varying degrees of completion over the plant list we had), and those unavailable could not be approximated in most cases.
#### 2.4) On fait un tableau croisé Trait / organisme pour tous les traits ainsi existant ou estimables
With the existing traits remaining, I then created a trait/target organism table to visualise the distribution of traits within the different groups of organisms (see ==**FIG XXX**==).
#### 2.5) Requêtes / récupération / compilation de ces traits par espèces de la liste unique des espèces (du 1.3)
Traits from the Baseflor database and requested TRY data were then compiled (using the Rtry package (v.1.1.0, on R v.4.5.0) on Rand joined to the previously mentioned unique species plant list / abundance-probability list. Missing flowering date data from the Baseflor database was completed with data from the Tela-Botanica site and the site of the Conservatoire de Botanique du Bassin Parisien.

## 3) Preparations for community selections :
#### 3.1) Calcul des min/max, moy, sd des tailles commus pour chaque occsol → tableau occsol X min,max,moy,sd
In order to simulate realist communities, I decided to randomly define their size (number of species within a community) following a normal law of the same mean, minimal and maximal value and standard deviation than each of the land use. I thus computed for each land-use in the aforementioned spreadsheets the min/max, rounded average community size, and the standard deviation of the community size. 
#### 3.2) Constitution liste finale espèces :
###### 3.2.1) Split liste unique espèce en listes (1/occsol) qui ont des abondances et pba non nulles => liste intermédiaires
From the unique species list, i created one spreadsheet per land-used, removing species not present in this land-use and removing the other land-use abundance and presence columns. 
###### 3.2.2) Pour chaque occsol, on filtre les espèces trop rare (pour descendre le taux de NA qu'on aura pour les traits, pour garder plus de traits) → seuil de 1 à 5% → on ne garde que les espèces qui ont plus que ces seuils en abondance moyenne ET en proba d'être présente. Valeur de 1 à 5% de sorte à avoir plus que la taille moyenne des communautés dans cet occsol (nous on a gardé pour seuil = 2%) de sorte a avoir des communautés différentes possibles.
Then, in order to be able to keep as most traits as we could, we chose to remove the most rare species from those lists, thus reducing the potential NA percentage of our traits of interest. We set a threshold window of between 1 and 5% in term of abundance and presence probability. This window would allow some leeway so that we still kept enough plants (more than the mean community size for this land-use). In our case, the optimal threshold was set at 2%, meaning that only species having both a mean abundance and a mean presence probability of 2% or higher would be kept in those land-use spreadsheets.

###### 3.2.3) Refusion en une liste unique de toutes ces listes filtrées par seuil → liste espèce finale
I then re-joined those filtered spreadsheets into a single spreadsheet. This would form our final species list, comprised of : the TRY Species ID, the species name, their abundance and presence probability for each land-use, each traits and the units of those traits (for quantitative traits).
#### 3.3) Ajout des valeurs de traits pour tt les traits pour cette liste finale espèces → filtrage pour ne garder que les traits ayant 25% de NA ou moins
I then computed the NA% of each trait, and only kept the traits (and their units) where 25% or less of the values were NA's. 
#### 3.4) Vérification de l'absence de trop forte corrélation entre traits conservés → limiter doublon d'information → corrélation pearson
In parallel, I generated pearson comparisons for each pair of selected traits to avoid having too correlated traits and thus a duplication of information. In our case, none of the selected traits were too correlated.

#### 3.5) Vérification de l'absence / présence de corrélation entre les traits conservés et ceux avec trop de NA → comparaisons 2 par 2 pour toutes les espèces ou des valeurs existent pour ces 2 traits → si corrélation et nombre suffisant de comparaison (+de 75% de lignes comparées) alors on pourra tirer des conclusions sur ces traits là aussi.
I also computed those comparisons for each pair of selected traits and non-selected traits, only for the species (\==lines) where both traits were available, so that if a high enough correlation was found and sufficient data was used for this comparison (i.e. if 75% or more of the species list were able to be compared), then information about those non-selected traits could be deduced. However, in our case, non of those non-selected trait were found to be correlated with selected traits, mostly because of too much missing data and data missmatch.
##### 3.6) Enregistrement dans un fichier de cette liste contenant : nom sp, id try de l'espèce, abondance et pba.présence pour chaque occsol, traits conservés.
I saved the resulting  remaing species - abundance/presence - trait spreadsheet into a CSV file for later use in R/Rstudio.
## 4) Préparation SIG (QGIS):
#### 4.1) Création de buffers (distances variables, nous avons choisis 3 distances autour de centroides dans les champs étudiés : 300, 750 et 1000m)
In this internship we wanted to assess the importance of the spatial range considered. In order to do so, we decided to create in QGIS 3 buffers around the centroids of the fields of interest, at different scales: 300m, 750m and 1000m radius. Please note that, although initially this task had been entrusted to a consultancy firm as part of the ConservES project, due to too many delays I had to generate the GIS myself.
###### 4.1.1)Création buffers de taille désirées + récupération des données d'occsol spatiale
I then retrieved land-use data from 2 main sources : for the hedges, I used the BD TOPO (provider: IGN; linear vectorial layer), and for the 3 remaining land-use, i used the OSO database (provider: Théia; polygonal vectorial layer, which was vectorized from an initial raster of 10m resolution). The land-use in the OSO data was number-coded, and it's precision allowed to differenciate different types of crops and forests (see ==FIG XXXXX (classes occsol theia)==.
###### 4.1.2) Intersection avec occsols (bd OSO,théia, classes occsol, vectoriel)
I then created the intersect between the buffers and the OSO layer.
###### 4.1.3) Création buffer haies (bd haies, IGN, linéaire vectoriel) de 10m de large (résolution initiale de OSO qui était raster puis vectorisé avant d'être rendu disponible sur théia), avec ajout de l'attribut "classe" (même attribut que OSO, code numérique associé à une occsol précise), et ajout de la valeur 99 pour toutes les haies.
Next, I created a buffer from the BD TOPO hedges layer transforming the linear hedges into 10 meter-wide entities (same resolution as the OSO layer). I also added a class ("classe") attribute in the attribute table, and assigned a value of 99 to all hedges. Thus, it could be used with the OSO nomenclature (OSO doesn't use then number 99 and doesn't have hedges as a land-use).
###### 4.1.4) Intersection avec buffer haies
I then intersected both of those temporary layers with each other. 
###### 4.1.5) Création d'un attribut "zone" pour pouvoir séparer la carto globale (tous buffers) en 1 carte / buffer
Following this, I created a "zone" attribute, that would serve as an idea to split the global map into separate buffers when needed.
###### 4.1.6) Création d'un attribut "id parcelle" permettant d'associer une parcelle précise à une communauté simulée précise
I also created an "parcel ID" attribute allowing to associate a specific plot with a specific simulated plant community.
###### 4.1.7) Sauvegarde en vectoriel (gpkg pour ma part)
Finally, I saved this global land-use layer into a geopackage (.gpkg) file.
## 5)  Community selection (Rstudio):

The whole process of community selection and CWM/CWV was performed in Rstudio (using R v.4.5.0 on a debian-based distribution) using the packages *data.table* (v.1.17.0), *dplyr* (v.1.1.4), *purrr* (v.1.0.4), *terra* (v.1.8-42), *tidyr* (v.1.3.1) and *truncnorm* (v.1.0-9).  
#### 5.1)  Récupération du nombre N de communautés à simuler pour chaque occsol → chargement table d'attribut puis comptage de tt les parcelles appartenant à une occsol (n° dans "classe")
     

#### 5.2)  2 Modes : **\[option A]** Boucle de simulation des commus : pour N, tirer (sans remise) une espèce qui a une valeur supérieure au seuil défini précedemment (1 à 5%, cf 3.2.2) pour l'occsol en question en abondance et pba de présence, car certaines espèces sont présentes dans plusieurs occsols, et bien que éliminées dans certaines occsol précédemment (par seuil), ont pu être sélectionnée pour une autre occsol et donc être dans la liste finale avec des valeurs insuffisantes dans la plupart des occsol sauf au moins une. → Cas pour prairies ||||||||||||**\[option B]** Split en 2 sets des plantes de l'occsol : cultures/adventices pour champs, arbres/autres pour haies et forêt → tirage séparé de X espèce dans chaque pool de sorte à avoir le nombre d'espèce attributé à la communauté TOUT EN ASSURANT LA PRESENCE DES 2 SUBSET (arbres ou cultures) dans l'occsol. Règles de sélections supplémentaires sur le nombre d'espèce à tirer dans les sets "cultures" (1, pas d'association, mais on pourrait), et "arbres" (pour forêt et haies, tiré aléatoirement entre 1 et 3 (essences dominantes) auquel on attribuera aléatoirement des % d'abondance de sorte à avoir **==VOIR AVEC CENDRINE==** recouvrement) ==> DANS TOUS LES CAS : stockage dans un df
#### 5.3) Calcul CWM / CWV : calcul pour chaque commu du CWM (trait quanti : moyenne des valeurs de traits des espèces pondérée par l'abondance des espèces; trait quali : valeur modale (dominante) au vu de l'abondance cumulée des espèces qui présentent cet valeur précise) et CWV (quanti : **à compléter**; quali : ==A COMPLETER ET CHECK== **https://en.wikipedia.org/wiki/Qualitative_variation**) → stockage dans un df
#### 5.4) Update de la table d'attribut du gpkg-région (3x → 3 échelles de buffer) en ajoutant les colonnes de CWM et CWV pour chaque parcelle.
## 6) Raster generalization avec basevalue pour color-coder (=à définir comment récup la baseline, surement valeur médiane ou moyenne pour la région pour le trait ? → calculer sur R avant, genre en 5.3.3 ?)
## 7) Analyse sur le raster → ==A DEFINIR
#### 7.1) Basique **revoir ca**
#### 7.2) Continue et innovante → Getis ord heatmap
###### 7.2.1) Heatmap (baseline à gérer ?)
###### 7.2.2) PoLR : détailler
###### 7.2.3) SeD : détailler













All R info :


Before Getis-Ord


R 4.5.0 :
 tidyr v.1.3.1       dplyr v.1.1.4       rtry v.1.1.0        data.table v.1.17.0  truncnorm_1.0-9   purrr v.1.0.4       terra v.1.8-42      tidyr v.1.3.1       dplyr v.1.1.4       rtry v.1.1.0       
data.table v.1.17.0