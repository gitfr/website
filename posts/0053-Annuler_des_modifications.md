<!-- 
.. link: 
.. description: 
.. tags: git, git-revert, git-reset, git-checkout
.. date: 2011/4/24 23:28:00
.. title: Annuler des modifications

Vous pouvez annuler votre travail de plusieurs manières.

git revert
------------
La commande `git revert $commit` permet, comme son l'indique, d'inverser un commit. C'est la commande à privilégier quand vous avez **déjà poussé les modifications** sur un dépôt public. Vous pouvez spécifiez plusieurs commits avec un range, ou modifier le message de commit avec l'option `-e`. L'option `-n` permet de ne pas créer de commit, permettant de vérifier le résultat.

Pas grand chose à dire de plus sur cette commande qui est très simple.

git reset
-----------

La commande reset est trés utile, car pouvant être employée de plusieurs manières :

* `git reset $path` est l'inverse de la commande *git add*, cela permet de supprimer des entrées dans l'index.

* `git reset $commit $path` permet de réinitialiser le contenu du fichier situé dans l'index avec le contenu du fichier du commit spécifié. 

* `git reset -p $path` est l'inverse de la commande *git add -p*, pour sélectionner les *hunks* à supprimer de l'index.

* `git reset -p $commit $path`. Identique à la commande précédente, mais Git affiche les *hunks* entre l'index et le commit spécifié (et non avec *HEAD* comme la commande précédente).

* `git reset --mode $commit` permet de revenir à un ancien commit. Le mode permet de choisir si on veut modifier le répertoire de travail, l'index ou le dépôt. Les modes disponibles sont :

  * `--soft`, pour modifier uniquement le dépôt

  * `--mixed`, pour modifier dépôt et index

  * `--hard`, pour modifier dépôt, index et répertoire de travail

Je vous laisse découvrir l'utilité des options --keep et --merge :).

Ne vous laissez pas prendre par la complexité de la section discussion du manuel, qui présente tous les cas de figures. Comme nous avons 3 (dépôt, index et répertoire de travail) et non plus 2 états, les possibilités sont multipliées.

Voici un schéma simplifié (qui vient du blog http://blog.plover.com/prog/git-reset.html) qui correspond au cas d'utilisation le plus courant :

![](http://media.tumblr.com/tumblr_lk6cuf9fCF1qdkaiq.png)

Si je veux revenir au commit C, j'utilise l'option *soft*. Si je veux également modifier l'index, j'utilise l'option *mixed*. Et enfin si je veux également modifier le répertoire de travail, j'utilise l'option *hard*.

J'utilise beaucoup le  *reset hard* : supprimer des commits superflus, ou un merge / rebase raté, etc. Mais attention, cela veut dire que cela supprime toute trace de vos modifications. Si ces dernières dans un commit, le **reflog** est la pour vous secourir. Mais sinon, adieu à votre travail...



git checkout
-------------------
Et pour être complet, la dernière méthode consiste tout simplement à faire un `checkout $path`. C'est dans le cas ou vous souhaitez non pas repartir d'un ancien commit (comme  `revert` ou `reset`) mais de la version qui est dans l'index (si elle existe, sinon il ne se passe rien).

Conclusion
--------------------
La maitrise de l'index est nécessaire pour comprendre toutes les subtilités de ces commandes. Même si cela peut paraître un peu compliqué au premier abord, vous verrez aprés quelques jours d'utilisation que ce n'est vraiment pas sorcier :).

Et comme d'habitude, n'oubliez pas de lire le manuel (je me répète non ?).
