
## 1) Species management
#### 1.1) Récupération de relevés des sp végétales dans parcelles de la zone étudiée
#### 1.2) Calcul pour chaque occsol des abondances et probabilités de présence moyennes par espèce du dataset correspondant
#### 1.3) Filtrage des communautés pour créer liste unique espèce avec abondances et proba de présence pour chaque occsol

## 2) Trait management
#### 2.1) Lecture articles trouvé via mots clés "need" "requirement" "preferences" "diet" "feeding" "food" "habitat" "shelter"
#### 2.2) Extraction de citations et infos clés sur taxons d'intérêts
#### 2.3) Traduction en possible traits végétaux ayant une influence (limitation au niveau du taxons et du niveau trophique inférieur : on peut check ce qui favorise l'abondance de ses proies, mais pas des proies de ses proies sinon on s'en sort plus
#### 2.4) On vérifie si on trouve ces traits ou des équivalents dans les bdds (TRY majoritairement, dataflor aussi,...), ou si on peut les calculer / approximer a partir de traits de ces bdds (transpiration plante pourrait être=> transpiration/leaf area X leaf area/plant = transpiration/plant).
#### 2.5) On fait un tableau croisé Trait / organisme pour tous les traits ainsi existant ou estimables
#### 2.6) Requêtes / récupération / compilation de ces traits par espèces de la liste unique des espèces (1.3)
## 3) Preparations for community selections :
#### 3.1) Calcul des min/max, moy, sd des tailles commus pour chaque occsol → tableau occsol X min,max,moy,sd
#### 3.2) Constitution liste finale espèces :
###### 3.2.1) Split liste unique espèce en listes (1/occsol) qui ont des abondances et pba non nulles => liste intermédiaires
###### 3.2.2) Pour chaque occsol, on filtre les espèces trop rare (pour descendre le taux de NA qu'on aura pour les traits, pour garder plus de traits) → seuil de 1 à 5% → on ne garde que les espèces qui ont plus que ces seuils en abondance moyenne ET en proba d'être présente. Valeur de 1 à 5% de sorte à avoir plus que la taille moyenne des communautés dans cet occsol (nous on a gardé pour seuil = 2%) de sorte a avoir des communautés différentes possibles.
###### 3.2.3) Refusion en une liste unique de toutes ces listes filtrées par seuil → liste espèce finale
		1) Recupération des infos d'abondance moy et pba présence pour cette liste (infos extraits/ issues des listes antérieures)
	4) Ajout des valeurs de traits pour tt les traits pour cette liste finale espèces → filtrage pour ne garder que les traits ayant 25% de NA ou moins
	5) Vérification de l'absence de trop forte corrélation entre traits conservés → limiter doublon d'information → corrélation pearson
	6) Vérification de l'absence / présence de corrélation entre les traits conservés et ceux avec trop de NA → comparaisons 2 par 2 pour toutes les espèces ou des valeurs existent pour ces 2 traits → si corrélation et nombre suffisant de comparaison (+de 75% de lignes comparées) alors on pourra tirer des conclusions sur ces traits là aussi.
	7) Enregistrement dans un fichier de cette liste contenant : nom sp, id try de l'espèce, abondance et pba.présence pour chaque occsol, traits conservés.
2) Préparation SIG (QGIS):
	1) Création de buffers (distances variables, nous avons choisis 3 distances autour de centroides dans les champs étudiés : 300, 750 et 1000m)
		1) Création buffers de taille désirées
		2) Intersection avec occsols (bd OSO,théia, classes occsol, vectoriel)
		3) Création buffer haies (bd haies, IGN, linéaire vectoriel) de 10m de large (résolution initiale de OSO qui était raster puis vectorisé avant d'être rendu disponible sur théia), avec ajout de l'attribut "classe" (même attribut que OSO, code numérique associé à une occsol précise), et ajout de la valeur 99 pour toutes les haies.
		4) Intersection avec buffer haies
		5) Création d'un attribut "zone" pour pouvoir séparer la carto globale (tous buffers) en 1 carte / buffer
		6) Création d'un attribut "id parcelle" permettant d'associer une parcelle précise à une communauté simulée précise
		7) Sauvegarde en vectoriel (gpkg pour ma part)
3) Community selection (Rstudio):
	1) Récupération du nombre N de communautés à simuler pour chaque occsol → chargement table d'attribut puis comptage de tt les parcelles appartenant à une occsol (n° dans "classe")
	2) 2 Modes : **\[option A]** Boucle de simulation des commus : pour N, tirer (sans remise) une espèce qui a une valeur supérieure au seuil défini précedemment (1 à 5%, cf 3.2.2) pour l'occsol en question en abondance et pba de présence, car certaines espèces sont présentes dans plusieurs occsols, et bien que éliminées dans certaines occsol précédemment (par seuil), ont pu être sélectionnée pour une autre occsol et donc être dans la liste finale avec des valeurs insuffisantes dans la plupart des occsol sauf au moins une. → Cas pour prairies
	   **\[option B]** Split en 2 sets des plantes de l'occsol : cultures/adventices pour champs, arbres/autres pour haies et forêt → tirage séparé de X espèce dans chaque pool de sorte à avoir le nombre d'espèce attributé à la communauté TOUT EN ASSURANT LA PRESENCE DES 2 SUBSET (arbres ou cultures) dans l'occsol. Règles de sélections supplémentaires sur le nombre d'espèce à tirer dans les sets "cultures" (1, pas d'association, mais on pourrait), et "arbres" (pour forêt et haies, tiré aléatoirement entre 1 et 3 (essences dominantes) auquel on attribuera aléatoirement des % d'abondance de sorte à avoir **==VOIR AVEC CENDRINE==** recouvrement)
	   ==> DANS TOUS LES CAS : stockage dans un df
	3) Calcul CWM / CWV : calcul pour chaque commu du CWM (trait quanti : moyenne des valeurs de traits des espèces pondérée par l'abondance des espèces; trait quali : valeur modale (dominante) au vu de l'abondance cumulée des espèces qui présentent cet valeur précise) et CWV (quanti : **à compléter**; quali : ==A COMPLETER ET CHECK== **https://en.wikipedia.org/wiki/Qualitative_variation**) → stockage dans un df
	4) Update de la table d'attribut du gpkg-région (3x → 3 échelles de buffer) en ajoutant les colonnes de CWM et CWV pour chaque parcelle.
4) Raster generalization avec basevalue pour color-coder (=à définir comment récup la baseline, surement valeur médiane ou moyenne pour la région pour le trait ? → calculer sur R avant, genre en 5.3.3 ?)
5) Analyse sur le raster → ==A DEFINIR
	1) Basique **revoir ca**
	2) Continue et innovante → Getis ord heatmap
		1) Heatmap (baseline à gérer ?)
		2) Polr : détailler
		3) Sec : détailler
