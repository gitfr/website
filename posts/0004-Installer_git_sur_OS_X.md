<!-- 
.. link: 
.. description: 
.. tags: git, installation, macos
.. date: 2010/11/1 00:40:00
.. title: Installer git sur OS X

Mac OS X est un Unix et à ce titre, l'installation de git ressemble à ce qui existe sous les autres Unix comme Linux. Pour résumer, vous avez 2 méthodes :

- installer une version déja compilée par un tiers
- installer une version à partir des sources

Cette dernière méthode est plus contraignante, votre système doit contenir le nécessaire pour compiler du code C (compilateur *GCC*, outil *Make* et *Autoconf*...). Les habitués d'Unix libres (Linux, BSD) ne seront pas étonnés par ces 2 méthodes d'installation. Mais si vous êtes nouveau sous Unix, ne craignez rien, cela reste abordable pour un néophyte (et rapide si vous avez vos DVD fournis avec la machine).

Installer une version compilée
--------------------------------------------
Pour ceux qui souhaitent ne pas "se prendre la tête", Il existe le projet [Git OSX Installer](http://code.google.com/p/git-osx-installer/), qui permet d'installer simplement git sur *Leopard* (10.5) et *Snow Leopard* (10.6). Vous pouvez constater que le projet est actif : au 30/11/2010, la version 1.7.3.1 est disponible alors que la dernière version est la 1.7.3.2.

Il suffit de télécharger le fichier (au format .dmg) et de le lancer. Vous trouverez à l'intérieur l'application git au format .pkg qu'il suffit d'installer. On peut ajouter une icône sur le *Finder* avec le sous projet *OpenInGitGui*.

Installer une version source
----------------------------------------
Pour ceux qui souhaitent maitriser leur installation, il est nécessaire de partir des sources. Dans ce cas, vous avez deux outils intéressants :

- [MacPorts](http://www.macports.org)
- [Homebrew](http://github.com/mxcl/homebrew)

Les utilisateurs Linux peuvent le comparer à *aptitude* ou *yum* (et sous BSD, vous avez par exemple les  commandes *pkg_*).

Homebrew est plus récent et semble plus complet, bien que les ports (les applications disponibles) soient moins nombreux. Dans les 2 cas, l'installation de Xcode est obligatoire.

Installation de Xcode
-------------------------------
Xcode (qui est un ensemble d'applications et librairies pour développer sous Mac OS X) est nécessaire pour MacPorts et Homebrew. Ils sont disponibles sur le DVD1. Si vous avez perdu vos DVD, il est possible de télécharger Xcode sur le site d'[Apple](http://developer.apple.com/technology/xcode.html), aprés une inscription obligatoire. L'ensemble fait 2,9Go.

Une fois téléchargée, lancez l'installateur Xcode, cliquez sur *Customize* et choisissez *X11 User* et *Unix Development*.

Avec MacPorts
----------------------
Il faut bien évidemment installer MacPorts :

- Télécharger la dernière version au format .dmg [ici](http://distfiles.macports.org/MacPorts/) en prenant la version pour votre version de Mac OS X.
- Lancer l'installateur en double-cliquant sur le fichier téléchargé.
- Choisir l'installation par défaut.

Il ne vous reste plus qu'a installer git avec la commande :

>$ sudo port install git-core +bash_completion +doc

Ou si vous souhaitez jouer avec des dépôts SVN :

>$ sudo port install git-core +bash_completion +doc +svn

*sudo* vous permet de lancer une commande en mode administrateur (et non simple utilisateur). *port* est la commande MacPorts. *install* est l'argument pour demander l'installation. *git-core* est l'application à installer.

Vous pouvez mettre à jour vos *Ports* avec la commande :

>$ sudo port selfupdate

Avec Homebrew
------------------------
Homebrew est un projet plus réçent mais avec un objectif semblable à MacPorts, vous simplifier la vie en automatisant l'installation des applications non natives Mac OS X. Il suffit de taper cette commande dans un shell pour l'installer :

>$ ruby -e "$(curl -fsS http://gist.github.com/raw/323731/install_homebrew.rb)"

Cette commande esotérique télécharge le fichier *install_homebrew.rb* avec la commande *curl* puis demande à l'interpréteur *Ruby* de l'éxécuter (note au passage : oui, le shell est amour, maitrisez-le et vous gagnerez des années de vie). Bien évidemment Ruby et Curl doivent être présents sur votre système.

Vous avez maintenant accès à la commande *brew* :

>$ brew install git

Cette commande ressemble à la commande MacPorts. Et vous avez aussi une commande pour mettre à jour vos applications avec la commande :

>$ brew update

Installation "à la main"
--------------------------------
Il est bien sur possible d'installer git à la main (c'est à dire sans outil supplémentaire), en partant des sources. Mais je laisse cet exercice au lecteur :). Néanmoins, voici des aides :

- [http://gist.github.com/423308](http://gist.github.com/423308)
- [Compiling Git on Snow Leopard](http://hivelogic.com/articles/compiling-git-on-snow-leopard)

MacPorts ou Homebrew ?
-------------------------------------
Sans être un spécialiste (je n'ai pas touché à un Mac depuis des années), Homebrew me semble plus intéressant car il tente de simplifier la création d'un nouveau paquet et tente d'éliminer les duplications d'applications observées avec MacPorts. Néanmoins, il semble moins mature que ce dernier. Si vous avez un ami expérimenté sous Mac, demandez lui ce qu'il préfère !

Et voila !
-------------
Vous avez maintenant un git fonctionnel sur votre machine :).


Merci à David Gageot et Ronan Amicel pour la relecture.Mac OS X est un Unix et à ce titre, l'installation de git ressemble à ce qui existe sous les autres Unix comme Linux. Pour résumer, vous avez 2 méthodes :

- installer une version déja compilée par un tiers
- installer une version à partir des sources

Cette dernière méthode est plus contraignante, votre système doit contenir le nécessaire pour compiler du code C (compilateur *GCC*, outil *Make* et *Autoconf*...). Les habitués d'Unix libres (Linux, BSD) ne seront pas étonnés par ces 2 méthodes d'installation. Mais si vous êtes nouveau sous Unix, ne craignez rien, cela reste abordable pour un néophyte (et rapide si vous avez vos DVD fournis avec la machine).

Installer une version compilée
--------------------------------------------
Pour ceux qui souhaitent ne pas "se prendre la tête", Il existe le projet [Git OSX Installer](http://code.google.com/p/git-osx-installer/), qui permet d'installer simplement git sur *Leopard* (10.5) et *Snow Leopard* (10.6). Vous pouvez constater que le projet est actif : au 30/11/2010, la version 1.7.3.1 est disponible alors que la dernière version est la 1.7.3.2.

Il suffit de télécharger le fichier (au format .dmg) et de le lancer. Vous trouverez à l'intérieur l'application git au format .pkg qu'il suffit d'installer. On peut ajouter une icône sur le *Finder* avec le sous projet *OpenInGitGui*.

Installer une version source
----------------------------------------
Pour ceux qui souhaitent maitriser leur installation, il est nécessaire de partir des sources. Dans ce cas, vous avez deux outils intéressants :

- [MacPorts](http://www.macports.org)
- [Homebrew](http://github.com/mxcl/homebrew)

Les utilisateurs Linux peuvent le comparer à *aptitude* ou *yum* (et sous BSD, vous avez par exemple les  commandes *pkg_*).

Homebrew est plus récent et semble plus complet, bien que les ports (les applications disponibles) soient moins nombreux. Dans les 2 cas, l'installation de Xcode est obligatoire.

Installation de Xcode
-------------------------------
Xcode (qui est un ensemble d'applications et librairies pour développer sous Mac OS X) est nécessaire pour MacPorts et Homebrew. Ils sont disponibles sur le DVD1. Si vous avez perdu vos DVD, il est possible de télécharger Xcode sur le site d'[Apple](http://developer.apple.com/technology/xcode.html), aprés une inscription obligatoire. L'ensemble fait 2,9Go.

Une fois téléchargée, lancez l'installateur Xcode, cliquez sur *Customize* et choisissez *X11 User* et *Unix Development*.

Avec MacPorts
----------------------
Il faut bien évidemment installer MacPorts :

- Télécharger la dernière version au format .dmg [ici](http://distfiles.macports.org/MacPorts/) en prenant la version pour votre version de Mac OS X.
- Lancer l'installateur en double-cliquant sur le fichier téléchargé.
- Choisir l'installation par défaut.

Il ne vous reste plus qu'a installer git avec la commande :

>$ sudo port install git-core +bash_completion +doc

Ou si vous souhaitez jouer avec des dépôts SVN :

>$ sudo port install git-core +bash_completion +doc +svn

*sudo* vous permet de lancer une commande en mode administrateur (et non simple utilisateur). *port* est la commande MacPorts. *install* est l'argument pour demander l'installation. *git-core* est l'application à installer.

Vous pouvez mettre à jour vos *Ports* avec la commande :

>$ sudo port selfupdate

Avec Homebrew
------------------------
Homebrew est un projet plus réçent mais avec un objectif semblable à MacPorts, vous simplifier la vie en automatisant l'installation des applications non natives Mac OS X. Il suffit de taper cette commande dans un shell pour l'installer :

>$ ruby -e "$(curl -fsS http://gist.github.com/raw/323731/install_homebrew.rb)"

Cette commande esotérique télécharge le fichier *install_homebrew.rb* avec la commande *curl* puis demande à l'interpréteur *Ruby* de l'éxécuter (note au passage : oui, le shell est amour, maitrisez-le et vous gagnerez des années de vie). Bien évidemment Ruby et Curl doivent être présents sur votre système.

Vous avez maintenant accès à la commande *brew* :

>$ brew install git

Cette commande ressemble à la commande MacPorts. Et vous avez aussi une commande pour mettre à jour vos applications avec la commande :

>$ brew update

Installation "à la main"
--------------------------------
Il est bien sur possible d'installer git à la main (c'est à dire sans outil supplémentaire), en partant des sources. Mais je laisse cet exercice au lecteur :). Néanmoins, voici des aides :

- [http://gist.github.com/423308](http://gist.github.com/423308)
- [Compiling Git on Snow Leopard](http://hivelogic.com/articles/compiling-git-on-snow-leopard)

MacPorts ou Homebrew ?
-------------------------------------
Sans être un spécialiste (je n'ai pas touché à un Mac depuis des années), Homebrew me semble plus intéressant car il tente de simplifier la création d'un nouveau paquet et tente d'éliminer les duplications d'applications observées avec MacPorts. Néanmoins, il semble moins mature que ce dernier. Si vous avez un ami expérimenté sous Mac, demandez lui ce qu'il préfère !

Et voila !
-------------
Vous avez maintenant un git fonctionnel sur votre machine :).


Merci à David Gageot et Ronan Amicel pour la relecture.
