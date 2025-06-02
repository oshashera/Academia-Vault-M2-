
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

