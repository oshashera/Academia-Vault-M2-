
## I]  Objectif

L’objectif de ce TD est de mettre en œuvre la démarche de méta-analyse sur un exemple concret et simple depuis les étapes d’analyse graphique des données et d’étude du méta-dispositif jusqu’aux analyses post ajustement.
Le TD reposera sur un jeu de données de 6 publications et 21 groupes d’animaux.

## II] Mise en œuvre

<p align="justify">La base de données proposée contient les résultats de 6 publications (7 expérimentations) relatives à l’effet des teneurs en MAT des aliments chez les porcs en croissance sur les teneurs en azote ammoniacal dans le lisier en début de stockage. L’objectif du travail est d’établir une équation de prédiction de la teneur en azote ammoniacal (TAN) du lisier de porc en début de stockage. Cette équation de prédiction permet, dans un modèle complet, d’estimer les émissions d’ammoniac en production porcine. Pour cela, on a renseigné différentes variables dans la base de données, des variables relatives à la composition des aliments, et des variables relatives à la composition du lisier. Pour plus de simplicité, la base de données est limitée aux expérimentations concernant les lisiers issus de porcs en croissance – engraissement d’au moins 50 kg.</p>
____
MAT = Matières Azotées Totales 

Essayer de prédire via MAT aliment le MAT lisier ==> réduire AMMONIAC lisier sans réduire performance de l'atelier porcin
Faire lien entre MAT aliment et taux Ammo du lisier


BDD =>

| NameAuthor         | Year                    | PublicationCode           | ExperimentCode        |
| ------------------ | ----------------------- | ------------------------- | --------------------- |
| **ExperimentName** | **TreatmentCode**       | **Sex**                   | **GroupSize**         |
| **WaterSupply**    | **CrudeFibre_g_kgfeed** | **CrudeProtein_g_kgfeed** | **BWi_kg**            |
| **BWf_kg**         | **Duration_d**          | **ADG_kg_d**              | **FCR_kg_kg**         |
| **DMI_kg_d**       | **StorageTime_d**       | **StorageTemp_D**         | **TotalN_g_kgSlurry** |
| **pH**             | **TAN_g_kgslurry**      |                           |                       |
ADG = average daily gain

___
#### 1. Prédiction de TAN (gN/kg) : Méta-analyse pas-à-pas avec la var. explicative 1 (avec l’enseignant)

>[!question] a. Examiner les relations entre la variable d’intérêt TAN (gN/kg lisier frais) et les variables explicatives potentielles. Pour cela, réalisez le graphe des relations intra- expérimentation Y=f(variable explicative). Qu’en déduisez-vous sur la ou les variables explicatives à retenir ?
>>[!tldr] Réponse
>>![[Pasted image 20240911102657.png|center|800]]
>>Var d'explication ouii : ==Crude protein, TotalN_g_kgSlurry, pH==
>>Var bof : Crude fibre, FCR
>>Var nul : BWi, BWf, duration_d, DMI, ADG, Storage time, Storage temp, => surtout parce que pas de corr/var avec variable à expliquer et que pas de variation intra expé (ligne verticale)

___
>[!question] b. Pour la variable explicative 1, Quelle est selon vous la forme de la courbe à ajuster ? linéaire ? curvilinéaire ? exponentielle ? Quel est le type de modèle à ajuster ?
>>[!tldr] Réponse
>>![[Pasted image 20240911085116.png|center|350]]
>>Si on omet l'étude 7, ca ressemble quand même beaucoup à une relation linéaire, et l'étude 7 seule ne devrait pas nécessairement changer cela

___
>[!question] c. Ecrivez le modèle statistique à ajuster pour chacune des variables dépendantes - Quels sont les effets fixes et les effets aléatoires ? Ajustez le modèle – Vérifiez la normalité des résidus - que pensez-vous du résultat ?

