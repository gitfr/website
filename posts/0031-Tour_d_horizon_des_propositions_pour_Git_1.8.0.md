<!-- 
.. link: 
.. description: 
.. tags: git
.. date: 2011/2/12 14:59:00
.. title: Tour d'horizon des propositions pour Git 1.8.0
.. slug: tour-d-horizon-des-propositions-pour-git-1.8.0
-->

Ca chauffe sur la **liste de diffusion** Git depuis la sortie de la 1.7.4 le mois dernier, car pas mal de propositions ont vu le jour pour la **1.8.0**. Ces sont facilement repérables avec le pattern *[1.8.0]* dans le sujet et sont décrites en 4 sections : proposition, histoire, risques et plan de migration. C'est un formalisme simple mais assez efficace.

Voici un rapide tour d'horizon :

* Unify "pathspec" semantics :
  La possibilité d'utiliser le *globbing* pour toutes les commandes.

* Tag namespaces :
  Distinguer les tags locaux des tags distants.

* Forbid full fetchspecs in git-pull :
  Ne plus permettre un refspec complet pour la commande `git fetch` pour éviter certaines erreurs.

* Handle submodule config options consistently in diff plumbing :
  Meilleure gestion du diff avec les submodules.

* Split largest remaining scripts, gitk and gitweb :
  Découper les scripts trop gros comme gitk.

* Make two-argument fetch update remote branches :
  Mettre à jour les branches distantes lors d'un fetch (et pas que le tag FETCH_HEAD).

* Default "git merge" without argument to "git merge @{u}" :
  Le résultat de la commande serait de merger avec upstream (et non de demander avec quoi merger).

* Change branch --set-uptream to take an argument :
  Améliorer l'utilisation de l'option, car on peut actuellement se tromper assez facilement.

* Support quoting in .gitattributes, .gitignore :
  Pouvoir ajouter des " pour séparer et pas seulement des espaces.

* Git checkout refs/heads/foo checks out branch foo :
  Réellement récupérer la branche et non un head détaché.

* git-stash invocation changes :
  Supprimer des confusions avec quelques simplifications mineures.


A titre personnel, je suis favorable à distinguer les tags, la récupération de la branche et non du HEAD détaché, l'amélioration de l'option `--set-upstream` et la mise à jour de la branche lors d'un fetch.
