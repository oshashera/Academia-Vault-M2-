
Données : Rapsodyn
Envirotypage dans un réseau d'essai afin d'identfier les déterminants génétiques impliqués dans la plasticité du rendement chez le colza.

11 Environnements
3 Rep
3 Traits (yield, pmg, et sn)
173 génotypes
2 conditions azotées


Par groupe : comment est structuré le jdd => en déduire 1/2 question biologique => comment les analyser ? (lmm) => script r commenté pour tout (comment, pourquoi) + faire un ppt pour présenter ca vendredi
10 min oral.


sur R j'ai un jdd avec une colonne contenant le génotype, une pour l'environnement, une pour la répétition, une contenant soit SY,SN ou TSW, et une colonne avec la valeur associée (à SY,SN ou TSW).
Il faudrait que pour une rep, une environnement, un génotype, on crée des colonnes SY,SN et TSW avec les valeurs correspondantes.,SN et TSW avec les valeurs correspondantes.



anylibs (packages)


#### Interprétation

**(Intercept)** : Représente la valeur moyenne du rendement (SY) pour le groupe de référence
**GENOTYPEB** : Ce coefficient montre l'effet du changement de génotype de A à B sur le rendement lorsque le niveau d'azote est bas. Si la valeur est positive, cela signifie que GENOTYPE B augmente le rendement par rapport à GENOTYPE A pour un niveau bas de NITROGEN
**Signification des interactions** : Une interaction significative montre que l'effet de NITROGEN dépend du GENOTYPE.

**Std. Error** : L'erreur standard des coefficients. Plus cette valeur est faible, plus l'estimation est précise

```r
Fixed effects: SY ~ GENOTYPE + NITROGEN + GENOTYPE * NITROGEN Value Std.Error DF t-value p-value 
(Intercept) ... ... ... ... ... 
GENOTYPEB ... ... ... ... ... 
NITROGENN2 ... ... ... ... ... 
GENOTYPEB:NITROGENN2 ... ... ... ... ...
```

____


**(Intercept)** : Cette variance représente la variabilité entre les environnements. Une valeur élevée de `StdDev` (écart-type) signifie que les rendements varient significativement entre les environnements.
**Residual** : Il s'agit de l'erreur résiduelle ou de la variabilité qui n'est pas expliquée par les effets fixes ni par les effets aléatoires. Plus cette valeur est faible, plus le modèle est performant pour expliquer les données.

```r
Random effects:
 Formula: ~1 | ENV
        (Intercept) Residual
StdDev:    5.511702 3.308446
```

___
- **AIC et BIC** : Ce sont des critères basés sur la vraisemblance du modèle et la complexité. Un AIC/BIC plus bas indique un meilleur ajustement du modèle en tenant compte de la pénalité pour le nombre de paramètres.
    
- **logLik** : La log-vraisemblance est une mesure de la probabilité que les données soient observées sous le modèle donné. Plus la log-vraisemblance est élevée, mieux c'est.
```r
Linear mixed-effects model fit by REML
  Data: pasNA 
      AIC      BIC    logLik
  11752.7 13698.84 -5528.349
```

MAIS
faudrait un autre modèle pour comparer ces critères
