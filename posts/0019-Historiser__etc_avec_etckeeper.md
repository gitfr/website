<!-- 
.. link: 
.. description: 
.. tags: git, outil
tags: etckeeper
.. date: 2010/12/5 1:05:00
.. title: Historiser /etc avec etckeeper
.. slug: historiser-etc-avec-etckeeper
-->

Pour illuster l'un des intérêts des *DVCS*, à savoir son coté **décentralisé**, ou plus éxactement le fait qu'il n'est pas obligatoire de disposer d'un dépôt central, voici un exemple concret. Nous pouvons historiser simplement un répertoire en tapant la commande :

>$ git init

Ainsi, vous pouvez sauvegarder toute modification apportée à un fichier et historiser vos changements. Mais si vous voulez le faire simplement et **automatiquement**, il faut scripter un peu. Mais comme souvent dans le monde libre, un développeur à pensé avant vous, s'est sorti les doigts du *censure* et a publié son projet.

[etckeeper](http://kitenet.net/~joey/code/etckeeper/), projet de Joey Hess (bien connu des utilisateurs Debian) permet comme son nom l'indique de sauvegarder le répertoire `/etc` (ensemble des fichiers de configurations sous *Linux*), simplement et rapidement. Joey est un vieux utilisateur d'outil de gestion de sources pour sauvegarder ses documents : il a écrit un article voici quelques années sur l'utilisation de *CVS* puis *SVN* pour gérer son répertoire personnel (son **home**).

Pour l'installer (sous *Ubuntu* ou *Debian*) :

>$ aptitude install etckeeper

Le fichier de configuration s'appelle `/etc/etckeeper/etckeeper.conf`, notamment pour mettre git en backend. L'intérêt de etckeeper se trouve dans les scripts associés, puisqu'il traque les changements de paquet avec **APT** et **DPKG** et gére les permissions correctement (fondamental pour /etc/).

Et voila ! Vous avez maintenant un historique des changements sur votre machine.

**Note** : etckeeper gère aussi *Hg*, *Darcs* et *Bzr*.
