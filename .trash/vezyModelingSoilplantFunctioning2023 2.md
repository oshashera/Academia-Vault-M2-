#

Demande grandissante de changement agroéco => benefs de l’intercropping potentiels, mais difficile à prédire/modéliser simplement, surtout en tenant compte des var. en fx de l’env et des pratiques agri.

Besoin de simuler surtout des process important tels que le dev, l’interception de la lumière, la croissance, les balances/niveaux en N et en eau, et la formation du rendement en fonction des pratiques de gestions, des conditions de sol et du climat.

!! Leur modèle est régulier et fiable sur un grand panel d’intercrop d’hiver et de printemps (nRMSE (normalised Root Squared Mean Error => indicateur d’erreur stat) à 25% pour max leaf area index, 23% pour biomasse aérienne à date de récolte et 18% pour le rdt)

  
Choix de stics pcq simple à utiliser et paramétrer et suffisamment générique & précis.

=> faire du pre-screening numériquement

Monocrop => intercrop :

- rédu en ferti
- Meilleur résistance sécheresse/maladies
- Meilleure productivité
- Suppression adventices, ravageurs, maladies
- Meilleur séquestration C

MAIS : doivent avoir complémentarité & facilitation pour outperform monocrop compé.

Difficile de modéliser ca pcq difficile de créer de nouveaux formalismes génériques qui tiennent comptent des interactions pour tous les processus, **tout en gardant le nombre de parametres bas et simple a mesurer & rapide à compute.**

Y a déjà eu des essai mais pas fructueux

STICS plutot bon en général mais qqc inconsistances parfois (i.e. pb pour calculer la compet pour lumière car mauvaise modélisation de la hauteur de la plante) + divergences avec données observées dans DB.

==> **STICS a besoin d’upgrades avant d’être utilisé de manière fiable pour des simulations**

Probablement par besoin d’updater certains formalismes (comme celui de la light interception basé sur un formalisme d’il y a 20 ans)

## M&M

**STICS** : dynamique, 1D soil/crop model

Crop dev + growth + yield formation w. C,N, H2O, energy cycles du system

Daily time step

Imput data of climate, crop sp, soil, agri manag., + état d’initialisation (i.e. eau/N dans chaque horizon)

Plante représentée comme ensemble organes avec stage dev, biomass, N content.

### Modifs à stics :

**Transfert radiatifs** => version simplifiée d’une projection 3D, ici pour intercrop, interception lumière calculée itérativement pour chaque plante en utilisant la lumière transmise sans savoir la forme de l’autre culture.

**Loi de Beer-Lambert** => nouveau formalisme qui remplace le radiatif transfer quand canopées cultures mixées

**Effet de la densité des plantes** :

Plus y a de densité, moins y a de croissance, mais pour les multi-sp on fait pareil pour l’intra sp (pour chaque row d’sp), et ensuite on fait pareil avec la densité estimée de l’intercrop (pas clair)

“conceptually a sole crop can be viewed as an intercrop of a crop with itself”

**Traits des plantes et dimensions** : hauteur de canopée faite avec LAI des sole crops auparavant mais mtn ils ont fait un nouveau formalisme qui utilise le développement phasique des cultures, avec quelques modif concernant les additions des effets de stress

Autres modifs notables :

**Demande en N** :

**Water/N compet & complementarité**

**Microclimat**

# Resultats :

**Intraspecific interactions**

Le self intercrop est suffisamment proche du culture unique pour tous les stages et cultures et variables testées.

Différences que très mineures, il y a juste  l’acquisition en N qui diffère plus, mais c’est un pb qui était déjà présent dans les versions précédentes du modèle. Et la diff entre sole et self intercrop reste faible.

Autre truc important : faible différence pour soil-water content et N acquisition ==> pas d’effet de l’ordre de simulation des cultures

**Interspecific interactions**

Leur démarche : on calibre le modèle sur les cultures seuls (en self intercrop), et laisser le modèle simuler les intercrops sans avoir à toucher quoi que ce soit

Sole crops proche des observations réelles

Mais difficultées (sous-estimations) à estmer le N issue de l’atmosphère, même si à la fin ca s’améliore

(en fait N c’est chiant qq soit le poste ?)

Stics garde les mêmes trends et ordres de grandeurs pour les cultures en intercrop comparé aux monocrop mais ca varie un peu de l’observé quand même.

STICS réussi à simuler la complémentarité de niche concernant les sources de N (~facilitation sur certains points) ==> Imparfait, mais ↗ N atmosphère (fixation) pour pois, et ↗↗ acquisition N par blé --> ↗ intercrop comparé à sole crop

