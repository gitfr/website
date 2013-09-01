<!-- 
.. link: 
.. description: 
.. tags: git, git-commit
.. date: 2011/4/23 2:17:00
.. title: La commande commit

Maintenant que nous savons construire notre commit temporaire (l'index), nous allons voir comment le transformer en commit définitif. Il est intéressant de noter que vous pouvez **shinter** la commande `add` de plusieurs façons :

* En désignant le(s) fichier(s) directement : `git commit monfichier`

* En mode interactif (en fait appelle son équivalent dans `git add`) : `git commit -i`

* En prenant tous les fichiers déja tracés, avec l'option `git commit -a`

Comme j'ai pu le dire dans mes présentations, je vous conseille fortement d'utiliser l'index, même si cela peut sembler inintéressant ou futile au premier abord (vous allez surement pensez cela au début).

La commande `commit` dispose de plusieurs options pour vous simplfier la vie. Comme spécifier l'auteur (`--author=`), la date (`--date=`), le contenu d'un fichier comme message de commit (`-F`), signer le message (`-s`), spécifier le message en ligne de commande (`-m`)... Bref, rien de bien compliqué et je vous encourage, comme d'habitude, à lire le manuel (`man git commit`). Mais je vous propose néanmoins de nous attarder sur 2 options fort intéressantes.

Commencer par un commit vide
------------------------------

Quand je créé un dépôt, je commence toujours pas un commit vide (option `--allow-empty`) pour avoir  un commit de **référence**. A quoi cela peut il servir ?

* Si je travaille directement dans *master*, je peux revoir l'ensemble des commits (par un `rebase -i`, article à venir), ce qui n'est pas possible si mon premier commit contient des données.

* Si je travaill dans une branche, je peux faire un merge (autre article à venir) en modélisant le merge dans master. Ce qui n'est pas possible si je n'ai pas de commit uniquement dans master.

Je trouve que c'est une très bonne pratique que je vous conseille. Pour ma part, j'appelle  toujours ce commit «Initial commit».

Modifier son dernier commit
---------------------------
Malgré l'index, il m'arrive souvent de me rendre compte d'une erreur aprés coup. C'est la qu'intervient l'option `--amend`, qui écrase le dernier commit par celui que vous êtes en train de faire. Vraiment pratique ! On voici ici tout l'intérêt de ne **pas** pousser en permanence ses commits sur le serveur, mais d'attendre d'avoir fini le travail. Ce qui permet de pousser un ensemble de commits cohérents.

De l'art du bon message
-----------------------
Un petit mot pour rappeler l'importance de bien choisir son message de commit. Git possède une convention : la 1ere ligne est le résumé, suivi d'un saut de ligne, puis du contenu plus exhaustif du commit. Au travail nous avons une autre convention :

* Chaque ligne commence par le type de modification : new, fix, chg
* Le signe :
* Puis la cible du message : usr (utilisateur), dev (développeur), pkg (packageur)
* Le signe :
* Et enfin le message

Un exemple :
>  chg: pkg: remove sact.nevrax.skin dependency

Et nous avons autant de ligne que nécessaire, ce qui permet de voir rapidement si notre commit est **unitaire** : si des lignes n'ont rien à voir entre elles, on le voit facilement. Cela nous pousse dans cette bonne pratique. Nous ne suivons donc pas la convention Git, mais cela est adapté à nos besoins (rapidité d'écriture, simplicité de relecture, commit unitaire) et que nous tous dans la même pièce, avec *daily meeting* et revue de code. Sur un projet Libre, il peut être intéressant d'avoir un descriptif long du commit.

De plus, un outil transforme automatiquement les messages en changelog (un exemple [ici](http://pypi.python.org/pypi/sact.epoch/1.0.1), ce qui est bien utile.
