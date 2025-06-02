
Cartos CWM
Valeur moyenne CWM paysage → faire lien avec carabes et plantes (abondances / richesse spé)


Distribution / densité trait **compo**

Semivariogrammes : 
→ graph (au besoin)
→ sill / range => infos sur landscape complexity

entropy
→ map
→ valeur \[0,1] => **degré d’incertitude ou d’hétérogénéité locale**, plus l’entropie est élevée, plus la texture est **complexe ou aléatoire**
Valeurs absolues dépendront de la méthode et de l’échelle, mais en général :
- Entropie basse (< 1) = texture régulière.
- Entropie moyenne (1–3) = texture mixte.
- Entropie haute (> 3) = texture complexe/irrégulière.


GLCM  : valeurs fréquence d’apparition de couples de niveaux de gris à une certaine distance et orientation dans l’image
→ map (3 bands)
→ contrast
→ homogeneity
→ correlation


#### ?
##### 1. Variogramme spatial

Le variogramme est un outil fondamental de la géostatistique qui décrit la structure spatiale d’une variable continue. Il mesure comment la variance entre valeurs augmente avec la distance, permettant d’identifier l’échelle spatiale de la corrélation (range), la variance à petite échelle ou bruit (nugget), et la variance totale (sill).

- **Utilité** : Évaluer la structure spatiale, déterminer l’échelle de variation spatiale et identifier la présence d’autocorrélation spatiale.
- **Applications** : Compréhension de la configuration spatiale, estimation de la fragmentation spatiale (peut indiquer à quelle distance spatiale les valeurs sont indépendantes).
- **Forces** : Méthode robuste et largement utilisée en écologie et géosciences.
- **Limites** : Requiert un nombre suffisant de points, sensible aux valeurs aberrantes, complexe à interpréter sans modélisation.

**Seuils d’interprétation** :
- Nugget proche de zéro indique peu de bruit ou microvariabilité.
- Range faible (p. ex. 10-100 m) indique autocorrélation locale ; range élevé (> 100 m) suggère structures spatiales étendues.
- Sill correspond à la variance totale stabilisée.

> **Source** :  
> Cressie, N. (1993). _Statistics for Spatial Data_. Wiley.

---

##### 2. Entropie locale (Shannon entropy)

L’entropie mesure la diversité ou **l’hétérogénéité locale dans une fenêtre spatiale**. Plus l’entropie est **élevée**, plus la complexité ou la **variabilité locale est grande**, reflétant une **mosaïque spatiale riche en différentes valeurs**.

- **Utilité** : Évaluer l’hétérogénéité locale, la complexité de la composition spatiale.
- **Applications** : Indicateur de fragmentation ou diversité spatiale locale.
- **Forces** : Méthode simple et conceptuellement intuitive.
- **Limites** : Sensible à la taille de la fenêtre et au nombre de classes dans les données.

**Seuils d’interprétation** (variables selon classes) :
- Entropie < 0.2 : homogénéité locale élevée
- 0.2 - 0.5 : diversité modérée
- > 0.5 : haute diversité / complexité locale

> **Source** :  
> Shannon, C.E. (1948). _A Mathematical Theory of Communication_. Bell System Technical Journal.  
> Vogt, P., & Riitters, K.H. (2017). _Fragmentation of continental United States forests._ Ecosphere, 8(3).

---

##### 3. Textures GLCM (Grey-Level Co-occurrence Matrix)

Les indices GLCM décrivent la texture d’une image en mesurant la fréquence conjointe de valeurs de pixels selon une certaine direction et distance, capturant ainsi la structure locale.

- **Indicateurs principaux :**
    - **Contraste** : mesure les différences locales, indicateur de rugosité ou hétérogénéité.
    - **Homogénéité** : évalue la proximité des valeurs, liée à la douceur / uniformité.
    - **Entropie GLCM** : reflète la complexité ou irrégularité de la texture.
- **Utilité** : Analyse de la configuration spatiale, détection des motifs, identification de surfaces fragmentées ou homogènes.
- **Forces** : Très utilisés en télédétection pour caractériser la texture des paysages.
- **Limites** : Sensibles à la résolution et quantification des niveaux de gris.