Propriété émergente de STICS ==> simule complémentarité de niche sans avoir besoin de formalisme dédié stricto sensu, et sans besoin de recalibration

==> précisément ce qui est recherché dans ces approches de modélisation

Autre propriété émergente potentielle : l’architecture des plantes modifiées par le type de mixture d’espèce

Enfin la plupart des erreurs dans les intercrops sont trouvées similairement dans les monocrop => les erreurs viennent soit de la calibration, soit des formalismes utilisés / partagés avec ceux de la monocrop => pas l’objectif de ce papier

**Généricité des formalismes / conditions d’application**

Modeling efficiency >= 0.71 pour toutes les variables considérées dynamiquement sur la saison de culture => performances correctes + comparaison possible avec toute ce qui a été publié concernant les modèles de monocultures.

STICS peut aussi reproduire de manière satisfaisante (EF >= 0.5) les fonctionnement des cultures, SAUF (EF = 0.2) le contenu en N dans les grains à la récolte, mais c’est un des trucs les plus complexes à modéliser pcq dépends de plein d’autre paramètres et imprévus potentiels qui peuvent arriver sur toute la période de culture et leurs interactions.

Modéliser partiellement et totalement la LER c’est difficile => besoin de simulations accurates de monocrop et intercrop MAIS stics est quand même capable de simuler correctement les performances de l’intercrop (partiel LER, avec EF 0.78, & biais proche de 0 | total LER des intercrops présente une erreur relativement faible (14% en average, varie entre 0.8-30%), c’est correct mais pourrait être amélioré)

Erreurs minimes de sous estimation de LAI mais affectent pas les prédictions de rendement

STICS surestime le faible rendement de wheat-faba bean => la surestimation peut résutler de facteurs et processus par encore considérés dans le modèles => besoin de nouveaux formalismes/additionnels ?

En general =>

Stics simule bien toute les variables clés, de manière consistante et relativement fiable, avec un léger biais de surestimation pour le rdt en grain (exemple).  
Mais c’est prometteur, notamment pcq capable de reproduire le total et partiel LER avec précision, permettant d’utiliser le modèle pour tester numériquement de nouveaux systèmes.

STICS réussi à simuler différents systèmes d’intercropping indépendemment des conditions pédoclimatiques, la fertilisation, les régimes d’irrigation et la complexité spatiale => potentiel de généricité

Un des formalisme les plus relativement simples mais efficaces : l’estimation de la hauteur des plantes via le développement phasique.

ET EN PLUS c’est un des plus important facteurs dans les simulations d’intercrop.

Pour l’instant c’est surtout sur les bi-spécifique intecrops, les systèmes spatialement plus compexes sont a priori pas valides  et auront besoin de modélisation 3D

Pas le focus de cet étude mais stics peut donc aussi simuler 2 var ou des var pop en mixture, ou des cultures relais.


## Résumé :

 ↗ Demande changement agroéco => bénéfics potentiels de l'intercropping: 
 - ↘ Ferti, ↘ Adventices ravageurs maladies, ↗ Résistance sécheresse/maladies, ↗Productivité & séquestration C
 - Doivent avoir complémentarité, facilitation pour outperform des monocrop compétitives
 MAIS : difficile à prédire / modéliser simplement.
 Ont fait des modifs a STICS pour adapter aux intercrops (bi-espèce)
 Choix de stics pcq simple à utiliser et paramétrer tout en restant précis et généralisable.
 Objectifs : pouvoir modéliser intercrop bi-sp. en gardant le nb de paramètre bas et simples à mesurer (et rapides à computer), afin de pouvoir pre-screener numériquement différentes associations en fx de l'environnement et des pratiques.

STICS bon en général mais y a qq inconsistences parfois; divergences avec données réelles observées dans les DBs.
=> STICS doit être modifs avant d'être utilisé de manière fiable pour des simulations

[Définition stics si besoin/présentation générales]
Modifications à stics :
- Transfert radiatifs remplacés par loi de beer lambert quand les canopées des 2 cultures sont confondues
- Effet de la densité des plantes : on considère qu'une monocrop est un intercrop d'une culture avec elle même => permet d'utiliser le même formalisme pour les mono / intercrops 
- Traits des plantes/dimensions : hauteur de canopée estimée par LAI remplacée par formalisme utilisant développeent phasique des cultures + effets additifs des stress.
- Autres modifs notables : demande en N, Water/N competition et complémentarité, et microclimat

