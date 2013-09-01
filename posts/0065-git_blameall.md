<!-- 
.. link: 
.. description: 
.. tags: git, outil
tags: blameall
.. date: 2011/6/13 2:22:00
.. title: git blameall

Vous connaissez surement la commande `blame`, présent dans tous les outils de gestion de source, et qui permet de connaitre l'auteur de chaque ligne d'un fichier. Dan Gindikin nous gratifie de [git-blameall](http://1dan.org/git-blameall/), un petit script en Python (il faut donc qu'un interpréteur Python soit présent sur votre système, ce qui est le cas par défaut sur Linux et MacOS) qui permet d'avoir la mếme information pour toutes les lignes qui ont existées dans l'histoire de ce fichier.

Vous avez donc une colonne supplémentaire qui vous donne le SHA1 ou cette ligne fut effacée. A garder sous le coude !

Voici une copie d'écran :

![](http://1dan.org/git-blameall/git-blameall-screen1.png)
