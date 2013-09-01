<!-- 
.. link: 
.. description: 
.. tags: git, outil
tags: cgit
.. date: 2011/4/3 15:16:00
.. title: cgit, un frontal Web pour Git
.. slug: cgit-un-frontal-web-pour-git
-->

Quand vous installez un dépôt Git sur votre serveur, il est toujours intéressant d'installer en plus un frontal Web. Cela vous permet notamment de naviguer dans votre dépôt sans avoir besoin de le cloner, de télécharger une version, ou tout simplement de connaitre l'état du dépôt.

Le frontal fournit avec Git est [Gitweb](https://git.wiki.kernel.org/index.php/Gitweb), écrit en Perl et utilisable en cgi. Mais son interface est un peu désuete, et les fonctionnalités limitées (je vous laisse juge en naviguant sur [le dépôt Git](http://git.kernel.org/)).

[cgit](http://hjemli.net/git/cgit) tente de combler ces lacunes en offrant plusieurs fonctionnalités intéressantes :

* Une interface un peu plus propre et claire.

* Un cache pour une navigation rapide (mais il est déja bien plus rapide que gitweb sans l'activer).

* La possibilité de visualiser les différences plus facilement (side-by-side diffs).

* flux RSS.

* La découverte automatique de dépôts à la configuration.

* La colorisation syntaxique.

Il est très facile à configurer. Pour l'installation, téléchargez l'archive et tapez la commande *make* pour générer le binaire en C. Il suffit ensuite de l'utiliser comme un cgi. Lisez la documentation fournie pour connaître les options du fichier de configuration.

Je vous laisse regarder la différence entre les deux, mais pour moi, c'est évident que cgit est plus intéressant. C'est pour cette raison qu'il est utilisé par défaut au taff :)