>[!tldr] Réponse
>Variables fixes : TotalN_g_kgSlurry (azote total du lisier, pas explicatif, sert à rien, ==CrudeProtein_g_kgfeed==, pH (non car pH du lisier, revient au même)
>Variable aléatoire : ExperimentCode
>Modèle : Y<sub>ij</sub>=> lmer(TAN ~ CrudeProt + (1+CrudeProt|VarAlea),data=BDD, REML=TRUE, weights=GroupSize) ==> on teste pour les 3 (même si pH on se doute que meh)
>```r 
> summary(TAN_g_kgslurry.model)
>Linear mixed model fit by REML ['lmerMod']
>Formula: TAN_g_kgslurry ~ CrudeProtein_g_kgfeed + (1 + CrudeProtein_g_kgfeed |      ExperimentCode)
>Data: BDD
>
>REML criterion at convergence: 64
>
>Scaled residuals: 
>     Min       1Q   Median       3Q      Max 
>-1.22394 -0.36778 -0.09825  0.33789  1.54355 
>
>Random effects:
> Groups         Name                  Variance  Std.Dev. Corr 
 >ExperimentCode (Intercept)           2.4194032 1.55544       
>                CrudeProtein_g_kgfeed 0.0001157 0.01075  -0.17
> Residual                             0.2346489 0.48441       
>Number of obs: 21, groups:  ExperimentCode, 7
>
>Fixed effects:
>                       Estimate Std. Error t value
>(Intercept)           -0.547820   0.979911  -0.559
>CrudeProtein_g_kgfeed  0.031415   0.006697   4.691
>
>Correlation of Fixed Effects:
>            (Intr)
>CrdPrtn_g_k -0.691
>optimizer (nloptwrap) convergence code: 0 (OK)
>unable to evaluate scaled gradient
>Model failed to converge: degenerate  Hessian with 1 negative eigenvalues
>```
> normalité ==> cf question suivante




___
>[!question] d. Calculez les valeurs des statistiques de diagnostic et faites-en des graphes - Quelles sont les observations qu’il faudrait éliminer ? Pourquoi ?
>>[!tldr] Réponse

>>hasta la normalita dos residas
>>![[Pasted image 20240911110941.png|center|300]]
>>=> données aberrantes bcp trop éloignée (graph de gauche)
>>```r
>>resid(TAN_g_kgslurry.model)
>>           1            2            3            4            5 
>> 0.747703994 -0.186989499 -0.561682992 -0.001712951  0.010297704 
>>           6            7            8            9           10 
>>-0.097691640  0.022502259 -0.047676683 -0.047592971  0.313208544 
>>          11           12           13           14           15 
>>-0.389204066  0.198595352 -0.083330905  0.017305626 -0.219214647 
>>          16           17           18           19           20 
>>-0.178152687  0.163675056 -0.121804014 -0.592885798  0.520095605 
>>          21 
>> 0.534554713
>>```
>>c'est l'observation \[1] qui a la plus grande valeur de résidu (0.7), loin de toute les autres observations.
>>![[Pasted image 20240911111344.png|center|300]]
>>graph du modèle
>>
>>```r
>>fitted(TAN_g_kgslurry.model)
>>       1        2        3        4        5        6        7        8 
>>6.422296 5.536989 4.651683 3.141713 2.599702 2.057692 4.297498 3.177677 
>>       9       10       11       12       13       14       15       16 
>>1.967593 5.286791 3.789204 1.363405 1.808331 2.407694 2.709215 3.498153 
>>      17       18       19       20       21 
>>4.406325 7.011804 7.082886 6.229904 6.265445
>>```
>> fitted du model
>> ![[Pasted image 20240911111644.png|center|300]]
>> graph du TAN en f(x) fitted 
>>![[Pasted image 20240911112046.png|center|300]] 
>>LET HIM COOK (le 7 pue la mort)
>>==cook fait modèle sans 1 des modalités et check la distance/diff ---> grande différence = grandre distance (visuellement)==
>>```r
>>> dfbetas(TAN_g_kgslurry.infl)
  (Intercept) CrudeProtein_g_kgfeed
1 -0.09906233            0.60463623
2  0.30569597           -0.29821685
3  0.31636582           -0.28615263
4 -0.40426321            0.26733327
5  0.46112380           -0.60211001
6  0.24953996           -0.07162383
7  2.57058785           -0.99443826
>>```
>>![[Pasted image 20240911113553.png|center|300]]
>> graph des dfbeta? ==> effet des expérimentations sur l'intercept et sur la pente (le 7 fait encore MEUCH)
>>
>>![[Pasted image 20240911113630.png|center|300]]
>> calcul pour chaque observation de chaque expé, et la valeur des résidus standardisés externes (script custom importé)
>> on regarde pour idenifier données potentiellement aberrante (suppression ou non) => la majorité des résidus sont dans \[-2;2] et 2 expés (1 & 7) pour lesquelles les résidus studentisés sont au dessus. On retrouve donc ENCORE l'expérimentation 7 qui a donc un probable soucis
>>![[Pasted image 20240911113705.png|center|300]]
>>le 7 fout la merrrdeuuuh



>[!question] e. Ré-ajustez le modèle après retrait des observations identifiées comme aberrantes et influentes. Vérifiez la normalité des résidus.
>>[!tldr] Réponse
>>
>>==tout refaire avec l'expe 7 en moins !!!==

___
>[!question] f. Que pensez-vous du modèle ajusté ? Quels critères d’évaluation ? Faites le graphe de la variable dépendante en fonction de la variable explicative avec la courbe du modèle et les observations corrigées de l’effet expérimentation. Calculer le R² ajusté et le RMSE du modèle établi.
>>[!tldr] Réponse
>>


#### 2. Prédiction de TAN (gN/kg) : Méta-analyse pas-à-pas avec la var. explicative 2 (en binôme)

>[!question] a. Pour la variable explicative 2, Quelle est selon vous la forme de la courbe à ajuster ? linéaire ? curvilinéaire ? exponentielle ? Quel est le type de modèle à ajuster ?
>>[!tldr] Réponse

____
>[!question] b. Ecrivez le modèle statistique à ajuster pour chacune des variables dépendantes - Quels sont les effets fixes et les effets aléatoires ? Ajustez le modèle – Vérifiez la normalité des résidus - que pensez-vous du résultat ?
>>[!tldr] Réponse

___
>[!question] c. Calculez les valeurs des statistiques de diagnostic et faites-en des graphes - Quelles sont les observations qu’il faudrait éliminer ? Pourquoi ?
>>[!tldr] Réponse

___
>[!question] d. Ré-ajustez le modèle après retrait des observations identifiées comme aberrantes et influentes. Vérifiez la normalité des résidus.
>>[!tldr] Réponse

___
>[!question] e. Que pensez-vous du modèle ajusté ? Quels critères d’évaluation ? Faites le graphe de la variable dépendante en fonction de la variable explicative avec la courbe du modèle et les observations corrigées de l’effet expérimentation. Calculer le R² ajusté et le RMSE du modèle établi.
>>[!tldr] Réponse



#### 3. Comparaison des modèles obtenus avec variable explicative 1 et variable explicative 2

>[!question] Construisez le tableau de comparaison des deux lois de réponse. Quel est la loi de réponse finale retenue ?
>>[!tldr] Réponse








