<!-- 
.. link: 
.. description: 
.. tags: git, git-push, git-pull, refspec, configuration
.. date: 2011/12/11 23:19:00
.. title: Comportement par défaut du git push
.. slug: comportement-par-defaut-du-git-push
-->

Git est hautement configurable, avec des dizaines de variables possibles
dans le fichier de configuration, la longueur de l'aide de l'option config
donnant d'ailleurs quelques vertiges. Au lieu de faire un (très) long billet
sur les différentes possibilités de configuration, je vous propose plutôt
des billets courts sur un thème particulier de la configuration.

Pour ce premier billet, je souhaite aborder le comportement de Git lors d'un
push. Ce qui ont suivis l'atelier Git à Bordeaux ne seront pas étonnés par ce
choix : ayant totalement oublié cette option, je ne comprenais pas que ma
machine ne se comporte pas comme ceux des participants à l'atelier (ma
crédibilité en tant qu'expert Git en a sérieusement pâti :).

Commençons par lire le manuel sur l'option push.default :

Defines the action git push should take if no refspec is given on the command
line, no refspec is configured in the remote, and no refspec is implied by any
of the options given on the command line. Possible values are: 

* nothing - do not push anything.
* matching - push all matching branches. All branches having the same name in
both ends are considered to be matching. This is the default.
* upstream - push the current branch to its upstream branch.
* tracking - deprecated synonym for upstream.
* current - push the current branch to a branch of the same name.

Comme vous pouvez le constater, si aucun refspec n'est fourni (en ligne de
commande ou par configuration) le comportement par défaut est de pousser
toutes les branches qui existent en local et sur le serveur. Cela veut donc
dire que si vous tapez la commande `git push`, vous allez mettre à jour sur le
serveur toutes les branches que vous avez modifié en local, ce qui est rarement
souhaitable. Il faudra indiquer le refspec complet `git push origin mybranch`
pour éviter cela.

C'est pour cette raison que je configure Git avec l'option upstream :

> $ git config --global push.default upstream

2 avantages immédiats :

* Il ne pousse que la branche courante.
* Il m'oblige à faire un *tracking*, ce qui est bien utile.

Maintenant, si vous tentez de pousser la branche *test* avec la commande
`git push` sans tracking préalable, Git vous répond :

> fatal: The current branch test has no upstream branch.
> To push the current branch and set the remote as upstream, use
> 
>   git push --set-upstream origin test

Suivez le conseil de Git en tapant la commande ci dessus pour suivre votre
la branche distante test sur origin avec votre branche locale test. Vous verrez
immédiatement un changement sur votre shell avec l'information **u=**, qui 
indique que vos deux branches sont synchronisées.

Rappel sur le tracking
----------------------

Le tracking consiste à *associer* une branche locale et une branche distante
(dite *upstream* dans la terminologie Git), ce qui informe Git de la branche
distante à utiliser lors d'un `git pull`. Si vous ne comprenez pas pourquoi
vous n'êtes pas plus souvent confronté à cette notion de tracking, c'est tout
simplement que Git le fait pour vous la plupart du temps :

* Git suit la branche master lors d'un clone.
* Git suit la branche que vous venez de créer si celle ci existe déjà sur le
   serveur 

C'est donc (la plupart du temps) dans le cas ou créer une nouvelle branche en
locale sans existance préalable sur le serveur que vous devez explicitement
faire cette association.
