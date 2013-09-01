<!-- 
.. link: 
.. description: 
.. tags: git, git-init
.. date: 2010/12/12 00:14:00
.. title: La commande init

Ce billet est la première d'une série sur les commandes Git. Et quoi de plus naturel que de commencer par la première commande que tout utilisateur tape quand il apprend Git : la commande `init` (l'aventurier commencera peut être par un `git clone` :).

L'objectif de cette commande est d'initialiser un répertoire, c'est à dire de lui ajouter le dépôt Git, qui pour nom `.git`.

>$ git init ~/src/myrepo

>Initialized empty Git repository in ~/src/myrepo/.git/

Ce répertoire est toujours constitué du même contenu (nous aborderons en détail le contenu dans un autre billet, ainsi que la configuration). Vous pouvez changer cela en spécifiant un répertoires de templates (option `--template`).

**Note** : Si vous ne spécifiez pas de répertoire (`git init`), c'est le répertoire courant qui est utilisé.

L'option la plus importante est `--bare`, qui permet de créer un dépôt partagé. Quelle est la différence ? C'est une histoire de workflow : avec un dépôt «normal», seule la commande de synchronisation **pull** est permise. Git par du principe que c'est votre dépôt, et que personne n'a le droit de pousser des objets dedans. A contrario, un dépôt **bare** se veut un dépôt partagé, est donc la commande **push** est aussi autorisée.

**Note** : Il n'existe pas de mécanismes d'identification et d'authorisation dans Git, c'est à vous de le rajouter avec d'autres outils.

Une autre différence, qui se voit rapidement est qu'un dépôt «bare» ne contient pas de copie de travail (**working directory**). A la place, vous avez directement le contenu du répertoire .git à la racine. C'est assez logique, c'est un dépôt partagé, personne n'est censé travailler directement dessus.

Troisième différence, le fichier de configuration possède la variable `bare = true`.

Avec l'option `--bare`, on associe souvent l'option `--shared`, qui permet de spécifier les droits Unix sur le dépôt. Tout administrateur Unix comprendra aisement les possibilités (les explications dépassent largement le cadre de ce billet). Si vous ne savez pas, utilisez `--shared=all`.

**Note** : Par convention, le nom du répertoire du projet qui héberge un dépôt bare se termine par `.git`. Exemple : `myproject.git`, alors que votre dépôt privé s'appelle `myproject`. Cela permet d'indiquer que ce répertoire contient directement la structure, et non un sous répertoire `.git`.

Et voila ! Votre dépôt Git est fin prêt, vous pouvez vous déplacer dedans et créer votre premier commit.
