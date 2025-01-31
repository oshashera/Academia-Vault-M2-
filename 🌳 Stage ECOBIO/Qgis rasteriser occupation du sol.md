imaginons, version simple, que j'ai forêt ou champ sur un vectoriel qui suit la réalité (donc pas des carrés), mais que je veux avoir une carte qui fasse que des carrés de 20m de coté, avec une occupation (forêt ou champ) associée, et si la ou on fait un carré y a et forêt et champ, prendre celui qui occupe le plus de surface sur le carré qui sera généré

### Soluce

Ah, d'accord, tu veux générer un raster avec des carrés de 20 m de côté, en associant à chaque carré l'occupation de sol dominante (soit forêt, soit champ) en fonction de la surface qui est la plus grande dans ce carré. Voici les étapes détaillées pour y parvenir dans QGIS :

### Étape 1 : Créer une grille de carrés de 20 m de côté

1. **Créer une grille de carrés** :
    - Va dans **Vecteur > Outils de géométrie > Créer une grille**.
    - Choisis le type de grille "Carrés" et entre les dimensions de 20 m pour la largeur et la hauteur (en mètres).
    - Définis l'étendue de la grille (généralement l'extent de ton shapefile d'occupation du sol).
    - Clique sur **Exécuter** pour créer la grille de carrés de 20 m.

### Étape 2 : Rasteriser ton shapefile d'occupation du sol

Si ton shapefile d'occupation du sol est déjà un vecteur avec des zones de forêt et de champ, tu vas le convertir en raster.

1. **Rasterisation** :
    - Va dans **Raster > Conversion > Rasterize (vector to raster)**.
    - Sélectionne ton shapefile d'occupation du sol (forêt et champ).
    - Dans **Champ de valeurs**, choisis un champ de ton shapefile qui indique l'occupation du sol (par exemple, "type_occupation").
    - Choisis une résolution de 20 m (la même que la taille de tes carrés) pour que le raster généré corresponde à la grille que tu vas utiliser.
    - Clique sur **OK** pour créer le raster.

### Étape 3 : Calculer l'occupation dominante par carré

Maintenant, tu veux calculer quelle occupation de sol domine dans chaque carré de ta grille. Tu vas utiliser les statistiques zonales pour faire ça.

1. **Rasteriser la grille de carrés** :
    
    - Si tu n'as pas déjà transformé ta grille en raster, tu peux rasteriser cette grille aussi.
    - Va dans **Raster > Conversion > Rasterize (vector to raster)** et choisis la grille comme entrée. Assure-toi que la taille des pixels correspond à celle de tes carrés (20 m).
2. **Statistiques zonales** :
    
    - Utilise l'outil **Zonal Statistics** (ou **Statistiques zonales**) pour calculer la surface de chaque type d'occupation de sol dans chaque carré.
    - Va dans **Raster > Zonal Statistics**.
    - Dans **Couche zone**, choisis ton raster de la grille de 20 m (la grille de carrés).
    - Dans **Couche d'entrée**, choisis le raster que tu as obtenu après la rasterisation de ton shapefile d'occupation du sol.
    - Dans les options de statistiques, choisis **Majorité** ou **Mode** (pour avoir la catégorie dominante).
    - Lance le calcul.

### Étape 4 : Visualiser et vérifier

Après avoir appliqué les statistiques zonales, chaque carré de 20 m de ta grille devrait avoir une valeur correspondant à l'occupation de sol dominante (forêt ou champ).

1. **Style du raster final** :
    - Pour visualiser le résultat, tu peux styliser ton raster en fonction des valeurs dominantes (par exemple, couleur verte pour forêt et couleur jaune pour champ).
2. **Vérification** :
    - Vérifie quelques cellules pour voir si les valeurs dominantes sont correctement attribuées. Tu peux activer les informations sur les pixels pour voir les valeurs associées.

---

Cela te donnera un raster où chaque cellule de 20 m de côté aura l'occupation de sol dominante (forêt ou champ) selon la zone de surface la plus grande dans chaque carré.

Si tu rencontres des soucis ou des étapes manquantes, n'hésite pas à me demander plus de précisions !