Résultats :
Interactions intraspécifiques : 
- Le self intercrop est suffisamment proche de la culture unique pour les différents stages/cultures/variables testées comparé aux observations réelles
- Différences très mineures, notamment l'acquisition en N qui était déjà un pb présent dans les versions précédentes du modèle.
- Faible diff pour soil-water content / N acquisition => pas d'effet de l'ordre de simulation des cultures.

Interactions interspécifiques  :
- Démarche : calibrer modèle sur cultures seules (self intercrop) et laisser simuler les intercrops tt seuls.
- P'tit pb de sous estimation du N atmosphérique fixé.
- MAIS Stics garde les même trends/ordres de grandeur pour la comparaison inter/monocropping même si qq variations vis-à-vis des données observées.

Propriétés émergentes (pas besoin de formalismes dédié et de recalibrage) :
- Complémentarité de niche sur source de N (imparfait mais marche)
- Architecture des plantes modifiées par le type de mixture d'espèce.

La plupart des erreurs dans intercrop sont aussi présentes dans monocrop => pb de calibration potentiels

Modeling efficiency >= 0.71 pour toutes les variables considérées dynamiquement sur la saison de culture => performances correctes + comparaison possible avec toute ce qui a été publié concernant les modèles de monocultures.

STICS peut aussi reproduire de manière satisfaisante (EF >= 0.5) les fonctionnement des cultures, SAUF (EF = 0.2) le contenu en N dans les grains à la récolte, mais c’est un des trucs les plus complexes à modéliser pcq dépends de plein d’autre paramètres et imprévus potentiels qui peuvent arriver sur toute la période de culture et leurs interactions.
Modéliser partiellement et totalement la LER c’est difficile => besoin de simulations accurates de monocrop et intercrop MAIS stics est quand même capable de simuler correctement les performances de l’intercrop (partiel LER, avec EF 0.78, & biais proche de 0 | total LER des intercrops présente une erreur relativement faible (14% en average, varie entre 0.8-30%), c’est correct mais pourrait être amélioré)
Erreurs minimes de sous estimation de LAI mais affectent pas les prédictions de rendement
STICS surestime le faible rendement de wheat-faba bean => la surestimation peut résulter de facteurs et processus par encore considérés dans le modèles => besoin de nouveaux formalismes/additionnels ?

____

TransfertS radiatifs 
Beer lambert majuscule 
Culture intercalaire au lieu d'intercrop
Mettre le focus sur le pq et a quoi ca sert, et dire ca marche/ ca marche pas + piste amélioration 



Very few soil-crop models are able to simulate interspecific interactions, even for the simplest case of bi-specific intercrops. This is mainly due to the difficulty of designing generic and simple new formalisms that consider the dynamic interactions between plants for all processes while maintaining a few, easily measurable parameters and a fast computation time. Some attempts have been made to adapt 55 existing classical 1D sole crop models to bi-specific intercrops, for instance STICS 
=> Pb, contraintes ✅

- (2) Propose new simple, yet powerful novel formalisms to improve the simulation of the main processes in the initial version (1D model), which were considered unsatisfactory, and evaluate their relevance; 
- (3) Evaluate the genericity and validity domain of these new formalisms implemented in STICS using both a conceptual assessment and a comparison with observations for various types of arable bi-specific intercrops of winter and spring legume-based intercrops associated with cereal or sunflower with a wide range of measured agronomic plant traits => Objectifs ✅ 🔶

These goals were investigated keeping in mind several constraints and choices. First, the formalisms had to be generic, simple and robust. Second, the number of parameters had to be minimal with parameters derived from sole-crop data without the need for any re-calibration to simulate intercrops. Last, the formalisms implemented in STICS had to generate a similar or lower range of error for bi-specific intercrops compared to sole crops to ensure they could be used for in silico comparisons of species mixtures or management, for example by calculating their land equivalent ratio as shown by Launay et al. 
=> Contraintes ✅

FIGURE 5 => proximité observé/simulé

The formalisms included in the model are designed to be generic and sufficiently simple to understand and parameterize, making the model well-suited to address current challenges in agriculture such as promoting sustainability while maintaining production 
=> contraintes ✅ / intérêt conseil ✅

The model was evaluated using a data-driven approach to determine its consistency, genericity, and accuracy. The results of this evaluation showed good agreement with observed results for a variety of species mixtures. The model was able to reproduce the trends in crop response to changes from a sole crop to a bispecific intercrop design and even showed evidence of niche complementarity for nitrogen sources in legume-based mixtures. => Validation ✅

