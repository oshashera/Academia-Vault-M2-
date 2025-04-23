
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
- Pb homogénéisatio nomenclature entre les différentes BDDs (try, baseflore, relevés quadrats internes...) grosse perte de temps pour faire correspondre tout (mtn j'utilise les noms et surtout les ID try pour faire la """"clé primaire""") 
- Infos sur floraison dispo sur baseflor mais pas pour tout : besoin d'aller sur tela botanica mais pas tjrs les infos et encore une fois pb nomenclature → temps perdu
- Info sur chorie (zoo, anemo, baro, etc) un peu lacunaire, ou trouver source utile ?????
#### DB traits

- Try c'est super mais y a masse de NA, pas tjrs la même fiabilité des résultats, un grooooos manque de commentaires/infos/descriptions sur les catégories quand c'est du catégoriel notamment quand c'est catégorie "1" "2" ou "3" et qu'on a aucune info sur ce quoi c'est
- Refus de fourniture de data sur les 2 requètes différentes par privés (compréhensible mais un peu dommage)


#### Tri / manip data et extrapolations

- Le filtrage ou on prend sp avec abondance (>3%) et pba de présence (>5%) vise à limiter sp rares qui pourraient ajouter des % de NA dans nos bdds de traits et donc de conserver + de traits mais avec ces paramètres on passe de 393 sp uniques à 46 avec notamment ***1 seule sp retenue*** en adventices, et 18 (instant T 23/04/25) en bois, 24 en prairies (instant T 23/04/25), 16 en haies.... ce qui risque de poser des pbs sur la créations des communautés
- Le nombre d'sp par commu dans une occsol a été pour l'instant calculée par quadrat (instant T 23/04/25) alors qu'il faudrait le faire par parcelle mais la nomenclature des bdds de relevés n'est pas tjrs précisée et donc pas sur d'identifier correctement tt les quadrats issus de la même parcelle pour recalcul, d'autant plus que ca va irrémédiablement augmenter le nombre moyen d'sp par commu par occsol alors que on est déjà pas tjrs au dessus du seuil (cf adventices) avec le filtrage excluant sp rare ou avec pas assez d'abondance...

- Pour le **tirage des communautés** :
	- 2 options à savoir 
		- le tirage de quadrats déjà existants (ceux sur lesquels on a basé nos listes sp de l'occ_sol), mais il faut en mettre X ensemble pour faire l'aire minimale et on sait pas si ca encapsule réellement tt la diversité possible
		- la simulation à partir de random + pba de présence dans le quadrat (et abondance éventuellement selon Cécile) mais là on risque aussi de faire des associations pas réalistes pcq les occsols sont très généralisées genre entre parcelles de "prairies" ou "adventices ds cultures" y pourrait y avoir de grosse différences qu'on aurait jamais en réel. Ca impliquerait que pour le tirage de quadrat (si on passe sur le tirage de quadrat au final) on aurait aussi a tirer des quadrat ensemble de la **même parcelle** pour éviter de tt mélanger.
	- On tire une commu par "parcelle" de l'occsol dans le SIG, avec une modulation du nb de sp en fonction de la taille.

## ==PB méthodo général==

#### Comparaisons / évaluation Classique vs Fx_continu ????

- Pb de comparaison notamment sur le coté config pcq on peut faire analogie sur la plus petite distance euclidéenne (a priori) mais le path of least resistance risque de manquer d'élément de comparaison ? comment faire ? normaliser un indice classique et ce qu'on calcule là ? comment normaliser une distance entre 0 et 1 si on a théoriquement pas de distance max (sauf si on prends la taille totale du buffer / maille paysagère mais ca n'aurait pas d'intérêt pcq c'est arbitraire ? quelle constante appliquer pour faire notre seuil de distance maximale en PoLR entre 2 pics?)

#### Manque trait / sp ? Pool trop petit ?

- A partir de quel seuil virer des traits si trop de NA?
- Si trop de traits virés pour assurer caractérisation habitat ET diet d'un taxon on fait quoi ? On remet des traits même si NA? mais dans ce cas on les utilise ou pas aussi pour les autres taxons à qui ca pourrait servir ? 
- 