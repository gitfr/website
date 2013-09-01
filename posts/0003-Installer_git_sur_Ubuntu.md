<!-- 
.. link: 
.. description: 
.. tags: git, installation, ubuntu
.. date: 2010/10/30 19:56:00
.. title: Installer git sur Ubuntu

Rien de plus facile pour disposer de git sous Ubuntu :

> $ sudo aptitude install git

Pour les utilisateurs qui utilisent Debian ou Ubuntu depuis quelques temps, vous pouvez constater que le paquet s'appelle maintenant *git* et non *git-core* (pour le petite histoire, git était le paquet *GNU Interactive Tools*, renommé depuis *gnuit*). Mais le problème avec une installation du paquet officiel est que vous disposerez d'une version plus ou moins ancienne (la version disponible au moment du *freeze* de la distribution), Ubuntu ne mettant pas à jour git avec les dépots *backports*, *updates* ou *proposed*. Personnellement, j'aime disposer de la dernière version, les développeurs git améliorant régulièrement le *frontend*.

C'est la qu'interviennent les **PPA**, pour *Personal Package Archives*. C'est un dépôt **non officiel** qu'il est possible d'activer sur *Launchpad* quand vous créé un projet sur cette plateforme. C'est justement sur Launchpad que les mainteneurs officiels Ubuntu du paquet git travaillent ! Et comme ils sont gentils, il existent justement un [PPA git](https://launchpad.net/~git-core/+archive/ppa). Voici les commandes pour utiliser ce PPA sur Ubuntu :

> $ sudo add-apt-repository ppa:git-core/ppa

Cette commande ajoute le PPA dans vos dépôts accessibles (sources.list). C'est équivalent à mettre manuellement un fichier de configuration dans le répertoire */etc/apt/sources.list.d/* et d'ajouter la clé GPG (voir la section *Technical details about this PPA* pour plus de détails).

> $ sudo aptitude update

Mise à jour des paquets disponibles.

> $ sudo aptitude install git

Installation de git. Comme la version de git disponible sur le PPA est plus réçente que la version officielle, c'est donc cette première qui sera choisie. Et voila. Moins de 48 heures aprés une sortie officielle de git, vous l'avez sur votre machine ! Les mainteneurs étant trés réactifs.

Note : vous pouvez constater qu'ils maintiennent non seulement pour Maverick (10.10), mais aussi pour Lucid (10.04), Karmic (09.10), Jaunty (09.04), Hardy (08.04) et Dapper (06.06) ! Il existe même une version réçente pour Intrepid (07.04) même si cette dernière n'est plus offciellement maintenue (Hardy et Dapper étant des LTS, *Long Term Support*).

