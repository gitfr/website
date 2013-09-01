<!-- 
.. link: 
.. description: 
.. tags: git git-diff
.. date: 2012/01/26 15:48:00
.. title: La commande diff
.. slug: la-commande-diff
-->

Vous connaissez surement la commande `git-diff`, puisqu'elle existe sur Hg ou
SVN. Mais comme d'habitude, git fourmille de possibilités. Petit tour
d'horizon.

Le base
-------

Commençons par le basique. Pour connaître les différences entre votre
répertoire de travail et votre index :

>$ git diff

Entre l'index et votre dépôt :

>$ git diff --staged

Entre le répertoire de travail et le dépôt :

>$ git diff HEAD

**Note** : la notation HEAD se retrouve assez souvent (git-log, git-reset...)
quand on parle du dépôt, vu qu'il s'agit du commit courant, c'est à dire notre
position sur le graphe (l'index étant le prochain commit).

La commande permet de spécifier des fichiers ou des commits (ces deux
possibilités peuvent être combinées) :

>$ git diff -- monfichier

>$ git diff commit

Si vous voulez connaître la différence entre 2 commits :

>$ git diff commit1 commit2 

Plus intéressant, si vous voulez savoir ce qui existe dans une branche et pas
dans l'autre :

>$ git diff commit1...commit2

Cela se lit comme suit : affiche moi ce qui existe entre l'ancêtre commun aux
deux commits jusqu'au commit2 qui n'existe pas de l'ancêtre commun au commit1.

Le contexte
-----------

Par défaut, Git vous propose un contexte de 3 lignes, c'est à dire qu'il
affiche 3 lignes supplémentaires en dessous des changements pour vous donner
plus d'indications. Si vous trouvez cela insuffisant, voici 2 techniques
possibles :

1. La 1ère est bien sûr d'augmenter le contexte avec l'option `-U`

> $ git diff -U5

Pensez à faire un alias si vous préférez toujours disposer d'un contexte d'une
taille différente.

2. Demander à Git la fonction qui contient la modification

> $ git diff -W

C'est une nouveauté de la version 1.7.8. Vu le nombre impressionnant de
langages il n'est pas sûr que Git se débrouille correctement mais d'après mes
premiers tests en Python, cela semble plûtot bien fonctionner.

Ignorer les espaces
-------------------

Il est désagréable de voir son diff pourri parce qu'un collègue à aussi
supprimer des espaces. Vous avez à votre disposition les options `-b` `-w` pour
ignorer les espaces en fin de lignes ou toutes les espaces.

Algorithme patience
-------------------

La commande implémente aussi un autre algorithme de détection de changement du
nom de *Patience*. Pour faire très court, cet algo se focalise uniquement sur
des lignes à fort contenu, alors que l'algorithme classique travaille sur
toutes les lignes. Il y'a des cas ou c'est intéressant de l'essayer (notamment
quand le diff classique est complètement perdu).

**Note** : pour de plus amples explications, veuillez vous référer à cette
page [ci](http://bryanpendleton.blogspot.com/2010/05/patience-diff.html) et à
celle [la](http://alfedenzo.livejournal.com/170301.html).

Faire des statistiques
----------------------

Je vous laisse regarder par vous même les options `--stat`, `--numstat`,
`--shortstat`, `--dirstat` et `--summary` :).

Afficher les différences sur la même ligne
------------------------------------------

Il est intéressant, par exemple pour de la documentation, d'afficher les
modifications sur la même ligne. C'est tout l'intérêt du mode *word diff*.

>$ git diff --word-diff

Ne pas afficher les prefixes
----------------------------

Ne pas afficher les a/ et b/, utilise quand on fait des copier / coller :

>$ git diff --no-prefix

Chercher une chaine dans le contenu
------------------------------------

Si vous cherchez une chaine particulière dans le contenu d'un commit (cad les
lignes qui ont été ajoutées ou supprimées), c'est l'option pickaxe qu'il vous
faut :

>$ git diff -Srenderer HEAD~10..HEAD

Vous pouvez utiliser une expression rationnelle avec l'option `-G`.

**Note** : l'option `--pickaxe-all` affiche l'ensemble du commit, et pas
uniquement les fichiers impactés.

Générer un patch
----------------

Le comportement par défaut de Git est de générer un patch :

>$ git diff > diff.patch

Et encore plein d'autres options
--------------------------------

Comme d'habitude, je vous recommande chaudement de lire le manuel de la
commande tellement Git regorge d'options (notamment pour aider au scripting).
Je n'ai pas parlé de l'option `--check` pour vérifier les espaces inutiles, le
`-M` et le `-C` pour détecter copie et déplacement...
