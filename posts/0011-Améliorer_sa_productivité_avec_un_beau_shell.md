<!-- 
.. link: 
.. description: 
.. tags: git, configuration
.. date: 2010/11/6 4:15:00
.. title: Améliorer sa productivité avec un beau shell
.. slug: ameliorer-sa-productivite-avec-un-beau-shell
-->

Git est avant un outil qu'on utilise en **ligne de commande**. Mais par défaut, le shell ne vous indique pas grand chose de la part de Git, en fait rien du tout :). Il faut donc taper des commandes Git pour connaitre l'état de son dépôt. Au minimum :

- `git status` pour l'état de son **répertoire de travail** et de son **index**
- `git branch` pour connaitre dans quelle **branche** on se trouve

Et accessoirement, il faut connaitre sa **position** par rapport à la branche distante, l'état de votre pile **stash**, etc. Bref, cela fait beaucoup de commandes à taper régulièrement. Il est bien sur possible de le faire, mais cela demande une grande rigueur : il est si facile par exemple de travailler dans la **mauvaise branche**, ou pire de ne pas travailler dans une branche du tout (ce qu'on appelle un **HEAD détaché**).

Une solution simple et élégante est d'afficher en permanence ces informations. Comme cela, plus d'erreur (cela reste possible mais l'étourderie est plus difficile). Cela tombe bien, le **shell** sait trés bien faire ce boulot !

Vous trouverez beaucoup d'exemples sur le Net, mais ils sont souvent trés basiques : généralement, cela se résume à afficher la branche courante sans gérer correctement tous les cas (comme le fameux **HEAD détaché** cité plus haut). J'ai fouillé le Net de long en large, et voici les 2 projets les plus intéressants à mes yeux :

- [git-prompt](http://volnitsky.com/project/git-prompt/)
- et... le fichier de complétion de Git

Et oui ! Ce dernier, livré en standard avec Git, sait aussi faire de l'affichage, et il est même trés bon ! Passage en revue de ces deux solutions.

Git Prompt
---------------
L'avantage est qu'il est, malgré son nom, compatible avec **SVN** et **Hg**.

Ses fonctionnalités :

- affichage de la branche courante
- affichage du SHA1 courant
- configuration de l'affichage du chemin (en absolu ou relatif, choix de la taille max)
- affichage du l'état du dépôt, de l'index et du répertoire de travail avec un jeu de couleur (voir plus bas)
- affichage des fichiers qui modifie le depôt (désactivable)
- affichage du statut de sortie de votre commande (il peut bipper sur une erreur)
- la configuration (activation des modules, couleurs...) se fait simplement au travers d'un fichier
- il modifie les labels (titre des fenêtres) en affichant le chemin complet

Un jeu de couleur indique l'état du dépôt ainsi que des fichiers manipulés (entre paranthèse la couleur par défaut) :

1. état initial du dépôt (blanc)
2. dépôt "propre" (bleu foncé)
3. présence de contenu modifié mais non ajouté à l'index (rouge foncé)
4. présence de contenu modifié et ajouté à l'index (vert)
5. présence de fichier non tracé (bleu clair)
6. en cours d'une opération (magenta)
7. commit détaché (rouge clair)

Vous avez donc un visuel assez précis de l'état de votre dépôt. Voici un exemple avec la configuration par défaut :

![Exemple de git-prompt par défaut](http://media.tumblr.com/tumblr_lbfwhyLINq1qdkaiq.png)

Vous pouvez voir que :

- je suis connecté avec le login *sdouche*
- ma machine s'appelle *fou-hi*
- je suis sur le dépot *git*
- je suis sur la branche "master" (simplifiée en **M** car *master* est une convention, comme *trunk*)
- je suis sur le commit *61d8db*
- le statut du dépot est vert, j'ai donc du contenu modifié et ajouté
- un fichier `test.py` qui n'est pas tracé
- un fichier `new.txt` qui est ajouté

**Remarque** : l'état du dépôt correspond bien évidemment à l'état du ou des fichiers le plus important (un dépôt ne peut être vert si un fichier est rouge par exemple).

Vous avez maintenant une vue bien plus complète de votre dépôt. Vous pouvez aisement imaginer qu'avoir ces informations en **permanence** est un plus indéniable. Allez sur ce [lien](http://volnitsky.com/project/git-prompt/screenshot-prompt-git.png) pour voir le shell en action sur plusieurs commandes.

Pour ma part, je n'apprécie pas trop les *prompt* à rallonge, j'ai donc une configuration bien plus légère :

- pas d'affichage de mon login ni du nom de ma machine (il affiche si les valeurs ne sont pas celles par défaut, par ex. si je suis root)
- un prompt classique (**$** pour un utilisateur et **#** pour root, et non le **>**)
- couleurs personnalisées (répertoire en magenta par ex.)
- limite de 40 caractères pour l'affichage du chemin
- pas d'affichage des fichiers et / ou répertoires impactés

Voici une copie d'écran :

![Un exemple avec ma configuration git-prompt](http://media.tumblr.com/tumblr_lbfvzvuwcQ1qdkaiq.png)

Vous constatez qu'il est bien plus simple. Vous pouvez voir la couleur verte sur le M, cela signifie donc que j'ai ajouté du contenu dans mon index. J'apprécie beaucoup la visualisation de l'ensemble des fichiers impactés mais malheureusement assez peu les prompts trop long.

Pour l'installer, c'est trés simple :

- Allez sur le projet [Github](https://github.com/lvv/git-prompt) et récupérer les fichiers `git-prompt.sh` et `git-prompt.conf`
- Mettez le premier quelque part dans votre compte et renommez le second en `~/.git-prompt.conf`
- Modifiez votre fichier `~/.bashrc` avec cette ligne  (remplacez "/path/to" par le répertoire ou vous avez sauvegardé votre fichier) :

>[[ $- == *i* ]]  && . ~/path/to/git-prompt.sh

- Editez le fichier ~/.git-prompt.conf` pour configurer selon vos envies

Git Completion
----------------------
Le fichier de complétion possède tout le nécessaire pour afficher des informations sur votre dépôt, il est même bien plus complet sur certains aspects que *git-prompt*. Mais ne vous attendait pas à l'utiliser pour autre chose que Git. Il faudra donc choisir selon vos besoins.

En échange, il vous offre pas mal de possibilités, il affiche :

- la branche courante (ou le SHA1 si vous êtes sur un *HEAD détaché*)
- le caractère **%** si un contenu non tracé existe
- le caractère **\*** si un contenu tracé mais non ajouté existe
- le caractère **+** si un contenu ajouté existe
- le caractère **$** si vous avez un **stash**
- le caractère **#** si le dépôt est dans l'état initial
- la position courante de votre **branche locale** par rapport à la branche distante

Pour ce dernier, vous avez plusieurs modes :

- avec le mode auto il affiche :

   - rien s'il n'existe pas de branche *upstream*
   - **=** si vous les deux branches concordent
   - **<** pour dire vous étes en avance
   - **>** en retard
   - **<>** pour indiquer une divergeance

- avec le mode verbose, il affiche le nombre de commits :

   - rien s'il n'existe pas de branche *upstream*
   - **u=** si vous les deux branches concordent
   - **u+count** si vous étes en avance
   - **u-count** si vous étes en avance
   - **u+count-u-count** pour indiquer une divergeance (nombre de commits dans votre branche et dans la branche upstream)
    
Cela permet de savoir par exemple si vous avez oublié de pusher ou de merger. Trés pratique, voir **indispensable**.

**Remarques :**

- Il affiche aussi le décalage avec SVN (mode **git-svn**) s'il trouve un serveur SVN dans la configuration du dépôt
- Vous pouvez modifier la configuration du décalage avec *upstream* pour chaque dépôt avec la variable `bash.showUpstream`


Mais ce n'est pas tout ! Il vous indique si vous êtes en cours :

- d'un *rebase* intéractif en affichant **|REBASE-i**
- d'un *rebase* merge en affichant **|REBASE-m**
- d'un *merge* en affichant **|MERGING**
- d'un *bisect* en affichant **|BISECTING**

Bref, c'est pour moi le shell le plus complet qui existe. Le seul défaut est qu'il ne gère pas la couleur, c'est à vous de l'ajouter. Vraiment dommage.

Voici ce que donne (avec une ajout de couleurs) :

![Un exemple avec Git Completion](http://media.tumblr.com/tumblr_lbfviwpAfP1qdkaiq.png)

Vous pouvez voir que je suis en avance d'un commit (u pour **upstream**) et que j'ai du contenu non tracé et du contenu ajouté mais pas commité.

Pour disposer d'une configuration équivalente, ajoutez ces lignes dans votre fichier `~/.bashrc`:

>`GIT_PS1_SHOWDIRTYSTATE=1 GIT_PS1_SHOWUNTRACKEDFILES=1 GIT_PS1_SHOWSTASHSTATE=1 GIT_PS1_SHOWUPSTREAM="verbose"`
>
>`PS1='[\[\033[1;35m\]\W$(__git_ps1 " \[\033[1;34m\](%s)")\[\033[0m\]]\$ '`

Si vous souhaitez garder votre login et le nom de la machine, voici la configuration de base qui remplace la dernière ligne de la configuration précédente :

>`PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '`

Ajouter `\u@\h` aprés le **[** à ma configuration si vous voulez associer la configuration de base avec mon jeu de couleurs.

Notes
--------
- Les informations Git s'affichent **uniquement** dans le cas ou vous êtes dans un dépôt Git
- Pour en savoir plus sur les couleurs du prompt, je vous conseille ce [lien](https://wiki.archlinux.org/index.php/Color_Bash_Prompt)
- pour utiliser *Git Completion*, il faut bien évidemment que ce dernier soit installé (voir à se sujet un précédent [billet](http://blog.gitfr.net/post/1475820312/taper-plus-vite-avec-la-completion))

Mon shell idéal
----------------------
Cela serait une combinaison des 2 :

- la possibilité de l'utiliser avec Hg, Bzr et Git
- affichage de l'état des fichiers sur la 1ere ligne avec un jeu de couleur (à la git-prompt)
- affichage sur la deuxième ligne du nom du dépôt (ce que personne ne fait), le chemin courant, l'état du dépôt (à la Git Completion)
- affichage du nombre de patchs dans ma pile de Stash
- et surtout le **choix** des couleurs pour chaque élement visuel. Imaginez par exemple du rouge pour afficher un décalage avec *upstream*, du bleu si j'ai du *stash*, etc

Conclusion
----------------
Avoir en permanence l'état de votre dépôt est un plus **indéniable**, que je vous **encourage fortement** à installer ! Il m'est arrivé plusieurs fois de commiter dans la mauvaise branche, ou d'oublier de pusher. Avec un beau shell, c'est **fini** (enfin, cela arrive beaucoup moins souvent :).
