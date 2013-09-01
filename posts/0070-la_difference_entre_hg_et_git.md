<!-- 
.. link: 
.. description: 
.. tags: git, hg
.. date: 2011/07/18 00:40:00
.. title: La différence entre Hg et Git
.. slug: la-difference-entre-hg-et-git
-->

J'aime beaucoup ce [billet](http://blog.daemon.com.au/blog-post/know-subversion-git-or-mercurial),
il résume parfaitement à mes yeux la différence majeure entre Hg et Git quand
on vient de SVN : il est possible d'utiliser Hg (Mercurial) comme un *SVN qui
marche*, ce n'est pas du tout le cas avec Git car très vite, on se retrouve à
faire des grosses bêtises si on n'a pas compris les concepts importants.

Hg, un SVN qui marche
----------------------

Ce n'est pas une attaque contre Hg, bien au contraire, c'est une choix
réfléchi de se comporter comme tel :

* C'est un outil de gestion de source.
* Chaque commit sait dans quelle branche il se trouve.
* Les possibilités de manipulation des branches sont assez réduites quand
  on n'ajoute pas d'extensions.

La volonté du fondateur de Mercurial est de toujours sacrifier les
fonctionnalités au profit d'une conception claire, là ou Linus Torvalds
avait en tête dés le départ un certain nombre de fonctionnalités. La vitesse
étant le seul objectif qui autorise à sacrifier des fonctionnalités.

Hg est un outil puissant, qui autorise ce que SVN ne permettait
pas (pour être précis, il le faisait tellement mal qu'on **ne se permettait
pas** de le faire) : une gestion plus fine des branches. Avec Hg, créer des
branches et *merger* ne pose plus de soucis particulier. Comme le dit 
l'article :

> For Hg, the instructor goes through the Hg primer with the student. The
> student is then left to use Hg with the instructor watching. Every time
> the student begins to think about branching or merging, the instructor hits
> the student over the head with the bat. This provides a negative
> reinforcement for the student's SVN branching and merging habits.

Une fois assimilées la gestion des branches et la notion de distribué, on se
débrouille relativement bien. Je connais d'ailleurs peu d'utilisateurs
de Mercurial qui ont étudiés le DAG, ou les possiblités avancées des 
branches (rebase, cherry-pick...).

Git, un outil de gestion de contenu
-----------------------------------

C'est une notion importante à saisir, Git n'est **pas** un outil de gestion de
source (VCS). Comme avec n'importe quel outil de contenu, il est possible de
modifier ou de supprimer ce que l'on veut : Git permet de **modifier
l'historique**, ce qui n'est pas le cas d'un VCS, comme CVS, SVN ou Hg. De
ce postulat simple découle une autre philosophie, et donc une utilisation
sensiblement différente : une distinction entre *branche du DAG* et *branche
utilisateur*.

Une branche du **DAG** (*directed Acyclic Graph* ou *graphe orienté acyclique*)
est manipulée par Git et permet de suivre les modifications du code : qui est
le descendant de qui ? Avec ce graphe, il est simple pour un DVCS de savoir
quoi faire lors d'une opération comme une fusion (un merge). Mais chaque
branche est **anonyme**, elle ne porte pas de nom. Les noms de branches
sont dans un **espace différent**, distinct, qui permet de les manipuler
indifféremment du DAG. Ou inversement de manipuler le DAG sans toucher aux noms.
Cet espace utilisateur est appelé **référence**.

**Note** : Je reviendrai la dessus dans un prochain billet, il est temps
maintenant de transformer la conférence #gitfr en billet.

Cette distinction est source de confusion, d'erreur et de déception. Mais c'est
ce qui rend Git si **puissant** !

C'est ce que dit la suite du billet :

> At the very beginning, the instructor bashes the student repeatedly over the
> head with the bat until all brain cells containing any memory of SVN are
> destroyed. The instructor then teaches the student the Git primer.

J'aime beaucoup cette image :). Il ne faut surtout pas utiliser Git comme on
utilise SVN, ni de prêt ni de loin, il faut **ré-apprendre** ce qu'est le
contrôle de version. Je ne dit pas que cela est facile, c'est même la raison
première de la création de #gitfr.

Mais ce travail est valorisé au centuple une fois Git maitrisé, et vous ouvre
un champ des possibles inimaginable quand on vient de SVN...