The implementation of our new formalisms into STICS provides a promising step forward in this direction by providing a comprehensive and robust description of the interactions in intercropping systems as a proof of concept and a first practical demonstration. By including the most important processes for intercropping systems, the model has the potential to help researchers to support the development of more sustainable and locally adapted intercropping systems. The genericity of the model also makes it well-suited to generalizing results from one site to another, which is an important step in promoting the wider adoption of sustainable agroecological practices. 
=> Intérêt/potentiel ✅

More generally, STICS can be applied to a wide range of bi-specific intercrops where the planting design allows direct interspecific interactions for resources between the two crops. Although the threshold value for the acceptable width of the strip has not yet been determined => Intérêt/limite STICS ✅

can simulate strip intercrops with narrow width and few rows (i.e. 2 to 3 close rows per strip), which were found to exhibit the most benefits from intercropping (van Oort et al. 2020) 
=> Intérêt   ==\[osef pour l'instant on verra si je manque de trucs à dire]==

Intercropping systems that are more spatially complex are excluded from the validity domain unless proven otherwise, and probably need to be simulated using a 3D approach. 
=> Limites ✅

Although not considered in this study, on a conceptual basis, STICS can also simulate bi-varietal or population mixtures, relay intercropping and all intercrop mixtures using two set of plant parameters, for spatial designs of mixtures within the row and in alternate rows. 
=> Perspectives ✅🔶

Will be particularly well suited to address current challenges such as generalizing results of intercropping from one site to another, or virtually pre-screening innovative intercropping systems that are more sustainable, easier to manage, and well adapted to local conditions, as a tool for developing research supporting and agro-ecological transition, and to assess the impact of climate change scenarios on sole versus intercrop production and GHG emissions, and also assess if intercrop would be more resilient than the classical sole crops. 
=> Intérêt ! ✅

____

###### Problématique

Peu de modèles plante/sol sont capables de simuler correctement des interactions interspécifiques, même dans le cas le plus simple qui est la culture intercalaire.

###### Objectifs

Proposer des nouveaux formalismes, simples mais efficaces, pour améliorer la simulation des processus principaux du modèle qui n'avaient pas été suffisamment bien modelé.
Evaluer la pertinence de ces nouveaux formalismes
Evaluer la généricité et le domaine de validité de ces formalisme et du modèle STICS qui en découlent.
Avoir un modèle robuste qui décrive les interactions impliquées dans les cultures intercalaires servant de preuve de concept pour les cultures intercalaires.
###### Contraintes

- Les formalismes doivent être génériques, simples à comprendre et paramétrer.
- Le nombre de paramètre doit être minimal et éviter le recalibrage
- Une fois implantés dans STICS, ces formalismes doivent permettre de simuler les cultures intercalaires bi-spécifique au moins aussi bien que STICS ne simule les cultures monospécifiques.

###### Intérêts 

Pouvoir utiliser le modèle pour faire des comparaison numériques de mélanges d'espèces ou de pratiques de gestion, en calculant par exemple les LER associés, pour du conseil par exemple. 🟢
Permettre de promouvoir des pratiques plus soutenables en maintenant le niveau de production. 🟢
Généraliser les résultats de culture intercalaires a partir d'un nombre réduit de site d'expérimentation. 🟢

Pré-screener des systèmes innovants de culture intercalaire qui seraient plus résilients, plus simples à gérer, et adaptés aux conditions locales, càd un outil de soutien à la recherche. 🟢

Pourrait permettre aussi de prédire les effets du changement climatique sur une large gamme de système de culture intercalaire, et de les comparer aux effets sur les monocultures. 🟢

Permettre de comparer les niveaux d'émissions de GHG et de résilience entre culture mono/bi-spécifique. 🟢


###### Validation

Approche basée sur des données réelles.
Forte proximité entre observées/simulées pour une grande variété de mixtures d'espèces.
Le modèle a été capable de garder les mêmes tendances/ordres de grandeur pour la comparaison culture monospécifique/intercalaire même si on constate quelques variations vis à vis des données réelles.


###### Potentiels

Conceptuellement, notamment grâce à l'approche "auto-culture intercalaire", le modèle pourrait permettre de simuler des cultures bi-variétales ou des mixs de populations. 

###### Limites

Sauf preuve du contraire, des systèmes de culture pluri-spécifiques plus complexes spatialement sont exclus du domaine de validité du modèle, et devront être a priori simulé par une approche 3D.
La valeur seuil de la largeur des rangs a pas encore été déterminée
 
#### Figure 5






_____

