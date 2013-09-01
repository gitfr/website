<!-- 
.. link: 
.. description: 
.. tags: github, migration
.. date: 2011/10/01 15:29:00
.. title: Plone sur GitHub

[Plone](http://www.plone.net), le plus gros CMS Libre vient lui aussi de
[passer sur GitHub](https://github.com/plone). Vous pouvez donc constater la
présence de 127 (!) dépôts Git. Ce nombre important vient de la programmation
par composant du monde *Zope* (une fonctionnalité = un composant Python = un
dépot Git).

Pourquoi je parle de cette migration en particulier alors que de nombreux
projets Libres passent sur GitHub ? Tout simplement car c'est aussi un des
plus gros projets **Python**, langage utilisé par les deux principaux
«concurrents» de Git, à savoir *Mercurial* et *Bazaar*. Ce choix fait suite
à  un sondage chez les développeurs pour déterminer la prochaine
plateforme d'hébergement (3 réponses possibles : oui, neutre, non) :

* Héberger son prore serveur Git : 10, 36, 33
* Héberger son prore serveur Hg : 8, 18, 53
* Héberger son prore serveur Bzr : 1, 3, 75
* Sur GitHub : 46, 21, 12
* Sur Bitbucket : 8, 18, 53
* Sur Launchpad : 4, 6, 69
* Continuer avec son propre serveur SVN : 28, 30, 21

Ce résultat est révélateur sur plusieurs points :

* Un rejet absolu de Bzr. Personne n'en veut à part quatre personnes.
* Un rejet massif de Launchpad et dans une moindre mesure de Bitbucket (plutôt
  étonnant).
* Peu de gens sont pour héberger un serveur DVCS, ce qui me semble encore une
  fois assez étonnant. Il est facile par exemple d'administrer un serveur Hg.
  Plus un problème de méconnaissance ?
* Plus de la moitié des votants sont en faveur de GitHub, sans être un
  plébiscite.

La conclusion qui semble se dégager de cette enquête est que c'est encore une
fois GitHub qui fait pencher la balance vers Git, et non l'inverse. D'autant
plus que choisir Git signifie faire une croix sur la possibilité pour un
développeur Python de coder facilement des extensions Mercurial, atout non
négligeable quand on gère un projet.
