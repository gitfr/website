<!-- 
.. link: 
.. description: 
.. tags: git, git-add
.. date: 2011/3/29 8:53:00
.. title: La commande add

La commande que l'on utilise juste après *init* ou *clone* est bien évidemment la commande *add*. Celle ci permet de modifier le contenu de l'index.

L'index ?
=========

Git se différencie des autres outils en intégrant la notion d'index. Vous pouvez le voir comme un **commit temporaire**. Commit car il est effectivement enregistré comme tel dans le dépôt, mais temporaire car il est géré complètement différemment. 

Quand on vient de *SVN* ou de *Hg*, cela peut paraitre au premier abord assez lourd : a quoi cela peut il bien servir ? Tout simplement à construire tranquillement son commit, en permettant des «va-et-vient» entre son code (que l'on peut étudier ou modifier) et la construction de son commit. Une fois utilisé, on devient accro et on ne s'en lasse pas. Mais nous verrons plus tard que l'on peut shinter l'index si cela n'est pas utile.

Une différence importante
===================

Quand vous appelez la commande add, vous ne demandez pas à Git d'ajouter le fichier, mais seulement le **contenu** de ce fichier au moment de l'appel de la  commande. Késako ? Avec *svn add* (ou *hg add*), vous demandez à svn d'intégrer toutes les modifications futures de ce fichier, alors que Git va seulement intégrer les modifications **actuelles** de ce fichier. Si vous faites de nouveau des modifications, il faudra appeler une deuxième fois la commande add.

C'est pour cela que vous pouvez retrouver ce même fichier dans l'état «changes to be commited» (aka dans l'index) et l'état «changes not staged to commit» (modifier dans le répertoire de travail) en **même temps** : vous avez modifié le fichier, fait un add puis modifié de nouveau le fichier. Cela peut sembler un peu complexe au premier abord, mais cela vous permet de «jouer» avec votre dernier commit car il est fait pour cela. Une fois que vous êtes sur de votre coup, vous commitez réellement.

On retrouve la philosophie «gestionnaire de contenu» et non «gestionnaire de fichier» que je cite dans mes présentations. Pour faciliter la vie, Git possède aussi une notion de fichier tracé (voir plus bas la commande -u), mais c'est à vous de décider de prendre en compte systématiquement toutes les modifications en cours. Par défaut, il vous demande de sélectionner chaque modification.

Une fois comprise et maitrisée, cette étape et un élément important dans la construction d'un **historique propre**.


Modifier l'index
================

Rien de plus simple :

> $ git add $filepattern

Le pattern peut être un fichier (*git add monfichier.txt* par exemple).

Ajout interactif
================

Si l'ajout en ligne de commande vous semble ennuyeuse, un shell est à votre disposition pour vous simplifier la tâche. Il suffit de taper le numéro de la commande puis de choisir le ou les fichiers impactés.

![](http://media.tumblr.com/tumblr_lipq1n3EbQ1qdkaiq.png)

Personnellement, je n'utilise pas beaucoup le mode interactif.

Ajout par hunk
============

Mais j'apprécie particulièrement l'option **-p**. Ce dernier permet d'ajouter du contenu par petits bouts de code, appelez **hunk** :

![Exemple d'un hunk](http://media.tumblr.com/tumblr_lipqrbfx1s1qdkaiq.png)

Imaginez que vous avez modifié plusieurs fichiers (ou plusieurs fois le même fichier), portant sur des sujets qui n'ont rien à voir. Cette option me liste les hunks et me demande pour chacun d'eux si je souhaite l'intégrer dans l'index. Je peux ainsi construire un **commit unitaire**, un commit cohérent qui ne mélange pas des modifications sans relation entre elles. Même si j'ai travaillé de manière brouillone dans mon espace de travail.

De plus, la commande vous propose plusieurs possibilités, comme celle de laisser un hunk *undecided*, afin d'y revenir plus tard. Vous pouvez même éditer un hunck pour le modifier.C'est une option que je vous recommande chaudement.

**Note** : cette option est en fait un raccourci vers la sous commande *patch* de l'ajout interactif vu juste avant.

Edition d'un patch
==================

Vous pouvez directement modifier vos changements avec l'option *-e*. Je n'utilise personnellement pas cette possibilité (ni directement, ni par l'option -p).

Deux raccourcis utiles
=================

L'option *-a* ajoute le contenu de tous les fichiers du répertoire de travail, *-u* seulement le contenu des fichiers déjà tracés.

