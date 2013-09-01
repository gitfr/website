<!-- 
.. link: 
.. description: 
.. tags: git
.. date: 2010/12/12 2:35:00
.. title: Structure d'un dépôt Git
.. slug: structure-d-un-depot-git
-->

Un dépôt Git se matérialise par la présence du répertoire `.git`. Il est unique, contrairement à *SVN* et *CVS* (et quel bonheur de ne plus avoir tous ces sous répertoires !), et se trouve à la racine du projet (`myproject/.git`). Dans le cas d'un dépôt partagé (dépôt *bare*), le contenu de ce sous répertoire se trouve directement dans le répertoire principal.

La structure est trés simple. Voici un exemple avec un dépôt qui vient d'être créé :

![](http://media.tumblr.com/tumblr_ldag4xEM841qdkaiq.png)

- config : fichier de configuration du dépôt (nous aborderons la configuration dans un autre billet).

- description : fichier texte que vous devez modifier pour expliquer en une phrase le contenu du dépôt. Cette description est affichée par des outils comme **Gitweb** ou **cgit**.

- objects : ce répertoire contient tous les objets (blob, tree, commit, tag). Chaque object est contenu dans un fichier séparé, accessible par un sous répertoire dont le nom correspond aux deux premières lettres du SHA1 de l'objet (ce qui donne 256 sous répertoires au maximum). Exemple : si un objet commence par `a156bc76e`, alors l'objet sera localisé dans le répertoire `objects/a1/`, avec pour nom de fichier `56bc76e`. Quand le nombre d'objets dépasse un seuil, Git compresse les objets, ajoute un fichier index et déplace le tout dans le sous répertoire `objects/pack`.

- refs : toutes les références sont dans ce répertoire. Dans le sous répertoire **heads** si cela concerne une branche, **tags** si c'est un tag et **remotes** si c'est une branche d'un répôt distant. Vous pouvez aussi trouver le répertoire `packed-refs` dans le cas des packs Git.

- HEAD : c'est une référence symbolique, son contenu n'étant pas un commit mais une autre référence. Elle pointe sur la branche courante. Il existe une exception dans le cas d'un **detached head**, HEAD pointe alors directement sur un commit.

- branches : ce répertoire n'est plus utilisé.

- hooks : contient les scripts de personnalisation.

- index : fichier binaire qui contient la liste des fichiers en cours de modification (cela représente le commit en cours de création, appelé en anglais *staging*). vous pouvez parcourir ce fichier avec la commande `git ls-files --stage`.

- info : informations additionnelles utilisées par Git, comme les attributs ou les fichiers à ignorer.

- logs : tout changement est enregistré dans un fichier de log, avec un fichier par branche ou tag.
