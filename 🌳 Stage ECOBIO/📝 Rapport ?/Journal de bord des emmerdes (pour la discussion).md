
## ==PB Taxons==

#### **Global**

Caractérisation difficile :
- littérature parfois assez agée (viabilité / fiabilité ?)
- littérature très spécialisée et éparpillé, rare papiers qui font des reviews et de la remise à jour
- Manque de caractérisation des besoins chez des taxons (notamment carabes : discussion avec Pavel Saska "on manque de gens prêt à faire de la caractérisation de taxons et de traits fx/ histoire de vie, et on a pas de projets / financement pour faire ca)
- Niveau de précision de notre extrapolation **besoin → traits fx** : 
	- Biais pcq pas de valeurs stats dans plein de cas 
	- Gros pb sur "ils aiment globalement XX habitats différents" ok je fais quoi ? comment j'évalue ? on a pris le parti (j'ai) de prendre du CWV pour ces traits plutôt que le CWM
	- Pour les besoins alimentaires pbs d'évaluation de la diète pcq souvent complexe d'avoir des infos claires et qui se recoupent entre articles, (pareil avec conso graines carabes parfois) notamment pcq c'est souvent du conditionnel (il préfère Y a X mais on sait pas ce qu'il ferait s'il était en condition naturelle avec sp supplémentaires Z A B C etc etc) et ca prends pas en compte les besoins et ou risque/benef et l'environnement et le climat (qu'on ne pourra pas prendre en compte pcq on a pas les datas des autres coins et on a pas le temps nn plus a vrai dire)
	- Autre pb besoins alimentaires, pour les consommateurs secondaires : on a plein d'sp / de proies mais comment on retranscrit les besoins d'avoir ces sp en trait fx de plantes ? j'ai fait le pari de prendre les plus proéminente (encore une fois, interprétation, extrapolation de la littérature) et celles qui font parties de nos autres taxons quand possible, et de caractériser les besoins en habitats de ces espèces (et pas de leur nutrition à elles sinon on s'en sort plus pcq on refait pareil un rang trophique plus bas) dans les grannnndes lignes => pb d'approximation / fiabilité encore plus grand.
- Pas de prise en compte de la prédation ? En même temps comment ? pis ca serait pas faisable en si peu de temps et avec quelle données ? 
- Pb de catégorisation **constant** : essayer de faire des généralisation du taxon mais en faisant des subgroups si possibles (mais rarement possible, notamment du aux pbs de knowledge/database gaps dans les caractérisations mentionnées précédemment)
#### Pollinisateurs

#### Parasitoïdes

#### Araignées

#### Gastéropodes

#### Carabides

#### Puçerons

#### Plantes (adventices)


## ==PB Listes espèces, traits et tri des data==

#### Liste sp.

