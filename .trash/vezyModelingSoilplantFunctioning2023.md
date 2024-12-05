# Annotations

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