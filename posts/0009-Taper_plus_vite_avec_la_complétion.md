<!-- 
.. link: 
.. description: 
.. tags: git, configuration
.. date: 2010/11/4 2:37:00
.. title: Taper plus vite avec la complétion
.. slug: taper-plus-vite-avec-la-completion
-->

Le petit doigt de la main gauche est pour un **Unixien** un doigt important (bon, vous pouvez me rétorquer que *tous* les doigts sont importants) : c'est celui qu'on utilise pour taper sur la touche **tab**. Cette touche permet sous Unix de faire la **complétion**. Autrement dit, de compléter le nom d'une commande quand on tape le début de celle-ci. Non seulement une commande, mais aussi les sous commandes et options (par ex `--exclude` de la commande `diff`).

Comment cela marche t'il avec Git ? Voici quelques exemples :

>`$ git <TAB><TAB>`

Le shell répond : 

>`add  bundle  commit  gc  rebase ....`

En tapant simplement `git`, la complétion me propose une centaine de sous commandes Git (je ne représente ci dessus que 4 commandes à titre d'exemple). Maintenant si je tape la lettre *a* :

>`$ git a<TAB><TAB>`

Le shell répond :

>`add  aliases  am  amend  annotate  apply  archive`

Le shell me propose les commandes qui commencent par la lettre *a*. Le shell complète uniquement si ce que vous tapez est **sans ambiguité**. Si je reprends l'exemple précédent, si j'avais tapé *ad*, la complétion aurait donné *add*.

Mais ce qui est formi-formi-formidable avec la complétion, c'est qu'elle marche aussi sur les options des sous commandes. En reprenant l'exemple de la sous commande add :

>`$ git add -<TAB><TAB>`

Le shell répond :

> `--dry-run  --ignore-errors  --intent-to-add  --interactive  --patch  --refresh  --update`

Comme vous pouvez le constater, c'est un gain de temps incroyable. Pour la petite histoire, c'est la fréquence d'utilisation de cette touche qui me donne une première idée de la familiarité d'un candidat avec Unix en entretien d'embauche :).

**Note** : vous constaterez peut être que toutes les sous commandes ou options ne sont pas représentées dans la complétion. C'est un choix (ou non, par exemple un oubli ?) des développeurs du fichier de complétion. Il faut en effet modifier manuellement ce fichier à chaque nouvelle version (travail un poil fastidieux, pour vous donner une idée le fichier de la version 1.7.3.2 fait 2419 lignes), il se peut donc que les développeurs fassent des choix. Ceci est aussi valide pour les commandes Shell en général.

Activer la complétion
------------------------------
C'est assez simple, il suffit d'ajouter le fichier de complétion Git soit dans votre profil (fichier `~/.bashrc`), soit dans la configuration globale de bash_completion du système. La plupart du temps, cette configuration est automatique à l'installation de Git.

Sous Ubuntu
-------------------
Le fichier de complétion est automatiquement activé sous Ubuntu car le fichier `git` est placé dans le répertoire `/etc/bash_completion.d/` par le paquet git lui même. Le paquet `bash-completion` étant lui installé par défaut.

Sous Mac OS X
------------------------
Il est nécessaire d'installer (avec Homebrew ou MacPorts) le paquet `bash_completion` si ce n'est pas deja fait, avec la commande :

>$ sudo port install bash_completion

ou

>$ brew install bash-completion

Puis d'ajouter cette ligne dans votre `~/.bashrc`:

> `source ./path/to/git-completion.bash`

Changez `/path/to` avec le répertoire qui contient le fichier (qui est dofférent selon la méthode d'installation).

Sous Windows
-----------------------
Comme sous Ubuntu, la complétion est activé par défaut avec *msysgit*.
