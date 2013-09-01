<!-- 
.. link: 
.. description: 
.. tags: git, refspec, git-clone, git-remote, git-fetch, git-pull, git-push
.. date: 2011/10/09 17:53:00
.. title: Comprendre le refspec
.. slug: 
-->

Si vous avez déjà travaillé avec un dépôt distant, vous savez comment se
comporte Git : il vous indique les références du dépôt distant en
ajoutant l'espace de nom `origin` (dans le cas d'un clone) ou le nom que
vous lui donnez si vous l'avez ajouter avec la commande `git-remote add`.
Mais pourquoi Git a t'il ce comportement ?

La réponse se trouve dans le **refspec**, nom un peu barbare, qui pourrait
se traduire en bon français par : «comment je gère les dépôts distants
chef ?». Soit ce refspec est spécifié en ligne de commande au moment
de l'action (fetch ou push), soit elle se trouve dans le fichier de
configuration du dépôt.

Petit rappel
------------

Il est **impossible** de modifer directement un dépôt distant, vous devez
obligatoirement modifier le dépôt local puis pousser vos commits
sur le dépôt distant. Autrement dit, modifier un dépôt consiste à
synchroniser les bases de données.

C'est là que le refspec rentre en jeu, il permet de définir les branches
concernées au moment de la synchronisation.

Clonage
-------

Si vous joué rarement avec le refspec, c'est que vous travaillé la plupart
du temps sur un dépôt local que vous avez créé avec la commande `git-clone`.
Ce dernier génère un refspec générique suffisant. Editez le fichier
`.git/config` et vous verrez ces lignes :

    [remote "origin"]
    fetch = +refs/heads/*:refs/remotes/origin/*
    url = /path/to/repos

Une explication rapide : le dépôt distant qui se trouve à l'url spécifié
s'appelle en local *origin* et on associe à chaque référence de branche
du dépôt distant une référence de branche locale préfixée par *origin*.

Mais un deuxième rappel avant d'aller plus loin.

Structure des références
------------------------

La gestion des références est d'une simplicité affligeante. Tout est contenu
dans le répertoire `.git/refs`. Un répertoire étant un espace de nom, un
fichier une référence. Pour fonctionner, Git à besoin de 2 espaces de nom
bien particulier :

* *heads* pour stocker les références locales de type branche.

* *tags* pour stocker les références locales de type tag.

Vous ne faites pas attention à ces répertoires en temps normal car les
commandes Git savent pertinamment que les références sont à ces endroits
précis.

Explication
-----------

Si je vous dis qu'un refspec s'écrit toujours `source:destination`, la ligne
suivante ne doit pas vous poser trop de soucis. Examinons la de plus prêt :

> fetch = +refs/heads/*:refs/remotes/origin/*

* Le mot clé fetch indique que c'est lu à chaque utilisation de cette commande
  Le sens de transfert est du dépôt distant (la source) vers le dépôt local
  (la destination).

* Le symbole `+` signifie qu'on autorise les récuparation *non fast-forword*.

* le reste de la ligne est assez explicite. Pour toutes les références se
  trouvant dans le chemin `refs/heads/` dans le dépôt distant, on associe une
  référence dans le chemin `refs/remotes/origin/` dans le dépot local. 

Si par exemple le dépôt distant a 3 branches qui se nomment `riri`, `fifi` et
`loulou`, vous aurez donc en local 3 branches `origin/riri`, `origin/fifi` et
`origin/loulou`.

Importance du refspec
---------------------

Il est important de maitriser le refspec car tout part de là, c'est en fonction
des références à récupérer ou à pousser que Git détermine les objets à 
synchroniser. Si je demande à récupérer toutes les références distantes, je demande
implicitement tous les objets accessibles par ces références, donc toute la base.
Au contraire, si le refspec implique des références précises, seuls les objets
nécessaires à ces références seront impactés.

Ajout d'un dépôt distant
------------------------

La commande `git-remote` permet de manipuler les dépôts distants, avec
notamment la commande `git-remote add` pour en ajouter. Ce dernier se comporte
comme la commande `git-clone`, en configurant le refspec au plus
large (toutes les références donc).

refspec en ligne de commande
----------------------------

Le refspec se manipule aussi en ligne de commande, ce qui permet de passer
outre la configuration ou d'utiliser Git sans configuration préalable.

Quelques exemples :

> git fetch origin +pu:tmp

Récupére la référence *pu* et les objets associés et appeles la *tmp*
en local.

> git push HEAD:master

Pousse la branche actuelle sur la branche distante master.

> git push origin master:refs/heads/qa/experimental

Pousse la branche master sur la branche distante expérimental. Nous
utilisons ici le nom complet de la référence. 

Le refspec :
------------

Refspec particulier qui indique de mettre à jour toutes les branches
distantes existantes qui ont un nom identique aux branches locales. C'est en
fait le refspec utilisé par défaut au push quand nous en spécifions pas.

Effacer une référence distante
------------------------------

Autre cas particulier. Si vous souhaitez par exemple effacer la référence
distante test si vous souhaitez effacer une référence distante,
il faut taper :

> git push :test

Autrement dit, je pousse une référence vide sur la référence test.

Associer branche locale / branche distante
------------------------------------------

Comme nous l'avons vu, le refspec en ligne de commande permet d'associer
temporairement une branche locale et une branche sur le dépôt distant. Mais
comment associer ces deux branches dans la configuration et éviter ainsi de
le répêter à chaque fois ? Tout se situe encore dans le fichier
`.git/config` du dépôt local :

    [branch "master"]                                                                                   
    remote = origin                                                                             
    merge = refs/heads/master   

Qui veut dire : associe la branche master du dépôt *origin* à ma référence
locale `master`. Et oh surprise, la ligne est utilisée pour la commande
`merge`, ce qui est tout à faire logique. la commande `git-fetch` ne fait que
récupérer les objets et associer des références. Si vous voulez mélanger
votre travail avec le travail distant, il faut donc faire un merge.

Petite remarque, c'est uniquement quand vous avez spécifiée une branche
distante (*upstream* dans le vocabulaire Git) que votre shell vous indiquera
si vous avez des commits en avance ou en retard (logique non ?). Cela arrive
quand vous avez créé une nouvelle branche locale mais sans l'avoir poussée
sur le dépôt distant.

pull = fetch + merge
--------------------

Vous devez maintenant comprendre pourquoi on dit que la commande `git-pull`
n'est en fait qu'un raccouri pour :

1. git-fetch
2. git-merge origin/master

A quoi sert le fetch ?
----------------------

La commande `git-pull` est une commodité car c'est dans 90% des cas ce que l'on
souhaite faire. Mais le merge est seulement une des nombreuses possibilités que
vous offre Git. La beauté du travail collaboratif avec Git est que cette branche
distante est en fait une branche locale (c'est uniquement la référence qui est
distante), et que vous pouvez donc faire ce que vous souhaitez avec, comme
cherrypicker des commits, faire un rebase... ou un merge. C'est à vous de voir
ce qui vous intéresse. C'est la raison pour laquelle des personnes disent sur
le Net de ne pas faire que des fetch.

Notez qu'il existe l'option `--rebase` pour rebaser automatiquement votre
branche locale sur la branche distante (ce qui est la aussi un scénario de
base).

Conclusion
----------

Je pense avoir fait le tour. Comme d'habitude je vous conseille de de lire
les pages du manuel (git-clone, git-fetch, git-push et git-pull).