- Espèces arbres / strate arborées par prise en compte dans les quadrats, que les plantules → **gros biais notamment pour présence et abondance **
- On a les relevés adventices que pour les champs de blés hors les commus dans champs de colza et maïs risque d'être très différentes : on les pends en compte comment ? on assigne que ceux du blé à tous ? Pavel a proposé de check si nos sp dans blé d'hivers sont les mêmes que chez eux(Rep Czech), ce qui est imho peu probable et que si c'est proche on considère que ce sera aussi proche pour maïs/colza (biaisé de fou notamment différentes pédo-climatiques).
- Autre pb, on prends pas en compte dans nos occsols de culture les ... cultures.... mais en même temps est-ce qu'on aura les traits qu'on veut pour ??? et surtout comme y a sélection sur cultures y a des groooosses disparités/différences entre variétés de la même espèces et les DBs de trait on quasi rien au niveau var/subsp donc on fait quoi ? On prends la moyenne "espèce blé, colza et maïs?" C'est p'tet biaisé mais j'trouve ca moins pire que d'ignorer tt la couverture réalisée par les différentes cultures.... Pis ca peut aussi fournir de la bouffe pour les granivores par ex...
- Pb homogénéisatio nomenclature entre les différentes BDDs (try, baseflore, relevés quadrats internes...) grosse perte de temps pour faire correspondre tout (mtn j'utilise les noms et surtout les ID try pour faire la """"clé primaire""") 
- Infos sur floraison dispo sur baseflor mais pas pour tout : besoin d'aller sur tela botanica mais pas tjrs les infos et encore une fois pb nomenclature → temps perdu
- Info sur chorie (zoo, anemo, baro, etc) un peu lacunaire, ou trouver source utile ?????
- 
#### DB traits

- Try c'est super mais y a masse de NA, pas tjrs la même fiabilité des résultats, un grooooos manque de commentaires/infos/descriptions sur les catégories quand c'est du catégoriel notamment quand c'est catégorie "1" "2" ou "3" et qu'on a aucune info sur ce quoi c'est
- Refus de fourniture de data sur les 2 requètes différentes par privés (compréhensible mais un peu dommage)


#### Tri / manip data et extrapolations

- Le filtrage ou on prend sp avec abondance (>3%) et pba de présence (>5%) vise à limiter sp rares qui pourraient ajouter des % de NA dans nos bdds de traits et donc de conserver + de traits mais avec ces paramètres on passe de 393 sp uniques à 46 avec notamment ***1 seule sp retenue*** en adventices, et 18 (instant T 23/04/25) en bois, 24 en prairies (instant T 23/04/25), 16 en haies.... ce qui risque de poser des pbs sur la créations des communautés
- Le nombre d'sp par commu dans une occsol a été pour l'instant calculée par quadrat (instant T 23/04/25) alors qu'il faudrait le faire par parcelle mais la nomenclature des bdds de relevés n'est pas tjrs précisée et donc pas sur d'identifier correctement tt les quadrats issus de la même parcelle pour recalcul, d'autant plus que ca va irrémédiablement augmenter le nombre moyen d'sp par commu par occsol alors que on est déjà pas tjrs au dessus du seuil (cf adventices) avec le filtrage excluant sp rare ou avec pas assez d'abondance...

| Foret | prairies | haies | adventices | Categories                            |
| ----- | -------- | ----- | ---------- | ------------------------------------- |
| 40    | 24       | 49    | 10         | Nb sp. ds liste finale                |
|       |          |       |            | Moyenne issues des relevés de terrain |

- Pour le **tirage des communautés** :
	- 2 options à savoir 
		- le tirage de quadrats déjà existants (ceux sur lesquels on a basé nos listes sp de l'occ_sol), mais il faut en mettre X ensemble pour faire l'aire minimale et on sait pas si ca encapsule réellement tt la diversité possible
		- la simulation à partir de random + pba de présence dans le quadrat (et abondance éventuellement selon Cécile) mais là on risque aussi de faire des associations pas réalistes pcq les occsols sont très généralisées genre entre parcelles de "prairies" ou "adventices ds cultures" y pourrait y avoir de grosse différences qu'on aurait jamais en réel. Ca impliquerait que pour le tirage de quadrat (si on passe sur le tirage de quadrat au final) on aurait aussi a tirer des quadrat ensemble de la **même parcelle** pour éviter de tt mélanger.
	- On tire une commu par "parcelle" de l'occsol dans le SIG, avec une modulation du nb de sp en fonction de la taille.

## ==PB méthodo général==

#### Comparaisons / évaluation Classique vs Fx_continu ????

- Pb de comparaison notamment sur le coté config pcq on peut faire analogie sur la plus petite distance euclidienne (a priori) mais le path of least resistance risque de manquer d'élément de comparaison ? comment faire ? normaliser un indice classique et ce qu'on calcule là ? comment normaliser une distance entre 0 et 1 si on a théoriquement pas de distance max (sauf si on prends la taille totale du buffer / maille paysagère mais ca n'aurait pas d'intérêt pcq c'est arbitraire ? quelle constante appliquer pour faire notre seuil de distance maximale en PoLR entre 2 pics?)

#### Manque trait / sp ? Pool trop petit ?

- A partir de quel seuil virer des traits si trop de NA?
- Si trop de traits virés pour assurer caractérisation habitat ET diet d'un taxon on fait quoi ? On remet des traits même si NA? mais dans ce cas on les utilise ou pas aussi pour les autres taxons à qui ca pourrait servir ? 

Aussi on a des arbres en strate arbustive pcq pas encore fini en terme d'age donc ca fausse pcq on a fuse ca en adulte on a pas les valeurs de trait intermédiaires

Sp pas présente dans TRY (salix atrocinerea => fuse avec cinerea du coup car taxo possible est "_Salix cinerea_ subsp. _atrocinerea_ ou var. atrocinerea)

fusion arbustive et arborée (strate) en "arbres" (peut être discutable)





#### Résultats 

Aucun des 120 (3 var expliquée (shannon, richesse spé, abondance) x 2 modalités (haies avec/sans bandes fleuries) x 5 traits (pour carabes, LDMC, plant height et **3 traits liés aux graines (intérêt que pour les granivores, càd 5% ou moins des carabes**)) x 4 métriques (moy, var, dist, %5%top)) modèles linaires simples ne présent de résultat significatif pour la métrique évalué (dans chaque config), mais la majorité sont statistiquement valide, même si leur R2 est absolument nul

On pourrait essayer si on avait plus de temps de refaire ces analyses avec les shannon/richesses/abondances des carabes grani uniquement ca pourrait être plus intéressant.
Y aurai aussi bcp d'autres métriques à tester (PolLR/friction map, distance moyenne ou var distance entre centre buffer et pixels top 5%), etc etc etc



Fahrig 2011 "Given the scale of analysis needed – probably c. 40–60 landscapes, each up to c. 4 km in diameter (e.g. Thies et al. 2003) – collecting data on land use at the level of detail needed will be an intensive but feasible undertaking" → que 10 landscape ? chaud 

et aussi "Deriving the functional cover types also depends on the availability of sufficient knowledge of the ecology of the species and species groups of interest" Fahrig 2011 → on manque encore de data

"However, more detailed landscape descriptions may not always yield more accurate predictions. To test this assumption, future studies should conduct replicate studies in different agricultural regions with different species pools" Fahrig 2011

Fahrig 2011 also says applying the same target for heterogeneity to all landscapes within a region may not maximize biodiversity at a regional scale, potentially leading to second-order homogeneity






## Ordre idée 

CARTOGRAPHIE : 

Interpréter carto 
        +
Quel intérêt / limite ca aurait, quelles infos on pourrait supposer en récup (paysage) en modifiant ca
        +
Ca peut avoir un intérêt pour d'autres organismes pour peu qu'on ai suffisamment de données (suffisamment de paysages, de sessions, et de data try)

Grosse limitation sur ce qu'on a pu tester en énorme partie du fait du pb de complétion de try et autres db. Ca fausse aussi probablement (quel ordre de grandeur par contre ?) les calculs de traits / cwm pour les commus même pour les traits ou on a 75%+ de complétion car si c'est un truc super abondant (ou modérément abondant mais avec des valeurs EXTREMES qui justifieraient un impact même avec abondance modérée) qui a pas la valeur de trait ca fausse le résultat.
Pour autant, on a pas assez de répétition de paysage pour que les modèles linéaires soient bon je pense
        +
Il faudrait 












# Test

## 1. **Discussion Méthodologique**

### 📚 Caractérisation des besoins / traits fonctionnels

- Littérature parfois très ancienne, spécialisée, peu de synthèses à jour.
    
- Gros manque de données sur les besoins écologiques (carabes notamment). → "on manque de gens prêts à faire de la caractérisation de taxons et de traits fonctionnels / histoire de vie" (Pavel Saska).
    
- Extrapolations : peu ou pas de données stats → biais possibles.
    
- Problèmes d’expressions vagues dans la littérature ("ils aiment globalement XX habitats"), difficilement traduisibles en variables quantitatives → utilisation du **CWV plutôt que CWM** pour mieux représenter ces cas.
    
- Diète : difficulté à obtenir infos précises, surtout pour consommateurs secondaires → fort degré d’interprétation/extrapolation.
    
- Tentative de contournement : sélection des proies les plus "proéminentes" et prises en compte de leurs besoins en habitats (pas de leur nutrition).
    
- Prédation non prise en compte, faute de données et de temps.
    
- Difficulté à créer des sous-groupes par taxons, manque de données.
    

### 📄 Données espèces / traits / filtrage

- **Listes espèces :**
    
    - Arbres et strate arbustive : biais dû au fait que seuls les jeunes individus sont comptés.
        
    - Relevés adventices uniquement en blé, pas en colza/maïs → forte incertitude sur la représentativité.
        
    - Cultures pas prises en compte comme telles dans les traits, alors qu'elles couvrent une grande surface → biais possible, mais prendre moyenne par espèce (blé/maïs/colza) semble "moins pire".
        
    - Problèmes d’homogénéisation de la nomenclature (Try, Baseflor, relevés internes) → perte de temps considérable.
        
    - Infos floraison incomplètes sur Baseflor → recours à Tela Botanica mais également limité.
        
    - Infos sur chorie souvent absentes ou dispersées.
        
- **Trait databases :**
    
    - Try : beaucoup de valeurs manquantes (NA), peu de documentation sur les catégories qualitatives.
        
    - Refus de fourniture de données (deux fois) par des labos privés.
        
- **Filtrage / Tirage / Manipulation données :**
    
    - Seuils d’abondance >3% et de présence >5% permettent d’optimiser la couverture en traits mais réduisent drastiquement le nombre d’espèces :
        
        - 393 → 46 espèces retenues (dont 1 seule en adventices, 16 en haies...).
            
    - Moyenne par occsol basée sur quadrats → problème si regroupement par parcelle mal identifié.
        
    - **Tirage des communautés :**
        
        - Option 1 : tirage de quadrats existants (mais parfois pas assez représentatif).
            
        - Option 2 : simulation randomisée selon pba de présence/abondance → risque de créer des assemblages peu réalistes.
            
        - Solution envisagée : tirer X quadrats **d’une même parcelle**.
            
        - Tirage modulé selon la taille des parcelles.
            

### 🧮 Comparaison méthodes classiques vs fonctionnelles continues

- Difficile de comparer :
    
    - Indice classique (présence/abondance) vs. distances fonctionnelles (euclidienne ou PoLR).
        
    - PoLR difficilement normalisable → quelle distance maximale prendre comme référence ?
        
- Comment normaliser entre 0 et 1 sans distance théorique max définie ?
    

### ❓ Questions méthodo ouvertes

- Seuils d’acceptabilité de NA pour un trait ?
    
- Que faire si on doit exclure des traits clés faute de données ? Les garder (mais inutilisables pour d’autres taxons) ou pas ?
    
- Cas spécifiques :
    
    - Arbres encore jeunes → valeurs de traits adultes biaisées.
        
    - _Salix atrocinerea_ absent de TRY → fusionné avec _S. cinerea_ subsp. atrocinerea.
        
    - Fusion strate arbustive / arborée sous "arbres" → discutable.
        

---

## 📉 2. **Résultats (spécifiquement carabes)**

- **120 modèles linéaires simples testés** (3 variables expliquant biodiversité x 2 modalités x 5 traits x 4 métriques) → aucun résultat significatif.
    
- Les modèles restent globalement valides (pas aberrants), mais les **R² sont très faibles**.
    
- Analyse menée sur tous les carabes confondus, **sans distinction granivores** :
    
    - Hypothèse : refaire les analyses sur **les granivores uniquement** (≈5% des carabes) pourrait donner des signaux plus clairs, notamment pour les traits liés aux graines.
        
- Très forte dépendance aux données disponibles :
    
    - Même des traits avec 75% de complétion peuvent être biaisés si espèces très abondantes / aux valeurs extrêmes sont sans données.
        
- Limitation majeure : **pas assez de répétitions de paysages** pour avoir une puissance statistique suffisante → modèles sans robustesse.
    

---

## 🔭 3. **Perspectives / Conclusion**

### 📌 Perspectives fonctionnelles / carto

- **Cartographie fonctionnelle** : à valoriser si nombre suffisant de paysages et données d’espèces/traits adéquates.
    
- Peut être utile à d’autres groupes d’organismes (si info disponible et effort de collecte conséquent).
    
- Grosse **limitation structurelle** : **complétion inégale dans TRY et autres DB**.
    
    - Fausse les calculs de CWM même à complétion >75% si les manques concernent des espèces dominantes ou "clés".
        

### ⚠ Limitations structurelles majeures

- Nombre de paysages très insuffisant (Fahrig 2011 : recommande 40–60 paysages, vs. 10 ici).
    
- Problème généralisé de **connaissance écologique des espèces** → impacte toute l’analyse (Fahrig 2011 le souligne aussi).
    
- Uniformiser les cibles fonctionnelles entre paysages ≠ ne maximise pas nécessairement la biodiversité → **limite des approches trop généralisées**.