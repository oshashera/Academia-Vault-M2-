---
sources:
  - https://jonathanlenoir.wordpress.com/wp-content/uploads/2013/12/ecologie-du-paysage.pdf
  - "Burel & Baudry, Écologie du paysage : concept, méthodes et applications (2nde édition)"
---

Un paysage, c'est un ensemble de types d'éléments plus ou moins [[Fragmentation|fragmentés]] ou [[Connectivité spatiale et fonctionnelle|connectés]] : c'est la [[Structures en tâches (patches)|mosaïque paysagère]] que l'on reconnaît comme un ensemble spatialement hétérogène.

>[!summary] L'hétérogénéité a deux composantes :
>La **diversité** des éléments (taches) du paysage, et la **complexité** de leurs relations spatiales.
>Il s'agit respectivement de l'hétérogénéité de **composition** et de l'hétérogénéité de **configuration**
>![[Drawing 2025-10-17 12.02.54.excalidraw|center|550]]

### Mesure de l'hétérogénéité

#### Formule 
Indice fonction du nombre d'habitats et de la surface cumulée de chaque habitat.
$$\Large H=\frac{-\sum\limits^{S}_{i=1}{(p_i)ln(p_i)}}{ln(s)}$$
avec $\large p_i$ = proportion du paysage occupé par le type d'habitat
$\large s$ = nombre de types d'habitat dans le paysage.
H varie entre 0 (hétérogénéité) et 1 (homogénéité).
![[Pasted image 20251016171330.png|left|300]]![[Pasted image 20251016171349.png|170]] avec ici H=$\large \frac{-0,43*ln(0,43)+0,07*ln(0,07)+0,07*ln(0,07)+0,16*ln(0,16)+0,16*ln(0,16)+0,11*ln(0,11)}{ln(6)}$=0,87


**==OU==** (selon Burel et Baudry), on a $$H=-\sum p(i,j)\;log\;p(i,j)$$
avec "i" et "j" 2 types de 2 pixels adjacents horizontalement et verticalement, appartenant à l'ensemble $\mathbf{U}$ des types d'unités dans un paysage.
La prise en compte de couples de pixels (i,j) équivaut à une mesure de leur connectivité spatiale, connectivité intra et inter taches.
Cette définition permet l'utilisation de concept de la théorie de l'information :
- La *self-information* de la classe (i,j) = $\large -p(i,j)\;log_{a}[p(i,j)]$ c'est la **contribution de la classe (i,j)** à l'hétérogénéité globale.
- L'**hétérogénéité maximale**, cas de l'équirépartition $\large H_{max} = log_{a}(U^2)$.
- La **redondance**, $\large \mathbf{R} = 1-H/H_{max}$. Varie entre 0 et 1. Elle augmente avec la répétition d'un motif dans le paysage. 

<br>
<br>La valeur de l'hétérogénéité dépend de l'[[Etendues (extents) et grains (grains)|extension]] de l'espace étudié.
La valeur de l'hétérogénéité varie aussi avec le [[Etendues (extents) et grains (grains)|grain]] : 
![[Pasted image 20251017151922.png]]On construit ici (↑) des cartes en prenant un pixel sur 2,10,30.... Donc une perte d'information. On observe d'abord une augmentation de l'hétérogénéité puis une fluctuation aléatoire due principalement au faible nombre de pixel sur la carte.
Si on observe initialement une augmentation de l'hétérogénéité, c'est du fait de l'éclaircissement des pixels qui amène à une diminution de la taille des taches et donc la connectivité intra élément, et augmenter la fréquence des relations inter-éléments. Ensuite les 2 types de connections sont réduites alternativement.

On utilisera cette mesure (burel/baudry) pour comparer des paysages **ayant les mêmes types d'éléments** ou pour étudier l'**évolution d'un paysage**, car on obtient des valeurs identiques pour des proportions inversées entre les types d'éléments du paysage.

