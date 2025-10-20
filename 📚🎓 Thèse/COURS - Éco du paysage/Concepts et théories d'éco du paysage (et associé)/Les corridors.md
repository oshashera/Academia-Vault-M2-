---
sources:
  - https://jonathanlenoir.wordpress.com/wp-content/uploads/2013/12/ecologie-du-paysage.pdf
  - "Burel & Baudry, Écologie du paysage : concept, méthodes et applications (2nde édition)"
---
Éléments **linéaires** dont l'ensemble forme **un réseau** à travers la matrice, permettant de relier des tâches entre elles (fonctions fortes) et constituant un habitat.

Leur efficacité est variable, selon les caractéristiques de dispersion de l'espèce considérée...
![[Pasted image 20251017102917.png|300]]
<br>
L'arrangement spatial de la [[Structures en tâches (patches)|mosaïque]] et des [[Les corridors|réseaux]] constitue le **patron paysager**. Permet de distinguer ou rapprocher deux paysages du pt de vue structural, *à condition d'avoir des [[Typologies des taches et corridors|typologies adaptées]]*.

### Les réseaux de corridor

Corridors souvent organisés en réseaux : réseaux de haies, réseaux hydrographiques, réseaux routiers...
>[!summary] La description de ces réseaux fait appel à 2 paramètres particuliers : le **nombre de connexions** et le nombre d'**intersections**
>- Le nombre d'**intersection** est le nombre de **nœuds** dans le réseau, nombre de lieux où les corridors s'entrecroisent. Aux intersections, on a souvent une végétation plus complexe, une quantité d'habitat disponible plus grande qui peut amener une richesse biologique particulière.
>- Le nombre de **connexions** se rapporte au nombre de liens entre corridors, à une intersection. Ainsi (↓), on peut avoir un nombre différent de connexions selon la configuration des intersections. On peut aussi qualifier ces différentes configurations. une connexion avec un bois est un nœud essentiel qui va relier le réseau à la source potentielle d'espèces forestières. Une connexion en *T* assure les liens entre 3 haies, une connexion en *L* entre deux, et une connexion en *X*, rare, entre quatre haies. la connexion *0* représente un cul de sac.
>>![[Drawing 2025-10-20 12.52.03.excalidraw|center]]
>
><br> 
>
>Quand les corridors ont es qualités différentes, on peut représenter des portions de réseaux de qualité similaire comme un groupe (**cluster**), qui aura une fonctionnalité particulière. Ainsi (↓), on passe d'une structure à ce qui peut être un ensemble fonctionnel de haies ayant une qualité particulière. Pour aller du nœud A au nœud B, le chemin ne pourra être celui de la haie reliant directement les deux points, l'animal devra faire un détour par les haies "efficaces". Pour les carabiques (coléoptères), Charrier *et al*. (1997) ont montré que les haies à fort couvert végétal avaient un rôle de corridor bien meilleur que les autres haies ; on peut ainsi les différencier et repérer des réseaux "efficaces".
>>![[Drawing 2025-10-20 13.03.58.excalidraw|center|900]]

### Effet de la présence de corridors boisés sur la connectivité entre bosquets

Reprenant les sades 4 et 5 de fragmentation, on a ajouté un réseau de haie. La distance entre bois avec et sans haies a été calculée en considérant que les sp pouvaient traverser les trouvées ayant une largeur égale à trois fois celle des corridors (haies). On en a ensuite ajouté aux cartes (↓↓↓) des clusters de pixels liés "fonctionnellement".
![[Pasted image 20251020132004.png|center|600]]
Au stade le plus avancé de la fragmentation, la présence de corridor a un plus grand effet :
alors que le nb de pixels boisés n'est multiplié que par environ 1,8, le nb de pixels fonctionnels est multiplié par plus de 2 voir 3 (↓)
![[Pasted image 20251020141340.png|center|600]]

### Analyse de la [[Connectivité spatiale et fonctionnelle|connectivité]] par la recherche de zones de plus grande perméabilité

>[!info] La matrice, environnement parfois non-hostile
>Si initialement la matrice était considérée comme un milieu hostile (comme l'océan dans la [[Théorie biogéographique des îles|théorie biogéographique des îles]]), cette perception a évoluée.
>En effet, l'espace entre les taches du type d'élément de paysage étudié est différencié. Ainsi, **même en l'absence de corridor matérialisé**, il peut exister des **espaces ayant une fonctionnalité de corridor**, càd qui augmentent la connectivité.
>>![[Drawing 2025-10-20 14.32.37.excalidraw|center|1400]]
>
>La figure (↑) présente une analyse structurale de la perméabilité d'un paysage pour des sp d'insectes inféodés aux milieux herbacés.
>- On part d'une carte des prairies (A) qui permet de calculer les distances *euclidiennes* entre patchs
>- On considère que les espaces intermédiaires sont +/- perméables (B) ou introduisent une viscosité +/- grande qui vient s'opposer aux mouvements des insectes d'une tache de prairie à l'autre (C).
>- Lorsqu'on tient compte de cette rugosité dans le calcul des distances, on a un coût de déplacement qui s'ajoute à la distance euclidienne, permettant de donner une *distance fonctionnelle* (D).
>Ici, la rugosité est forte pour tous les espaces boisés, et varie pour les cultures selon la hauteur potentielle.
>On observe ainsi (zones entourées) que des espaces proches peuvent être séparés par des éléments très peu perméables. La distance est faible et la rugosité élevée, donc la perméabilité est très faible, *même s'il est rare que la probabilité de traverser soit nulle pour un propagule ou animal*.
>Ainsi, **alors que la connectivité spatiale est forte**, la **connectivité fonctionnelle** entre deux éléments de même nature peut devenir **très faible**.
>On décèle ainsi des zones de forte ou faible résistance à la circulation dans un paysage, qui peuvent permettre de poser des hypothèses sur les relations privilégiées entre certaines prairies entre lesquelles des échanges d'insectes sont plus fréquents qu'entre autres.
>On peut aussi rechercher les directions privilégiées **de départ** (pas les échanges cette fois ci) à partir d'une tâche donnée. 
>Ce type d'analyses structurale a seulement pour objectif de poser des hypothèses, comme savoir si les insectes floricoles présents dans une prairies se dispersent au hasard ou selon une direction privilégiée.
>Des orientations privilégiées dans les départs signifient que les insectes "perçoivent" la perméabilité. Des origines différenciées selon les directions signifient que les insectes se sont accommodés de perméabilités différentes.

### Variation de la connectivité au cours du temps en zone agricole

(se référer à l'exemple p100-101 de Burel et Baudry (fr) pour plus d'infos sur l'exemple testé)

La succession culturale a un impact importnat sur la connectivité. 
Pour les espèces vivant dans les cultures, les mouvements peuvent être beaucoup plus contraints par la rotation des cultures et leur distribution spatiale que par les surfaces cultivées.