---
prof: Olivier Godinot
---
## Quelques bases de données publiques utiles en agronomie 

### Données de production agricole

**Dans le monde :**
- site de la FAO, FAOSTAT : https://www.fao.org/faostat/fr/
- Données par pays depuis 11961, sur l'agri et l'alim
- Nombreuses données à échelle nationale : surface, rendement, cheptel, conso d'engrais...
- Autres données variées : démographie, accès à l'alimentation, utilisation des terres, émissions de GES agricoles...

**Dans le monde :**
- Global AgroEcological Zones : http://gaez.fao.org/
- Classement du monde en zones agro-écologiques en lien avec le type de  sol, climat, pente....
- Calcule de rendements, revenus, yields gaps, à l'échelle infra-nationale. Peu précis pour une petite zone, intéressant à plus grande échelle

- OCDE : https://data.oecd.org/fr/agriculture.htm
- Différents indicateurs de production, consommation, indicateurs, environnementaux...
- Couvre 36 pays : Europe, Turquie, Canada, USA, Mexique, Japon, Corée du S., Australie, Nouvelle-Zélande, Chili

**En Europe :**
- Site de la commission européenne : Eurostat https://ec.europa.eu/eurostat/fr/web/agriculture/database
- Nombreuses données agricoles, forestières et de pêche (surface, rendement, cheptel) aux échelles nationales (NUTS1), par région (NUTS2), ou par département (NUTS3)
- Autres données très variées : population, économie, commerce international, indicateurs calculés par l'UE (environnement, énergie, biodiversité...)

**En Europe :** 
- Site du centre de recherche de la commission européenne : JRC
- https://data.jrc.ec.europa.eu/
- Nombreuses données agricoles, notamment des résultats de modèles à l'échelle européenne : changement climatique, rendements, impacts environnementaux...

**En France :** 
- site Agreste du ministère de l'agriculture https://agreste.agriculture.gouv.fr
- Site proposant aussi des cartes : https://stats.agriculture.gouv.fr/cartostat
- Nombreuses données annuelles nationales et régionales, sur la production végétale et animale, la structure des exploitations, la main d'oeuvre, le prix des terres...
- Données plus détaillées sur les pratiques, les rendements... lors des recensements agricoles (dernière année : 2020) à l'échelle communale ou cantonale : http://recensement-agricole.agriculture.gouv.fr/
- Données détaillées par EPCI sur les sites des DRAAF : https://draaf.bretagne.agriculture.gouv.fr/les-fiches-territoriales-special-recensement-agricole-2020-des-epci-bretons-a2644.html

### Données sur le sol

**Europe :**
- European soil database : https://esdac.jrc.ec.europa.eu/
- Classification du sol dominant, texture, teneur en éléments, réserve utile

**En France :** 
- BDDs et cartes du GIS sol : https://www.gissol.fr
- Indicateurs de qualité des sols e nFrance : aléa érosif, teneurs en ETM,...
- Accès aux résultats des analyses de terres des sols agricoles par canton : Geosol (texture, teneur en argile, carbone, différents éléments chimiques, CEC, pH,...) et évolution entre années

### Données parcellaires

- IGN géoportail : https://www.geoportail.gouv.fr/
- Registre parcellaire graphique (sans lien exploitation) à partir de 2008
- Carte des pentes des parcelles, linéaire de haies
- Photos aériennes et historiques : http://remonterletemps.ign.fr/

- cartobio : https://www.agencebio.org/cartobio/
- Permet d'identifier les parcelles déclarées en AB auprès de la PAC depuis 2019

### Données d'occupation des sols

- Tous usages, pas uniquement agricoles
- Corine Land Cover disponible sur le site de l'IGN
- Theia OSO : 24 classes d'usage, précision de 10m : https://www.theia-land.fr

### Données environnementales

- Equinoxe (DREAL Bretagne) : https://geobretagne.fr/mviewer/?config=/apps/equinoxe/config.xml
- Informations sur les déclarations de flux d'azote, OTEX, cheptels...

### Autres données

- Réseau d'information comptable agricole : https://agridata.ec.europa.eu/extensions/FarmEconomyFocus/FarmEconomyFocus.html
- Résultats économiques des exploitations par région ou par pays d'Europe

- Base SIRENE : https://www.data.gouv.fr/fr/datasets/base-sirene-des-entreprises-et-de-leurs-etablissements-siren-siret/
- Base de toutes les entreprises de France (12M)
- Code d'activité principale (APE), nombre de salariés, commune,...

- Météo France : données météo locales et nationales (précipitations, températures, rayonnement, ETP,...), normales sur 30 ans, résultats de modèles météo... http://www.meteofrance.com

- DRIAS : données météo locales et nationales et modélisations climatiques selon les scénarios du GIEC, données agro-météo téléchargeables point par point http://www.drias-climat.fr

- Institut national de la statistique : https://www.insee.fr/
- Données à différentes échelles : démographie, activité économique, conditions de vie, aménagement du territoire,...
- Données statistiques agricoles et autres de l'État, fonds de cartes, analyses... : https://www.data.gouv.fr/fr/datasets
- https://www.observatoire-des-territoires.gouv.fr/
- Données spatiales haute fréquence et haute résolution en photographie visible et infrarouge (applications en agriculture de précision) : https://sentinel.esa.int

### Calculateurs 

- Perf'Alim : http://www.perfalim.com/fr/
- Calculateur de performance alimentaire d'une exploitation ou d'un territoire

- Parcel : https://parcel-app.org/
- Calculateur de capacité nourricière d'un territoire

- CRATER : https://crater-resiliencealimentaire.org/
- Calculateur de resilience alimentaire des territoires

 
 Ne pas hésiter à croiser les sources

### Comment décrire les fermes ?

- Données sur les pratiques assez peu disponibles en général : la meilleur source est le recensement agricole, mais données non spatialisées (secret statistique)
- On trouve certaines données à une échelle fine (cultures, types de sol, données satellite) et d'autres uniquement à des échelles plus larges (rendement)
- La pratique habituelle consiste en des typologies basées sur de l'expertise (instituts techniques) ou de l'enquête


https://www.youtube.com/playlist?list=PLtgzX5UDQAzoLxRv0sSQg11pC1kHMRY


Commande: à partir bdd plublique : décrire territoire d'étude de manière complète et détaillées, sols, climat, activité agricoles, haies et autres infrastructures agroécologiques, aspects environnementaux...
Avec QGIS, réaliser des cartes pour présenter ces données
Peu de temps : ~7h30 (mais travail en TD SIG) => s'organiser en sous groupe
Restitution vendredi à 15h (30-40 min + questions)

cadre : projet ampera "aproche métabolique et paysagère pour transi agroécologique territorialisée en élevage

décrire le territoire d'étude du pays de fougères, en essayant si posisble d'approfondir les aspects liées aux productions agricoles, les flux dans le territoire et les paysages

draaf : fiches RA 2020 de fougères agglo et couesnon marches de bretagne
Scot du pays de fougère
pat du pays de fougère
fiches des chambres d'agriculture par EPCI