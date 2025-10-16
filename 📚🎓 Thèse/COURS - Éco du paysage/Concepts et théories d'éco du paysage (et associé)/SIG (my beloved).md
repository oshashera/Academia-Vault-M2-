- Un Système d’Information Géographique (SIG) permet des analyses spatiales poussées en écologie du paysage
- Objets élémentaires de type vecteur : points, polylignes, polygones
- Objets élémentaires de type raster : pixels

#### Données de type vecteur

- Exemple : réseaux de haies et de bosquets dans une matrice de champs cultivés
	- Haies : polylignes
	- Bosquets : polygones
	- Habitations : points
- Exemple : réseaux de rivières et de mares forestières dans un massif forestier
	- Rivières : polylignes
	- Mares forestières : polygones
	- Maison forestière : points

#### Données de type raster

- Exemple : fragments forestiers dans une matrice de champs cultivés
Matrice de données + Géoréférences = Représentation cartographique


#### Exemple de fragmentation des forêts à l’échelle paysagère

La structure spatiale des fragments forestiers dans le paysage français est très différente suivant que l’on se situe en plaine ou en montagne
![[Pasted image 20251016162127.png|center|550]]
###### Conséquences potentielles de cette fragmentation des forêts en plaine
Perturbation des flux de migration d’espèces entre les communautés qui composent le tapis végétal forestier (cf. métacommunautés + percolation) : retard entre températures bioindiquées par la flore et températures observées
![[Pasted image 20251016162318.png]]

###### Exemple d’effet de lisière entre fragments forestiers et champs cultivés
Plus on pénètre dans le peuplement forestier en s’éloignant de la lisière, plus la température et la lumière diminuent, tandis que l’humidité ambiante augmente.
![[Pasted image 20251016162511.png|300]]

##### Espèces de lisières versus espèces de zones centrales
![[Pasted image 20251016162620.png|center|650]]

### Quelques indices de mesure de structure spatiale en écologie du paysage

Sous SIG, il est possible de calculer plusieurs types d’indices qui nous renseignent sur la structure du paysage :
- Nombre totale de tâches
- Surface totale des tâches
- Périmètre des tâches
- Ratio surface/périmètre des tâche : mesure l’importance des lisières
- Indices de distance/proximité entre les tâches : mesure la connectivité
- Indices de forme des tâches : fractales
- Indices d’hétérogénéité


### Les bdds

##### Corine Land Cover
![[Pasted image 20251016161640.png|center|700]]

##### European Forest Data Center
![[Pasted image 20251016161750.png|center|850]]