**Valeurs typiques et interprétations** :
- Contraste : de 0 (aucun contraste) à plusieurs dizaines, avec >30 indiquant une texture très rugueuse.
- Homogénéité : entre 0 (hétérogène) et 1 (parfaitement homogène), valeurs >0.9 indiquant forte uniformité.
- Entropie GLCM : valeurs élevées (>2.5) correspondent à une texture complexe.

> **Sources** :  
> Haralick, R.M., Shanmugam, K., & Dinstein, I. (1973). _Textural features for image classification_. IEEE Transactions on Systems, Man, and Cybernetics.  
> Clausi, D.A. (2002). _An analysis of co-occurrence texture statistics as a function of grey level quantization._ Canadian Journal of Remote Sensing.

---

##### 4. Connectivité spatiale (Coût de déplacement)

La connectivité est mesurée ici via les distances de coût entre zones extrêmes (top 5% et bottom 5% des valeurs), estimant la facilité de déplacement ou interaction entre zones spatialement proches selon la variable d’intérêt.

- **Utilité** : Évaluer la fragmentation spatiale et la connectivité fonctionnelle des habitats ou zones homogènes.
- **Applications** : Compréhension des barrières spatiales, corridors écologiques, fragmentation.
- **Forces** : Prise en compte des contraintes spatiales réelles (ex. relief, obstacles).
- **Limites** : Dépend du choix de la fonction de coût, du réseau et du seuil utilisé.

**Interprétation des valeurs** :
- Valeurs élevées indiquent faible connectivité (plus grande fragmentation).
- Valeurs faibles indiquent une meilleure connectivité.

> **Source** :  
> Adriaensen, F. et al. (2003). _The application of ‘least-cost’ modelling as a functional landscape model._ Landscape and Urban Planning.

---

##### 5. Autocorrélation spatiale globale (Indice de Moran)

L’indice de Moran mesure la corrélation spatiale globale des valeurs, indiquant si les valeurs similaires sont regroupées, dispersées, ou distribuées aléatoirement.

- **Utilité** : Tester la présence d’autocorrélation spatiale, détection de clusters ou patterns spatiaux.  
- **Applications** : Compréhension de la structure spatiale à grande échelle, influence possible de processus écologiques.
- **Forces** : Statistique global simple, bien établie.
- **Limites** : Ne localise pas précisément les clusters, sensible à la définition des voisins.

**Seuils d’interprétation** :
- I > 0.6 : forte autocorrélation spatiale (clustering).
- 0.3 - 0.6 : autocorrélation modérée.
- < 0.3 : faible autocorrélation (quasi aléatoire).

> **Sources** :  
> Moran, P.A.P. (1950). _Notes on continuous stochastic phenomena._ Biometrika.  
> Fortin, M.-J., & Dale, M.R.T. (2005). _Spatial Analysis: A Guide for Ecologists._ Cambridge University Press.

---

# Conclusion

Ces indicateurs apportent chacun une information complémentaire sur la composition, la configuration, la fragmentation et la connectivité spatiale dans les données raster étudiées. Leur interprétation combinée permet une compréhension approfondie des patterns spatiaux et des processus écologiques ou environnementaux sous-jacents.

---

Veux-tu que je te prépare ça en format RMarkdown, prêt à intégrer dans un rapport, avec mise en forme bibliographique automatique ?














#### inutile
Via chloe (sur raster CWM) : 

- **NC valid** => NC_hete
- **NC class** => savoir cb de classes
- **NV_2, NV_3, NV_4**	Nombre de pixels dans les classes 2, 3, 4	
- **NC hete** 

- **HET**
- **HET_frag**
Faire histogramme pour comparer les 10 sites ?
**HET ≈ HET-frag**, ça indique que la **diversité vient d’une mosaïque fine (beaucoup de bordures)**



**NC = Nombre de connexions** entre pixels voisins (8 voisins possibles par pixel dans la grille).
Chloe crée visiblement des classes automatiquement (2,3,4 ; la 1 étant visiblelement pas utilisé ou pour les valeurs nulles ?)
NC_X_Y = nb de pixels de classes X et Y qui se touchent 

Par ex : (faut aussi mettre en pourcents) (ntotal issus de NC-valid	Nombre de couples)
	NC_2-2	472	0.00587 (0.59%)
	NC_2-3	345	0.00429 (0.43%)
	NC_2-4	1 130	0.01405 (1.41%)
	NC_3-3	13 953	0.17354 (17.35%)
	NC_3-4	4 499	0.05596 (5.60%)
	NC_4-4	38 578	0.47983 (47.98%)
