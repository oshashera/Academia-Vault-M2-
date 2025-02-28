

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





>>[!quote] Park Y, Guldmann J-M (2020) Measuring continuous landscape patterns with Gray-Level Co-Occurrence Matrix (GLCM) indices: An alternative to patch metrics? Ecological Indicators 109:105802. [https://doi.org/10.1016/j.ecolind.2019.105802](https://doi.org/10.1016/j.ecolind.2019.105802)






Metrics existing (all kinds)

| Metric                   | Description                                                                                                                                                                                                                           |
| ------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| LPI -largest patch index | The largest patch index is an '**Area and edge metric**'. It is the percentage of the landscape covered by the corresponding largest patch of each class i. It is a simple measure of dominance.                                      |
| PLAND                    | PLAND is an 'Area and edge metric'. It is the percentage of the landscape belonging to class i. It is a measure of composition and because of the relative character directly comparable among landscapes with different total areas. |
|                          |                                                                                                                                                                                                                                       |
















parasitoides => hanna (identification à attendre)
pollinisateurs => hanna (identification à attendre)
araignées => hanna a (à vérif ident)
plantes => hanna a
mollusques (limaces/escargots) => annegret ?

carabes
pucerons
staphylins
