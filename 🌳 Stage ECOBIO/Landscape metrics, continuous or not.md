

> [!list] (Article) **Landscape Metrics: Past Progress and Future Directions**
>
>
Landscape ecology through PMM has limitations ^["Recent research recognizes some limitations of the patch-mosaic model (PMM), including the landscape metrics based on it, for capturing landscape heterogeneity and measuring functionality. Collapsing land cover information into nominal classes complicates identification of ecologically meaningful relationships and effective management."] 
Metrics can be limiting or confusing ^["Contributing to these uncertainties, the scale dependency of many metrics across both grain (i.e., resolution) and study area extent confounds relationships between ecological processes and spatial patterns"] 
Our main mean of studying heterogeneity is processing this heterogeneity with issues ^["Underlying these issues remains the simple fact that conventional landscape metrics are built on the patch-mosaic model (PMM), which simplifies landscapes into a mosaic of discrete patches that may not adequately capture ecological heterogeneity"]
Rise of environmental gradient lenses, not without critiques too^["One stream within the literature advocates conceptualizing the landscape as an environmental gradient [29–34], the patterns of which can be quantified through alternate surface metrics that measure heterogeneity in gradient datasets [35]. However, this gradient surface model (GSM) is not without critique"]
Conventional landscape metrics *vs* surface metrics (gradient)^["One stream within the literature advocates conceptualizing the landscape as an environmental gradient [29–34], the patterns of which can be quantified through alternate surface metrics that measure heterogeneity in gradient datasets [35]. However, this gradient surface model (GSM) is not without critique"]
Older/first indices & metrics based on **information theory** and **fractal geometry**^["seminal paper “Indices of landscape pattern”, which developed three new metrics based on information theory and fractal geometry"]
Then refined into measures of **fragmentation, aggregation** and **connectivity** and specific measures for **interspersion**^[<u>Interpersion </u>: degree of intermixing between plants of different species], **juxtaposition** and **patch cohesion**^["refined the existing suite of metrics to better capture heterogeneity through new measures of fragmentation [41], aggregation [42], and connectivity" "as well as specific measures for interspersion and juxtaposition [44], and patch cohesion"]
Also issues of redundancy/correlation of metrics ?^[The growing number of available indices created new challenges for landscape ecologists in the form of correlation and redundancy.]
Limits of classical landscape approach : reliability issues of remote sensing for land-cover assessment^["researchers began recognizing that the data used to compute landscape metrics (e.g., land cover maps derived from remotely sensed imagery) were not always accurate."]
Limits of metrics due to data quality, scale, etc...^["Perhaps most importantly though, these discussions sparked broader recognition that landscape metric behavior can change according to data quality, classification error, and scale, including both grain and study area extent."]=> gradient (continuous) would less be affected by scale changes ? *hold the thought*
Can we link landscape metrics to ecological processes ?^["linking landscape metrics with ecological processes was outlined as a key research priority for landscape ecologists nearly 15 years ago [10] and remains an essential focus of current and future research"] not my aim but interesting thought for the discussion / EdlA
==[skipped the"limitations of conv landsc metrics, **A CHECK PLUS TARD** + section of graph theory use]==
>
PPM--> GSM needed for better integration of heterogeneity ?^["Moving beyond the PMM, gradient approaches have been promoted in ecology since Gleason [85] questioned whether categorical vegetation typologies were consistent with real world heterogeneity."]
BUT can't analyze with PMM tools/metrics bc not discrete^["A dilemma (or opportunity, depending on perspective) for landscape ecologists is that gradient surfaces do not have discrete boundaries and therefore cannot be analyzed using conventional landscape metrics and software packages"]
Thus : surface metrics (initially from microscopy and molecular physics, adapted to ecology)^["A new form of metrics—surface metrics—has been introduced for landscape ecologists to quantify heterogeneity of continuous gradient surfaces [35]. Surface metrics are founded on methods for quantifying three-dimensional surfaces from microscopy and molecular physics [89], and have recently been adapted for landscape analyses"]
![[Pasted image 20250228113623.png]]
*Makes me wonder : comparaison of a) with b) and c) makes it very clear that PMM fails in that it categorize to broadly/generalize to much. In comparison, GSM allows for a continuous (thus theoratically infinite) range of values, thus encompassing heterogeneity better. But in reality, wouldn't any organism (or us), while theoretically evolving in a “continuous” world only be able to sense/make decision on a very precise, but nevertheless discrete understanding of the world? Organism probably can't have, and even discern perfect precision, so then rise the question : to what extend of precision should we aim for when studying nature/biodiversity?*
>
Researchers are testing whether the *patterns we see in landscapes at different scales* are just because the *way we measure them changes with scale*, or *if there are real*, important features in the landscape that are being captured^["Researchers have begun testing whether observed landscape patterns across scales are simply manifestations of the basic scale-dependency of metrics, or whether there may be intrinsic characteristics of the landscape patterns being captured"]
Could continuous landscape allow for keeping heterogeneity though scale/grain change ? Like a vectorial drawing doesn't loose quality if you zoom or dezoom?^["Researchers have tested the power of conventional landscape metric scaling functions to predict metrics at finer grain sizes through a variety of downscaling methods [17, 18, 106–109]. However, the general consensus has been that prediction power is poor, with the loss of heterogeneity during grain size transformation (e.g., majority rules aggregation) cited as a major factor inhibiting progres"]
>
>>[!quote] Frazier AE, Kedron P (2017) ==Landscape Metrics: Past Progress and Future Directions==. Curr Landscape Ecol Rep 2:63–72. [{https://doi.org/10.1007/s40823-017-0026-0](https://doi.org/10.1007/s40823-017-0026-0) 

>[!info] **Measuring continuous landscape patterns with Gray-Level Co-Occurrence Matrix (GLCM) indices: An alternative to patch metrics?**
>
>Limits of (promising) continuous approach : lack of measures to quantify these representations^["While a continuous representation of landscape structure has great potential as a realistic alternative to traditional patch-based models, its empirical merits have been limited by the lack of measures for quantifying patterns from such continuous surface."]
>Comparison of Gray-Level Co-Occurence Matrix indices vs Landscape Metrics (from PMM ig?)^["This paper examines the utility of Gray-Level Co-Occurrence Matrix (GLCM) indices as spatial metrics applied to the landscape level for measuring underlying spatial properties. Eight GLCM indices (contrast, dissimilarity, homogeneity, energy, entropy, mean, variance, correlation) are compared to most commonly used 18 landscape metrics (LMs) featuring landscape composition, aggregation, dominance, dispersion, and shape complexity, with an application to urban tree canopy landscape."]
Discrete oversimplifies, both with limited categories, and because *its resolution allows for the possibility of wrongful categorization due to oversimplification*^["The probability of error increases as the pixel size of a map becomes larger, since exclusive labeling will oversimplify the heterogeneity within the pixel, which may then include varying amounts of ground objects"]
Use of percentage/proportions/ratios in continuous / gradient approaches^["This gradient is defined as a continuous surface where the value of each pixel (i.e. raster) is on a continuum, such as a normalized index, surface elevation, land-use intensity, or percentage. For example, a normalized difference in vegetation index (NDVI) map represents the overall greenness or vegetation intensity within each pixel, with the index ranging from −1 (no greenness) to +1 (complete greenness)."]
But that's for making maps, we need metrics/measures to quantify those landscapes^["Despite the proliferation of continuous maps, there are only few measures developed so far that quantify continuous landscape characteristics"]
Autocorrelation indicators from continuous maps ?^["As the autocorrelation indicators are computed on a continuous map"]
**Analogy between PMM and GSM characteristics ?**^["First, there is a significant and robust analogy between landscape characteristics extracted from continuous landscape models and from patch-based categorical models. This is mainly because the textural properties of the landscape are fundamentally reflections of the configuration of the objects in the landscape."]
GLCM has limits though^["GLCM indices are significant in predicting composition and aggregation of a landscape, heterogeneity in patch size, large patch dominance, landscape homogeneity, and dispersion of small patches. They have little relevance in predicting patch shape complexity"]
>>[!quote] Park Y, Guldmann J-M (2020) Measuring continuous landscape patterns with Gray-Level Co-Occurrence Matrix (GLCM) indices: An alternative to patch metrics? Ecological Indicators 109:105802. [https://doi.org/10.1016/j.ecolind.2019.105802](https://doi.org/10.1016/j.ecolind.2019.105802)

>[!info] (Book Chapter 22) **Gradient Analysis and Surface Metrics for Landscape Ecology** 
>
> ==Why do we need to go from PMM to GSM :== *"In landscape ecology, spatial pattern analysis is primarily conducted using landscape metrics designed to examine **categorical land cover datasets that can be segmented into discrete areas of homogenous coverage**. However, this approach to landscape analysis may be **inconsistent with many ecological theories which emphasize the continuous, gradient nature of ecological phenomena**. To address this challenge, researchers are beginning to develop an alternative **gradient surface model, which represents the landscape as a continuous environmental gradient by using ratio** rather than categorical data to capture landscape heterogeneity."*
>But GSM limited to not using conventional Landscape Metrics (LM)^["While the gradient surface model is capable of capturing more landscape heterogeneity, the lack of discrete boundaries between land covers makes it impossible to summarize composition and spatial configuration using conventional landscape metrics"] but has some pros compared to PMM, mainy ecological theory consistance ^["despite its ubiquity, the PMM neglects the continuous gradient nature of many ecological phenomena and can, therefore, be inconsistent with ecological theory"], notably because it looses information^["Categorical land cover maps collapse intra-pixel heterogeneity, resulting in the loss of potentially relevant ecological information"]
>Potential comparisons between PMM and GSM values for comp/conf het ?^["Specifically, a new brand of metrics for quantifying composition and configuration in landscapes—surface metrics—are evaluated for a set of ecoregions and scales, and their values are compared to traditional landscape metrics to identify analogues between the surface and patch-mosaic paradigms"]
>There needs to be precautions when using those metrics bc of redundancy^["Second, like many traditional landscape metrics, surface metrics also suffer from redundancy and correlation because they share common statistical foundations, which can create confusion, misdirected effort, and erroneous conclusions."]
>GSM use ratio instead of categorical data^["Gradient surface models represent the landscape as a continuous environmental gradient by using ratio rather than categorical data to capture a greater degree of landscape heterogeneity (Frazier and Kedron 2017a)"]
>**"one major limitation is that these models lack discrete boundaries between land cover classes, making it impossible to summarize composition and spatial configuration using conventional landscape metrics"**
>"amplitude metrics measure variation in surface “height”, where height refers to the magnitude of the value of interest. Several metrics in this category summarize conventional aspects of the statistical distribution of values (e.g., mean, skewness, etc.). **These metrics quantify the composition of the landscape variable but do not measure configuration**" 
>"Applied to an ecological variable such as elevation, amplitude metrics could statistically summarize the **distribution** of elevation values across the landscape (Sa, Sq)"
>Check Fan (2014) for quantification of comp/conf in gradient landscape^["For example, Fan and Myint (2014) identified relationships between a series of landscape metrics and statistical measures of spatial autocorrelation computed using three vegetation indices. While the spatial autocorrelation measures used in their analysis were not derived from microscopy or surface metrology, they did quantify landscape composition and configuration in a gradient surface, which is the ultimate goal of surface metrics"] 
>>[!quote]  Kedron P, Frazier AE (eds) (2019) Current Trends in Landscape Research. Springer International Publishing, Cham (chapter 22)


 >[!important] From "current trends in lanscape..."
>
>
**Métrique d'amplitude**
"For example, amplitude metrics measure variation in surface “height”, where height refers to the magnitude of the value of interest. Several metrics in this category summarize conventional aspects of the statistical distribution of values (e.g., mean, skewness, etc.). ==*These metrics quantify the composition of the landscape variable but do not measure configuration*=="
>
>
| Symbol | Name                       | Description                                                                                                      |
| ------ | -------------------------- | ---------------------------------------------------------------------------------------------------------------- |
| Sa     | Average roughness          | Average absolute deviation of surface heights from mean                                                          |
| Sq     | Root mean square roughness | Standard deviation of surface heights                                                                            |
| Sp     | Maximum peak height        | Highest value                                                                                                    |
| Sv     | Maximum valley depth       | Lowest value                                                                                                     |
| S10z   | Ten-point height           | Avg. height above mean surface for five highest local maxima plus avg. height below for five lowest local minima |
| Ssk    | Surface skewness           | Asymmetry of surface height distribution                                                                         |
| Sku    | Surface kurtosis           | Peakedness of surface distribution                                                                               |
**Spatial metrics**
"==*The metrics in the spatial metrics category measure aspects of spatial configuration of the measured variable*=="
>
>
| Symbol        | Name                            | Description                                                                                              |
| ------------- | ------------------------------- | -------------------------------------------------------------------------------------------------------- |
| Scl20, Scl37  | Correlation length 20 and 37%   | Horizontal distance of areal autocorrelation function that has fastest decay to 20% and 37% respectively |
| Sds           | Summit density                  | Number of local peaks per area                                                                           |
| Sfd           | Fractal dimension               | Calculated for different angles of angular spectrum by analyzing Fourier amplitude spectrum              |
| Srw           | Dominant radial wavelength      | Dominating wavelength found in radial Fourier spectrum                                                   |
| Srwi          | Radial wavelength index         | Relative dominance of Srw over other radial distances                                                    |
| Std           | Dominant texture direction      | Angle of dominating texture calculated from Fourier spectrum                                             |
| Stdi          | Texture direction index         | Relative dominance of Std over other directions of texture                                               |
| Str20, Str 37 | Texture aspect ratio 20 and 37% | Ratio of fastest to slowest decay to correlation 20% and 37%, respectively, of autocorrelation function  |
**Hybrid metrics**
"The metrics in the *hybrid metrics category measure both amplitude and spatial arrangement* and include measures such as the ratio of “vertical” to horizontal slope change (Sdq and Sdq6) as well as second-derivative measures curvature (Ssc) and the surface area ratio (Sdr) of an environmental gradient. An ecological application of the hybrid metric Sdq (slope) for a forest canopy cover gradient surface could provide an indication of the severity of change in canopy cover in certain areas of the landscape. Areas with abrupt change would have high Sdq values while areas with gradual transitions would present low Sdq values."
>
| Symbol | Name                        | Description                                                               |
| ------ | --------------------------- | ------------------------------------------------------------------------- |
| Sdq    | Root mean square slope      | Variance in local slope across surface                                    |
| Sdq6   | Area root mean square slope | Similar to Sdq but includes more neighbors in slope computation           |
| Sdr    | Surface area ratio          | Ratio between surface area to area of flat plane with same x,y dimensions |
| Ssc    | Mean summit curvature       | Average principal curvature of local maximas on the surface               |
**Abbott curve metrics**
"The Abbott curve, which is also known as the Abbott-Firestone curve or the bearing area curve, is the cumulative probability density function of the surface profile’s height" "These metrics are based on an inversion of the cumulative height distribution histogram and summarize the prevalence of 3D spaces (pits and valleys) across the landscape (Sci, Svi). For example, in a surface that represents the percent forest cover in each pixel, the structure of the Abbott curve could indicate whether a landscape has pockets of remnant forest in an otherwise clear agricultural landscape, or, conversely, it could indicate the degree of forest closure after a logging effort."
>
| Symbol | Name                              | Description                                                                                               |
| ------ | --------------------------------- | --------------------------------------------------------------------------------------------------------- |
| Sbi    | Surface bearing index             | Ratio of Sq to height from top of surface to height at 5% bearing area                                    |
| Sci    | Core fluid retention index        | Area above Abbott curve in the core zone                                                                  |
| SdcX_Y | Height difference of Abbott curve | Height intervals of the Abbott curve: 0-5, 5-10, 10-50, and 50-95                                         |
| Sk     | Core roughness depth              | Height difference between the intersection points of the found least mean square line in the Abbott curve |
| Spk    | Reduced peak height               | Height of upper left triangle in Abbott curve                                                             |
| Svk    | Reduced valley depth              | Height of triangle drawn at 100% in Abbott curve                                                          |
| Svi    | Valley fluid retention index      | Area above Abbott curve in "valley" zone                                                                  |
>![[Pasted image 20250303155725.png]]
>![[Pasted image 20250303155753.png]]
>**Considerations**
>- [!] Like PMM metrics, GSM metrics do have redundancy (beware!)
>- [!] Consideration of scale (extent and grain/resolution) => loss of information due to aggregation = unstable/unusable surface metrics
>- [!] No 1-to-1 analogue of PMM metrics, only somewhat similar ones at best. Especially hard to find analogues for *configuration* surface metrics.
>- [!] Potential new information/perspective than PMM so, why do we need to compare them ? *==**DISCUSS THAT IN  REPORT**==*




Aller check : While surface metrics have been applied in several ecological contexts including flood plains (Scown et al. 2015), habitat connectivity (Moniem and Holland 2013), topography (Zhang et al. 2018), forests (Frazier 2016), and urban areas (Wu et al. 2017)


Metrics existing (all kinds)

| Metric                   | Description                                                                                                                                                                                                                                   | Src                                                                           | type |
| ------------------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ---- |
| LPI -largest patch index | The largest patch index is an '**Area and edge metric**'. It is the percentage of the landscape covered by the corresponding largest patch of each class i. It is a simple measure of dominance.                                              | [https://r-spatialecology.github.io /landscapemetrics /reference /index.html] | Cl   |
| PLAND                    | PLAND is an '**Area and edge metric'**. It is the percentage of the landscape belonging to class i. It is a measure of **composition** and because of the relative character directly comparable among landscapes with different total areas. | [https://r-spatialecology.github.io /landscapemetrics /reference /index.html] | Cl   |
| SHDI                     | Diversité des occupations du sol, formule de la<br>diversité de Shannon                                                                                                                                                                       | Chloe manuel d'utilisation                                                    | Cl   |
| SHEI                     | Proportion de nombre de valeurs de la valeur au<br>centre de la fenêtre                                                                                                                                                                       | Chloe manuel d'utilisation                                                    | Cl   |
| SIDI                     | Valeur majoritaire dans la fenêtre (nb)                                                                                                                                                                                                       | Chloe manuel d'utilisation                                                    | Cl   |
| SIEI                     | Uniformité de Simpson                                                                                                                                                                                                                         | Chloe manuel d'utilisation                                                    | Cl   |
| HET                      | Hétérogénéité de Baudry-Bure                                                                                                                                                                                                                  | Chloe manuel d'utilisation                                                    | Cl   |
| Het-agg                  | Indice d’hétérogénéité de composition : diversité<br>pour les couples homogènes                                                                                                                                                               | Chloe manuel d'utilisation                                                    | Cl   |
| Het-frag                 | Hétérogénéité de fragmentation de Baudry-Bure                                                                                                                                                                                                 | Chloe manuel d'utilisation                                                    | Cl   |
|                          |                                                                                                                                                                                                                                               |                                                                               |      |

==**r landscapemetrics package**== [[https://r-spatialecology.github.io/landscapemetrics/reference/index.html]]
library terra à check aussi 
Mais que pour du PMM

>[!question] Est ce que pour connectivité on pourrait avoir des "chemins de moindre résistance" entre différents ilots/hotspots ? comment le faire ? Via Dijkstra's ou A* (dérivé)? ==**à check**== **avec du mouvement unidirectionnel (diagonales inclues donc)**



>[!info] From "A Comparison of Discrete and Continuous Metrics for Measuring Landscape Changes"
>Spatial het is very important for management^["The estimation of spatial heterogeneity in a correct way and scale according to the species and process under study is an important challenge in studying and managing landscapes"]
>
>




>[!quote] Rahimi E, Barghjelveh S, Dong P (2022) A Comparison of Discrete and Continuous Metrics for Measuring Landscape Changes. J Indian Soc Remote Sens 50:1257–1273. [https://doi.org/10.1007/s12524-022-01526-7](https://doi.org/10.1007/s12524-022-01526-7)




parasitoides => hanna (identification à attendre)
pollinisateurs => hanna (identification à attendre)
araignées => hanna a (à vérif ident)
plantes => hanna a
mollusques (limaces/escargots) => annegret ?

carabes
pucerons
staphylins
