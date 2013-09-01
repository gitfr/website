<!-- 
.. link: 
.. description: 
.. tags: git
.. date: 2011/6/13 3:24:00
.. title: Cycle de release raccourci

Junio, le mainteneur de Git, a proposé le 1er avril, de réduire le cycle de développement d'une version stable à 8 semaines. Cette nouvelle approche est effective depuis la sortie de la 1.7.5, ce qui veut dire que la prochaine versions stable, aka la 1.7.6 devrait sortir très prochainement (le 19 juin).

Le planning
-----------

* La première semaine aprés la sortie d'une release stable est consacrée en priorité à fixer les bugs de régression.

* Cycle d'intégration de nouvelles fonctionnalités à partir de la deuxième semaine, en fusionnant de la branche `next` vers `master`, ou de la branche `pu` vers `next`. 

* Semaine N, une version *release candidate* (rc0) est taggée. Tous les sujets dans `next` sont triés (pour inclusion dans `master` ou attente de la prochaine version).

* Semaine N+1, une deuxième version *rc* est taggée. L'objectif est de tester à fond pour trouver d'éventuelles régressions, et plus aucune fonctionnalité nouvelle est acceptée.

* Semaine N+2, une troisième *rc* sort.

* Semaine X, la version finale sort.

Vous pouvez constater 2 inconnues, *N* et *X*. Idéalement N est la quatrième semaine et X la huitième. Mais pas question pour Junio de respecter à la lettre les dates si un problème survient, c'est une feuille de route indicative, en sortant trois ou quatre *rc* si nécessaire.

Gestion des branches
--------------------

Ce cycle assez court pour un projet aussi important que Git est possible par la gestion des branches :

* master, la branche principale de la prochaine stable.

* next, la branche de stabilisation  de la prochaine stable.

* pu, la branche d'intégration de la prochaine stable.

* maint, la branche de maintenance de la dernière stable.

Une nouvelle fonctionnalité ne va pas directement dans `master`, mais passe d'abord par `pu`, puis `next`. Si tout donne satisfaction, alors la branche est mergée dans `master`. Cela signifie que :

* vous pouvez utiliser une version stable, en stabilisation ou en cours de développement.

* une fonctionnalité est largement testée, analysée et discutée avant d'arriver dans la branche principale.

On retrouve les bonnes pratiques des outils de gestion de source, mise à mal par l'**immonde** SVN (et ses amis) qui nous ont fait croire que les branches étaient le mal. Mais ca sera le sujet 
