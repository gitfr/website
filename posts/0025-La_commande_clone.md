<!-- 
.. link: 
.. description: 
.. tags: git, git-clone
.. date: 2010/12/12 5:49:00
.. title: La commande clone

Si l'on souhaite récupérer un dépôt existant, il faut passer par la commande clone. Ce dernier va créer une copie locale, créer des branches **remotes**, et créer une branche **locale** qui est une copie de la branche active du dépôt distant (généralement **master**).

La commande est simple :

>`$ git clone <dépôt> [<répertoire>]`

L'URL du dépôt distant peut être en **http(s)**, **ssh**, **git**, **ftp(s)** et **rsync**. Les trois premiers étant les plus courants. Il était conseillé pendant longtemps de pas utiliser le http, mais depuis la version 1.6.6, Git utilise le **Smart HTTP Transport**, qui est efficace.

Le répertoire est optionnel, par défaut Git prendra le nom du dépôt (sans le `.git` s'il existe).

La partie intéressante à comprendre est contenue dans le fichier `config` du dépôt local, généré par Git :

    [remote "origin"]
    	fetch = +refs/heads/*:refs/remotes/origin/*
        url = git://git.kernel.org/pub/scm/git/git.git
    [branch "master"]
        remote = origin
        merge = refs/heads/master

C'es lignes sont la traduction technique de l'introduction de ce billet :

- Git ajoute le dépôt distant avec pour nom **origin** (convention de nommage). Je peux maintenant utiliser le terme origin au lieu de `git://git.kernel.org/pub/scm/git/git.git` (ce dernier est toujours utilisable). La section remote peut aussi s'ajouter avec la commande `git remote`.

- La ligne fetch indique comment Git doit traduire l'espace de nom distant en espace de nom local. Par défaut, il traduit toutes les branches distantes en branches locales (ex : refs/remotes/origin/abc devient refs/heads/abc). Cette ligne est appelée **refspec** (que nous verrons en détail dans un autre billet).

- Enfin, Git **traque** la branche active distante. Que signifie traquer ? Cela veut dire modéliser une relation entre deux branches. Ici ma branche master locale est associée à la branche master du dépôt origin. Quand vous faites un `git pull` ou un `git push` sur la branche locale, il va prendre la branche traquée comme référence. Sans cette information, Git demande de spécifier le dépôt et la branche sur laquelle il doit travailler.

Le refpsec est obligatoire, les informations de suivies (*tracking*) sont optionnelles (mais bien pratiques).

Il existe plusieurs options à cette commande, comme `--bare` que nous avons déja vu avec la commande init. Je liste celles qui me semblent intéressantes à connaitre (n'hésitez pas à lire la documentation) :

- `--origin` : spécifier un nom différent que origin pour le nom remote.

- `--branch` : spécifier la branche à récupérer au lieu de master.

- `--recursive` : initialiser aussi les sous modules (**submodules**).

- `--depth` : permet de créer une copie non complète (appelez **shallow clone**).

- `--mirror` : permet de tout récupérer (mappe toutes les références).

Autre chose intéressante, si vous avez beaucoup de dépôts sur une URL identique, vous pouvez ajouter un alias dans votre fichier de configuration :

    [url "ssh://git.masociete.com/srv/git"]
    insteadOf = work:

C'est toujours ça de gagné.