==NC_hete : Plus le nombre de connexions hétérogènes est élevé, plus le paysage est **fragmenté**, avec de nombreux changements de classe sur l’espace.==
ici NC-hete = 5 974 (7.43%) donc 7,43% des connexions sont entre pixels de classes différentes.   → C’est une mesure de la **fragmentation spatiale** : plus ce chiffre est élevé, plus le paysage est fragmenté, hétérogène. Ici, 7.43% indique une fragmentation modérée.

==- Si paysage très homogène (une seule classe dominante), la majorité des connexions seraient intra-classe, et **NC-hete serait proche de 0**.==
==- Dans un paysage très fragmenté, où les classes sont mélangées en patchs très découpés, **NC-hete serait plus élevé** (parfois 20–30% ou plus).==
==- Ces proportions sont souvent comparées entre sites ou années pour détecter des changements de fragmentation.

Si **HET ≈ HET-frag**, ça indique que la **diversité vient d’une mosaïque fine (beaucoup de bordures)** plutôt que de gros blocs


>[!important] Problèmes ? : 
>**96.3** vient de **données continues avec beaucoup de valeurs uniques**, pas de classes discrètes.
>=> on rediscretise les valeurs par gqis ? fin on reclassifie ? selon combien de classes ? pis pour les quali on fait comment ? 
>=> les rasters que créé chloe sont a giga pixels ? on garde les notres plutot nn ?
>J'ai fait la reclassification en 5 classes par ex => change pas grand chose pour le HET / SHDI etc 
>donc on fait 1px et on garde ce qu'on récup pour ca, on fait pour les 11 buffers et on compare entre ?


>



