Loi statistique donnant l'abondance attendue de chaque espèce d'une communauté.

![[Pasted image 20251010150053.png|center|300]]
Peut être représentée sous la forme d'un histogramme des fréquences (diagramme de Preston ↑), ou d'un diagramme rang-abondance (RAC, rank abundance curve, diagramme de Whittaker ↓)
![[Pasted image 20251010150220.png|center|400]]
Le RAC est utilisable pour reconnaître des distributions connues, dont les principales sont : 
- La distribution en log-séries de Fisher
- La distribution géométrique
- La distribution log-normale
- Le modèle Broken Stick

#### La distribution en log-séries

Le nb d'espèces est lié au nb d'individus par $\large\mathbb{E}(S^{n})= \alpha \;ln(1+n/\alpha)$ avec $\large S^n$ le nb d'espèces observées dans un échantillon de $\large n$ individus. $\large \alpha$ est le paramètre qui fixe la pente de la partie linéaire de la relation, valide dès que $\large n > > \alpha$, où le nb d'espèces $\large S^n$ augmente proportionnellement au logarithme du nb d'individus $\large ln(n)$.


Ce modèle a été remis en valeur par la théorie neutre dans lequel la distribution de la [[Méta-communauté|méta-communauté]] est en log-séries.


#### La distribution Broken Stick

Si les espèces se partagent les ressources ou l’espace des niches, représentées par un bâton, par un processus de cassure aléatoire et simultanée (précisément, les $\Large s$ − 1 cassures du bâton sont distribuées uniformément sur sa longueur) et que leur abondance est proportionnelle à la quantité de ressources
ou d’espace de niche obtenus, alors leur distribution suit le modèle Broken Stick de MacArthur.
Parmi les distributions classiques, c’est la plus équitable : la distribution uniforme des probabilités ($\large{ p_{s}=} \frac{1}{S}$pour tout $\Large s$) n’est jamais approchée.
Elle est peu observée empiriquement.


#### La distribution log-normale

Dans une distribution log-normale, le logarithme des probabilités des espèces (notées ps pour l’espèce s) suit une loi normale. L’écart-type σ de cette distribution règle l’équitabilité de la distribution. Son espérance est obtenue à partir du nombre d’espèces et de σ, pour que la somme des probabilités égale 1.

La distribution est aussi le résultat d’un algorithme de bâton brisé (_broken stick_) hiérarchique ([Bulmer 1974](https://ericmarcon.github.io/MesuresBioDiv2/references.html#ref-Bulmer1974)) :

- Si les ressources (représentées par un bâton) sont partagées une première fois aléatoirement, selon une loi quelconque,
- Si chaque bâton obtenu est partagé à nouveau selon le même procédé, et que l’opération est répétée un assez grand nombre de fois,
- Si l’abondance de chaque espèce est proportionnelle aux ressources dont elle dispose,
- Alors la distribution des espèces est log-normale

Ce mécanisme décrit assez bien un mécanisme de partage successif des ressources, par exemple entre groupes d’espèces de plus en plus petits, correspondant à des niches écologiques de plus en plus étroites.

La distribution log-normale décrit assez bien (mais pas exactement) une communauté locale dans le cadre de la théorie neutre ([Stephen P. Hubbell 2001](https://ericmarcon.github.io/MesuresBioDiv2/references.html#ref-Hubbell2001)) comme le montre la figure. Le nombre d’espèces rares est un peu surestimé. La distribution exacte est donnée par Volkov et al. ([2003](https://ericmarcon.github.io/MesuresBioDiv2/references.html#ref-Volkov2003)).


#### La distribution géométrique

Si les espèces se partagent les ressources selon un algorithme _broken stick_ séquentiel (comme dans la distribution log-normale) mais de proportion fixe 0<k<1, alors la distribution obtenue est géométrique. Les abondances successives sont proportionnelles à k,k(1−k),k(1−k)2,…,k(1−k)s,…,k(1−k)S

C’est la distribution qui traduit l’absence de relation entre la taille de l’échantillon et l’abondance des espèces ([Pueyo, He, et Zillio 2007](https://ericmarcon.github.io/MesuresBioDiv2/references.html#ref-Pueyo2007)) : la distribution du logarithme de ses probabilités est uniforme. En d’autre termes, l’ordre de grandeur de l’abondance d’une espèce est uniformément distribué.

La distribution est observée dans les communautés pionnières ([Bazzaz 1975](https://ericmarcon.github.io/MesuresBioDiv2/references.html#ref-Bazzaz1975)), peu diverses, ou les communautés microbiennes ([Haegeman et al. 2013](https://ericmarcon.github.io/MesuresBioDiv2/references.html#ref-Haegeman2013)).

## Synthèse
![[Pasted image 20251014142808.png]]
Montre bien une gradation en termes de décroissance de probabilité entre des distributions de même richesse : de la plus équitable (broken stick) à la plus inéquitable (géométrique). Elle doit être nuancée : la proportion k de la distribution géométrique fixe la pente de la droite qui la représente sur la figure. k=10% sur la figure : une valeur plus faible diminuerait la pente. De même, l’écart-type de la distribution log-normale décrit sa dispersion. Une valeur supérieure augmenterait sa décroissance.

