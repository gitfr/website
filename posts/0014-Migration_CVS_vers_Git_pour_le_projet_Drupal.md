<!-- 
.. link: 
.. description: 
.. tags: git, migration
tags: drupal
.. date: 2010/11/17 8:39:00
.. title: Migration CVS vers Git pour le projet Drupal

Le projet [Drupal](http://www.drupal.org) est en cours de migration depuis plusieurs mois (le choix de migrer sur Git est décidé depuis février 2010). C'est donc toute une communauté qui faut former à l'outil, mettre en place des nouvelles pratiques, recoder l'infrastructure (intégration continue, deploiement...). Travail important s'il en est.

Aprés une [évaluation des différents outils et du choix final](http://groups.drupal.org/node/48818), [trois étapes](http://drupal.org/community-initiatives/git) et dix sprints de deux semaines sont planifiés. La migration s'étale donc sur environ 15 mois.

Les 3 phases :

* création d'un mirroir Git en lecture seul (recréé régulièrement)
* utilisation de Git en mode centralisé
* utilisation de Git en mode décentralisé

On peut noter que l'équipe infrastructure de Drupal était pour *Bzr*, mais que la communauté Drupal était majoritairement pour Git. Le choix *Hg* fut éliminé par manque de soutient.

Voici la feuille de route :

* Sprint 1 - Making key decisions necessary for the project to move forward
* Sprint 2 - Version Control API
* Sprint 3 - VC API / Admin Interface and Migration Script Finalization
* Sprint 4 - Release-Worthy Views for VC API and Git Activity Log 
* Sprint 5 - VC API / Project Module Integration
* Sprint 6 - Project Module (Release Nodes being automatically generated for repositories containing appropriately named branches)
* Sprint 7 - Preparation for Broader Community testing
* Sprint 8 - Community Testing
* Sprint 9 - Community Testing and Deployment Preparation
* Sprint 10 - Deployment (CVS will be gone forever)

Vous trouverez les résumés des [sprint 1](http://groups.drupal.org/node/100999), [sprint 2](http://groups.drupal.org/node/101004) et [sprint 3](http://groups.drupal.org/node/102104).

Le [mirroir Git](http://git.drupalcode.org/) est déja en place puisque nous sommes à la phase 2, vous pouvez constater le nombre assez impressionant de dépôts. Les scripts de migration CVS vers SVN sont sur [GitHub](https://github.com/sdboyer/drupalorg-git).

On a vu fleurir les présentations et les formations Git, comme au [Bootcamp Git De Los Angeles](http://groups.drupal.org/node/71473) ou au [DrupalCon de Copenhague](https://docs.google.com/present/view?id=0ATSj3ekASkFxZGRzZDVzdzdfNTA2Z2g1Mm1qZng&hl=en).

Si vous souhaitez suivre la migration, lisez régulièrement cette [page](http://groups.drupal.org/drupal-org-git-migration-team) ou par *Twitter* avec **@DrupalGitGremln**.