process_raster <- function(file_path) {
  cat("\n📦 Traitement :", basename(file_path), "\n")
  r <- raster(file_path)
  nom <- basename(file_path)
  
  # Nettoyage de base
  names(r) <- "layer"
  r[r <= 0 | is.infinite(r)] <- NA
  
  # Vérification taille utile
  if (length(values(r)[!is.na(values(r))]) < 100) {
    cat("❌ Trop peu de valeurs valides, raster ignoré\n")
    return(NULL)
  }
  
  cat("→ Résumé raster :\n")
  print(summary(r[]))
  
  ## 1. Variogramme
  cat("🔍 Étape 1 : Variogramme...\n")
  tryCatch({
    cat("→ Conversion en points...\n")
    pts <- as(r, "SpatialPointsDataFrame")
    
    cat("→ Calcul du variogramme...\n")
    vario <- gstat::variogram(layer ~ 1, data=pts, width=20)
    
    cat("→ Ouverture PNG...\n")
    out_file <- paste0(dirname(file_path), "/", tools::file_path_sans_ext(basename(file_path)), "_variogram.png")
    
    png(out_file, width=800, height=600)
    
    cat("→ Plot variogramme...\n")
    plot(vario, main=paste("Variogramme", nom))
    
    dev.off()
    cat("✅ Variogramme généré →", out_file, "\n")
  }, error=function(e) {
    try(dev.off(), silent=TRUE)  # évite crash si png pas ouvert
    cat("⚠️ Échec Variogramme :", e$message, "\n")
  })
  
  
  ## 2. Entropie locale
  cat("🧠 Étape 2 : Entropie locale...\n")
  entropy_fun <- function(x, ...) {
    x <- x[!is.na(x)]
    if (length(x) == 0) return(NA)
    p <- table(x) / length(x)
    -sum(p * log(p))
  }
  ent_r <- focal(r, w=matrix(1,5,5), fun=entropy_fun)
  
  ent_mean <- NA
  tryCatch({
    ent_r <- focal(r, w=matrix(1,5,5), fun=entropy_fun, na.rm=TRUE)
    ent_mean <- cellStats(ent_r, stat='mean')
    writeRaster(ent_r, paste0(file_path, "_entropy.tif"), overwrite=TRUE)
    cat("✅ Entropie calculée\n")
  }, error=function(e) {
    cat("⚠️ Échec Entropie :", e$message, "\n")
  })
  
  ## 3. Texture GLCM
  cat("🧵 Étape 3 : Texture GLCM...\n")
  glcm_contrast <- NA
  tryCatch({
    glcm_r <- glcm(r, window=c(5,5), statistics=c("contrast", "homogeneity", "entropy"))
    glcm_contrast <- cellStats(glcm_r$glcm_contrast, stat='mean')
    writeRaster(glcm_r, paste0(file_path, "_glcm.tif"), overwrite=TRUE)
    cat("✅ GLCM calculé\n")
  }, error=function(e) {
    cat("⚠️ Échec GLCM :", e$message, "\n")
  })
  
  ## 4. Connectivité entre extrêmes
  cat("🔗 Étape 4 : Connectivité (5% extrêmes)...\n")
  cost_top_mean <- NA
  cost_bottom_mean <- NA
  tryCatch({
    vals <- values(r)
    q95 <- quantile(vals, 0.95, na.rm=TRUE)
    q05 <- quantile(vals, 0.05, na.rm=TRUE)
    
    top_pts <- rasterToPoints(r > q95, fun=function(x) x == 1, spatial=TRUE)
    bottom_pts <- rasterToPoints(r < q05, fun=function(x) x == 1, spatial=TRUE)
    
    if (length(top_pts) >= 2 && length(bottom_pts) >= 2) {
      r_clean <- r
      r_clean[r_clean <= 0 | is.na(r_clean)] <- NA
      
      tr <- transition(1 / r_clean, transitionFunction=mean, directions=8)
      tr_corr <- geoCorrection(tr, type="c")
      
      set.seed(42)
      src_top <- top_pts[sample(1:length(top_pts), min(10, length(top_pts))), ]
      src_bot <- bottom_pts[sample(1:length(bottom_pts), min(10, length(bottom_pts))), ]
      
      cost_top <- costDistance(tr_corr, src_top, src_top)
      cost_bot <- costDistance(tr_corr, src_bot, src_bot)
      
      cost_top_mean <- mean(cost_top[lower.tri(cost_top)], na.rm=TRUE)
      cost_bottom_mean <- mean(cost_bot[lower.tri(cost_bot)], na.rm=TRUE)
      
      write.csv(as.matrix(cost_top), paste0(file_path, "_cost_top5.csv"))
      write.csv(as.matrix(cost_bot), paste0(file_path, "_cost_bottom5.csv"))
      cat("✅ Connectivité calculée\n")
    } else {
      cat("⚠️ Pas assez de points valides pour connectivité\n")
    }
  }, error=function(e) {
    cat("⚠️ Échec connectivité :", e$message, "\n")
  })
  
  ## 5. Moran’s I
  cat("📏 Étape 5 : Autocorrélation spatiale (Moran’s I)...\n")
  moran_i <- NA
  tryCatch({
    pts_all <- rasterToPoints(r, spatial=TRUE)
    nb <- dnearneigh(coordinates(pts_all), 0, 20)
    if (length(nb) > 0 && sum(card(nb)) > 0) {
      lw <- nb2listw(nb, style="W")
      moran_i <- moran.test(pts_all$layer, lw)$estimate[1]
      cat("✅ Moran I calculé\n")
    } else {
      cat("⚠️ Pas assez de voisins pour Moran I\n")
    }
  }, error=function(e) {
    cat("⚠️ Échec Moran I :", e$message, "\n")
  })
  
  # Résultats finaux
  res <- data.frame(
    fichier = nom,
    moran_i = moran_i,
    glcm_contrast_mean = glcm_contrast,
    entropy_mean = ent_mean,
    cost_mean_top5 = cost_top_mean,
    cost_mean_bottom5 = cost_bottom_mean
  )
  cat("✅ Résumé des indicateurs OK\n")
  return(res)
}


results <- data.frame()
for (f in tif_files) {
  res <- tryCatch(process_raster(f), error=function(e) {
    cat("❌ Erreur sur", f, ":", e$message, "\n")
    return(NULL)
  })
  if (!is.null(res)) {
    results <- rbind(results, res)
  }
}

write.csv(results, "Documents/Stage M2 CNRS ECOBIO/Vrai bidouillages R/Rasters/Durée floraison/résumé_indicateurs_continu.csv", row.names=FALSE)
cat("\n📁 Résultats exportés dans résumé_indicateurs_continu.csv\n")
