<!-- 
.. link: 
.. description: 
.. tags: git, installation, windows
.. date: 2010/11/1 19:45:00
.. title: Installer git sur Windows

Les possibilités sont plus limitées sous Windows car il n'existe pas de projet pour l'installer à partir des sources originales. Et pour cause, Git n'est pas prévu pour fonctionner sur Windows (c'est un projet purement **Unix**). Heureusement, le projet [msysgit](http://code.google.com/p/msysgit/) est la ! Ce dernier est comparable au projet *Git OSX Installer* sous Mac OS X, et comme ce dernier il est trés actif, puisque nous trouvons la version 1.7.3.1 (la 1.7.3.2 est la dernière version officielle). A une différence d'importance, msysgit installe une version *maison* (on dit un **fork**) qui se trouve [ici](http://repo.or.cz/w/git/mingw/4msysgit.git/) pour rendre git opérationnel sous Windows.

Installation de msysgit
--------------------------------
C'est assez simple :

- Téléchargez la derniere version de l'installeur. Voici un [lien vers la 1.7.3.1](http://msysgit.googlecode.com/files/Git-1.7.3.1-preview20101002.exe)
- Lancez l'installeur
- Spécifiez un répertoire d'installation si besoin
- Activez toutes les options
- Choisissez l'option *Use Git Bash only*
- Choisissez l'option *Use Unix style line endings*

Utiliser msysgit
-----------------------
Vous pouvez maintenant utiliser git dans un **shell**. Celui-ci est accessible par l'icone du bureau ou dans le menu Windows.

Git Extensions
---------------------
[Git Extensions](http://code.google.com/p/gitextensions/) utilise le projet msysgit et ajoute une **interface graphique** pour pas mal d'opérations, une extension Visual Studio et l'outil Kdiff3. Cerise sur le gateau, il embarque msysgit. Ce projet vous permet donc de tout installer en une seule fois. Cliquez sur ce [lien](http://gitextensions.googlecode.com/files/GitExtensions205SetupComplete.msi) pour télécharger la dernière version. Vous pouvez voir sur cette [page](http://code.google.com/p/gitextensions/wiki/Info) plusieurs copies d'écran pour vous faire une idée.

Un constat
---------------
La plateforme Windows est la moins adaptée à Git, d'abord parce que cette plateforme ne possède pas nativement les outils de type Unix (bash, diff...), et que c'est avant tout un outil **ligne de commande**, et que la ligne de commande... n'est pas le fort de Windows (mais cela reste largement possible). Il faut donc attendre que des développeurs codent des interfaces graphiques pour effectuer toutes les opérations usuelles (les fameuses commandes *porcelain*) plus "nativement" sous Windows. Ce problème devrait disparaitre avec l'arrivée à maturité des IDEs (IntelliJ, Eclipse...) et des outils de manipulations (TortoiseGit...). Git Extensions en est un bon exemple.

Reste que le projet msysgit est un projet bénévole complètement détaché du projet Git. Et que l'utilisation en ligne de commande est quand même bien plus pratique ;).
