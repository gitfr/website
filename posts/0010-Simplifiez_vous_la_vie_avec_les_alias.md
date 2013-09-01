<!-- 
.. link: 
.. description: 
.. tags: git, configuration
.. date: 2010/11/4 3:33:00
.. title: Simplifiez vous la vie avec les alias
.. slug: simplifiez-vous-la-vie-avec-les-alias
-->

Git est un couteau Suisse, avec beaucoup de sous commandes et d'options. Il n'est pas rare de taper des lignes assez fastidieuses comme celle ci :

>`$ git log --graph --abbrev-commit --date=relative`

Outre le fait qu'il faut retenir par coeur beaucoup de choses (la commande log est à cet égard un bel exemple), cela devient vite **trés** pénible. Les alias sont la justement pour vous simplifier la vie. Par exemple, pour disposer de raccourci des commandes usuelles :

>`$ git config --global alias.ci commit`
>
>`$ git config --global alias.co checkout` 
>
>`$ git config --global alias.br branch` 
>
>`$ git config --global alias.st status` 

Ou pour reprendre le premier exemple de ce billet :

>`$ git config --global alias.glog 'log --graph --abbrev-commit --date=relative'`

Vous pouvez maintenant visualiser vos logs avec la commande `git glog`. 

Ce qui est formidable avec les alias est qu'ils marchent si on mélange alias et commande "normale". Par exemple :

>`$ git glog --first-parent`

Une autre possibilité intéressante est d'appeler une commande **Shell**. Il suffit pour cela de commencer son alias avec **!** (point d'exclamation). Par exemple :

>`$ git config --global alias.ka "!gitk --all"`

La commande **git ka** appelle le programme `gitk` avec l'option `--all`.

Je vous conseille d'user et d'abuser des alias pour :

- simplifier l'utilisation de commandes complexes
- disposer d'un environnement à votre main, avec des raccourcis qui vous parlent

Pour illuster le deuxieme point, je préfère taper **undo** que `git reset --hard`. C'est un choix purement personnel. A titre d'exemple, mon fichier contient 36 alias.

**Note** : Cerise sur le gateau, la complétion fonctionne aussi avec les alias.
