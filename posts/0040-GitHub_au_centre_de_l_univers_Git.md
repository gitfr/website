<!-- 
.. link: 
.. description: 
.. tags: github
.. date: 2011/4/3 17:31:00
.. title: GitHub, au centre de l'univers Git
.. slug: github-au-centre-de-l-univers-git
-->

On me pose souvent cette question : « Git est il utilisé et quelle est la taille de sa communauté ? ». Ma réponse se résume souvent à donner [l'url de GitHub](http://www.github.com). Les chiffres parlent d'eux mêmes :

* Plus d'un million de dépôt, dont 60% sont des projets.

* Plus de 400 000 utilisateurs.

* Dans les 1000 sites parmi les plus visités avec 600 000 visiteurs uniques par jour.

* Des pointes à plus de 400 000 commits par jour !

GitHub apporte une **visibilité** importante à Git, comme j'ai pu l'entendre plusieurs fois : «Je me suis mis à Git à cause de GitHub !». Mais pourquoi l'utiliser ?

Au lancement du projet, au milieu de l'année 2008, le leader de l'hébergement de projets Libres s'appelle **Sourceforge**. Ce dernier existe depuis 1999 et a pour but d'héberger gratuitement tous ceux qui désirent une infrastructure solide, avec *CVS* (on est en 99 ne l'oubliez pas :)), liste de diffusion, et site web. Mais ce dernier vieillit mal : aspect très «20ème siècle», pas de DVCS (seulement CVS et SVN), et un forum qui tuerait sur place un ergonome... Il est possible néanmoins d'héberger son dépôt Git à l'époque avec **repo.or.cz**, mais il offre lui aussi un design vraiment basique et des fonctionnalités limitées. Et surtout, il n'existe aucune possibilité d'avoir des dépôts privés.

D’où l'idée de proposer un hébergement Git de qualité, avec un design clair, gratuit pour les projets Libres mais permettant aussi les projets privés. Ils ont donc décider de créer (sur leur temps libre, l'utilisation de Git à cette époque est balbutiante) un site simple et efficace. Le succès est foudroyant, avec 10 000 projets en moins de 8 mois. Et plus important, le service est rapidement rentable avec les offres d'hébergement privés. Les fondateurs passent rapidement de bénévoles à employés temps plein, et embauchent quelques personnes, dont @chacon, qui se démène pour parler de Git (1 livre, 1 pdf, 3 sites dont le site officiel, des formations et quelques dizaines de présentations à son actif depuis 3 ans). Pour l'anecdote, GitHub embauche massivement depuis le début 2011 (15 postes).

Il faut noter que le projet **Ruby on Rails** fut hébergé dés le 1er jour, faisant ainsi basculer la communauté Ruby dans l'escarcelle de Git (fin 2008, 36% des projets sont en Ruby). Les fondateurs étant des Rubyistes, la majorité du site est codé en Ruby (notamment avec du RoR), et je crois que c'est toujours le cas aujourd'hui.

Quelles sont les raisons de ce succès ? Voici quelques éléments de réponses :

* L'hébergement privé, à un prix accessible.

* L'hébergement gratuit, qui permet de tester le service sans aucune limitation d'utilisation. La seule contrainte étant de ne pas pouvoir rendre son dépôt privé.

* Un design clair, élégant et simple. Par exemple , on créé un dépôt en 2 clicks et 4 questions :

![](http://help.github.com/images/bootcamp/bootcamp_2_repoinfo.jpg)

* Une page nous récapitule ensuite comment l'utiliser. Moins d'une minute sont nécessaire pour démarrer. L'ergonomie fait, comme souvent, la différence.

* Utiliser un projet déja existant est encore plus simple puisque la commande Git vous est donnée (protocoles ssh, https et git).

![](http://img.skitch.com/20100201-e6dmj54pgmw6wq7314jtbej31k.jpg)

* Un moteur de recherche puissant disposant de [20 mots clé](https://github.com/search).

* Utilisation des clés ssh. Une fois copiées sur le site, plus besoin de s'identifier. Un jeton (token) est utilisable à la place d'un mot de passe.

* Une documentation abondante, sur le fonctionnement du site comme sur Git.

* La présence de [Gist](https://gist.github.com/), permettant de partager des données (code ou autre) simplement et rapidement. Le tout géré par (et donc utilisable avec) Git bien sûr. Cela permet aussi de travailler à plusieurs sans être dans un projet particulier.

* La possibilité d'avoir un wiki, qui est un dépôt Git :

![](https://d3nwyuy0nl342s.cloudfront.net/img/4f62fc3fc2842eccf396f6462a2870ad03468056/687474703a2f2f6769746875622d696d616765732e73332e616d617a6f6e6177732e636f6d2f626c6f672f323031302f77696b692d636f6d706172652e706e67)

* Un bugtracker (un poil simpliste mais généralement suffisant) :

![](https://d3nwyuy0nl342s.cloudfront.net/img/23a622374bb0cc97818156fbf57ca825cb3c5aaa/687474703a2f2f696d672e736b697463682e636f6d2f32303130303832332d70713371777778706563656866623571326e37373370777734772e706e67)

* Un outil de revue de code :

![](https://img.skitch.com/20110203-ti2rd25qq5kus8msyxgba7kbgq.jpg)

* La gestion des notes :

![](https://d3nwyuy0nl342s.cloudfront.net/img/fe89e5d2ab4275b07d80c34595df63a86385a265/687474703a2f2f696d672e736b697463682e636f6d2f32303130303832352d72756634743479756770357070636538736a68316131326b37352e6a7067)

* Une [API complète](http://develop.github.com/p/libraries.html), avec des wrappers disponibles dans [plusieurs langages](http://develop.github.com/p/libraries.html).

* L'utilisation de [Markdown](http://daringfireball.net/projects/markdown/) un peu partout sur le site comme pour le rendu plus riche de document texte.

* La disponibilité de flux RSS pour les différents historiques.

* Des hooks pour plugger votre projet (sur un bugtracker, un outil d'intégration continue, de gestion de projet, Twitter...).

* Visualisation graphique des branches :

![](https://d3nwyuy0nl342s.cloudfront.net/img/a44a44c4d892b8e9f9dbd53a99ee0ec5da92d29b/687474703a2f2f696d672e736b697463682e636f6d2f32303038303431302d6262377731356a6e336d386432716b756d357764676e726a33622e706e67)

* Statistiques graphique du projet (nombre de ligne de code impactées dans le temps, langages utilisés...).

* La possibilité de notifier un développeur en mettant son login (@somebody) dans n'importe quelle conversation :

![](https://img.skitch.com/20110323-gei22a6c1wkkqdg3xgcfe9ccfh.jpg)

* Un gestionnaire de binaires (où vous pouvez uploader vos propres fichiers en plus de ceux générés automatiquement).

* Et bien sûr, un service rapide et efficace.

Mais si la partie «technique» est importante et fait la différence vis-à-vis des concurrents (il suffit de visiter la page du projet Git sur [GitHub](http://www.github.com/git) avec la page du projet Git sur [repo.or.cz](http://repo.or.cz/w/git.git)), l'aspect le plus important de GitHub est **social**. C'est sur ce point que GitHub a fait la **différence**.

GitHub et le «social coding»
=====================

Dés sa création (le travail commence fin 2007 pour un lancement officiel en février 2008), GitHub se veux social. Cela signifie que le site facilite grandement la **«mise en relation»** des développeurs. Fini les sites «à la Sourceforge» où les gens sont cloisonnés dans les projets. Vous pouvez voir la vie du projet avec la «Timeline» et mieux, la suivre :

![](http://help.github.com/images/bootcamp/bootcamp_4_watch.jpg)

mais surtout vous pouvez **suivre un développeur** :

![](http://help.github.com/images/bootcamp/bootcamp_4_follow.jpg)

Et cela change tout ! Vous êtes maintenant au courant de toutes ses actions, par exemple des projets qu'il lance dès leur création.

Vous pouvez naviguer dans GitHub par dépôt bien sur, mais aussi par *Timeline*, mot clé, langage de programmation ou changelog. Vous pouvez vous abonner à un flux RSS de l'activité du projet.  

Mais surtout, GitHub tire partie de la philosophie des outils de code décentralisés : chacun peut cloner un projet et le modifier, pour ensuite demander l'intégration de ses modifications. En tant que créateur d'un projet, vous permettez à la terre entière de participer à votre projet, et ceci de manière totalement transparente, permettant de créer rapidement une **communauté** de développeurs. Et vous communiquez facilement avec les autres, par l'intermédiaire de Gist, du bugtracker, de pull request, du wiki...

Intervenir sur un projet est devenu incroyablement simple :

* En clonant un projet, vous pouvez travailler sur le code en moins d'une minute :

![](http://help.github.com/images/bootcamp/bootcamp_3_fork.jpg)

* En faisant un "pull request", vous pouvez contribuer à un projet (notez la discussion qui s'en suit) :

![](https://img.skitch.com/20110203-xhmdamh6n6yupg6wkscqjb4m93.jpg)

* En éditant le wiki, vous pouvez modifier la documentation projet.

* En créant un *issue* dans le bugtracker, vous pouvez demander une fonctionnalité ou rapporter un bug.

Quel changement ! Souvenez vous «avant», où il fallait s'abonner à une liste de diffusion, discuter avec les développeurs pour demander comment envoyer ses patchs, voir attendre les droits d'écriture sur le SVN... GitHub exploite à fond la puissance des outils de code décentralisé (DVCS), ou le *fork* et le *merge* sont des actions simples et surtout naturelles. Git étant ici favorisé par rapport à Mercurial par sa meilleure gestion des branches et des dépôts distants (ce dernier grignotant néanmoins petit à petit son retard).

Le développeur est mis en avant
========================

Sur GitHub, le développeur a une **existence propre**. Il est facile de voir ses délots, et plus généralement ses activités. GitHub montre que les projets n'ont pas de vie propre, mais sont animés par des développeurs. C'est la suite logique vers la **reconnaissance** du rôle de développeur, que le *Logiciel Libre* avait initié (je suis sûr que vous connaissez le nom du responsable du projet Linux, mais connaissez vous le nom du responsable du projet Windows 7 ?). Vous leur parliez par IRC et par liste de diffusion, vous voyiez leurs annonces sur le blog alors que maintenant vous pouvez simplement visualiser leurs activités et surtout **collaborer** sans action lourde, comme s'abonner à de multiples liste de diffusion.

La suite logique de cette philosophie est l'extension *Linkedin* pour GitHub : vous mettez en avant votre code, votre mobilisation dans des projets Libres, votre capacité à gérer un projet...

Conséquences
===========

Son usage est centré sur l’utilisateur, l’individu, contrairement aux «forges« qui l’ont précédées et qui sont orientées sur les projets, cela restructure les communautés. Le système de fork attire les contributions de manière beaucoup plus naturelle et informelle que le système traditionnel. Le mainteneur incluant parfois des modifications sans demander aux contributeurs car il suit les forks de son projet !

Github a permis aussi à de nombreux projets mineurs de se donner une visibilité inespérée, évitant à certains de mourir faute de contributions.

Et enfin, aspect intéressant de la vie du projet, si les «requests» sur le projet initial permettent au propriétaire d’inclure facilement et rapidement la modification, l’existence des *forks* GitHub (c'est à dire un fork au niveau du code) permettent aussi de **forker** (ici employer dans le sens «traditionnel», c'est à dire au niveau projet) si le mainteneur ne fait pas son boulot ! 

GitHub est il seul ?
==============

Plus maintenant, nous pouvons citer un concurrent libre (vous pouvez héberger votre propre site) qui s'appelle [Gitorious](http://gitorious.org/). Il offre des fonctionnalités similaires, notamment dans l'aspect collaboratif (visitez par exemple [la page du projet Git](http://gitorious.org/git)).

Dans le monde non Git, il existe d'autres plateformes, notamment [Launchpad](https://launchpad.net/) qui aurait pu connaître le succès de GitHub. Lancé en 2004, il dispose de nombreuses fonctionnalités de gestion de projet comme Answers pour le support de la gestion de la connaissance, Blueprints pour la spécification ou Translations pour la traduction ou les PPA pour l'hébergement de paquets Ubuntu. C'est la plateforme collaborative du projet Ubuntu, qui fédère des milliers d'utilisateurs. J'ai utilisé Launchpad très tôt (les projets Python étant les premiers utilisateurs de cette plateforme) et il avait un potentiel énorme. Hélas, la volonté de pousser l'outil maison à tout prix (en l'occurence Bazaar) a ôté toute chance à la plateforme de connaître un réel succès, Bazaar (que l'on écrit souvent «bzr») n'ayant pas décollé par rapport à Git et Mercurial. Dommage.

Autre concurrent, [Bitbucket](https://bitbucket.org/). Ce dernier est proche de GitHub mais utilise Mercurial (que l'on écrit souvent «hg») en offrant hébergement gratuit comme payant. Comme pour Launchpad, c'est aussi le manque de popularité de Hg par rapport à Git qui fait (pour l'instant) de BitBucket un outsider et non un concurrent direct. Mais le rachat par Attlassian (connu des Javaistes pour développer JIRA et Confluence) en septembre 2010 peut changer la donne.

Google Code est aussi une plateforme de qualité (avec Wiki, bugtracker, site web, visualiseur de source). Initialement limité à Subversion, il est maintenant possible d'utiliser Hg. Mais Google code n'offre aucune fonctionnalité sociale, et l'intégration de Hg est peut être un peu tardive (avril 2009).

Sourceforge est encore dans la course, grâce à une refonte complète du site. Le côté intéressant est que vous pouvez utiliser l'outil de gestion de source que vous voulez (cvs, svn, git, hg, bzr) avec accès à une base MySQL. Néanmoins, la refonte peine à cacher l'aspect vieillissant, il suffit pour cela de visiter un projet et de faire une comparaison avec le design clair d'un Bitbucket ou GitHub.

Enfin, vous avez de nombreuses «forges logicielles», ces sites vous permettant d'héberger vos projets libres. On peut citer Alioth, BerliOS, Tigris, Assembla, KForge, GNU Savanah... Mais encore une fois, elles font bien pâles figures face aux sites «sociaux», et n'offrent généralement pas d'hébergement payant (permettant leur développement en payant des développeurs). 

Néanmoins, il est vital pour l'écosystème du Logiciel Libre (et le marché de l'hébergement de code) d'avoir des concurrents sérieux. J'espère donc que Bitbucket ou Launchpad évolueront rapidement dans le bon sens, obligeant GitHub à travailler sans relâche pour rester en tête. 
