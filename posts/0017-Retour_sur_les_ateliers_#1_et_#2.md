<!-- 
.. link: 
.. description: 
.. tags: gitfr, atelier
.. date: 2010/12/4 23:39:00
.. title: Retour sur les ateliers #1 et #2
.. slug: retour-sur-les-ateliers-1-et-2
-->

Voila donc les ateliers #1 et #2 passés, il est donc temps de faire un point. A la base, c'est une simple envie de partager mon enthousiaste sur Git à quelques connaissances, et cela s'est transformé en présentation à **150** personnes. D'ailleurs, on m'a demandé d'en faire d'autres, vous risquez donc de me voir ici ou là en 2011 :).

Approche adoptée
----------------

L'objectif est de donner une vision globale de  Git, contrairement aux présentations «classiques» que j'ai pu voir, généralement focalisées sur les commandes de bases. J'ai donc tenter de conceptualiser Git au travers de 3 points :

1. la gestion de contenu
2. le graphe des commits (le DAG)
3. les références

Et en m'attachant à présenter chaque concept complètement, par exemple la base de données clé / valeur, que l'on voit uniquement dans les présentations avancées. C'est ce que je considère comme la première étape dans la maitrise de Git. S'ensuit :

* la connaissance des commandes de bases pour manipuler ces 3 concepts
* et enfin, la capacité à adapter Git à ses besoins (Git Fu)

Avec le recul, c'est une approche assez osée. Mais c'était la seule que je juge, encore maintenant, valable : parler des commandes me semblait dérisoire. A quoi bon s'attacher à parler de `git checkout -b` quand on ne sait pas ce qu'est un graphe et qu'une branche n'est rien d'autre qu'une référence sur un *noeud* de ce même graphe ? Le but de la présentation est de permettre un **apprentissage** complet de l'outil, pas seulement de donner une vision parcellaire.

Les retours sont plutôt bons (même excellents, mais je me méfie toujours des gens qui ne parlent pas, c'est souvent eux qui n'ont pas appréciés mais qui par gentillesse ne le disent pas). J'attends les retours papiers de Valtech, mais j'ai reçu une bonne soixantaine de félicitations, plus ceux des gens qui ont vu la présentation uniquement sur le Net. En résumé, l'approche semble bonne. Et ça c'est cool.

Git, le point d'entrée
----------------------

J'ai souhaité (re)parler de Workflow (cf ma [présentation DVCS au ParisJUG](http://www.parisjug.org/xwiki/bin/view/Meeting/20100511)), qui se trouve d'ailleurs en introduction de la présentation. Git, comme tout SCM (outil de gestion de source), doit être maitrisé avant d'aller plus loin ? Plus loin dans quoi ? Dans la capacité d'une équipe à livrer pardi ! Sans maitrise de votre SCM, point d'intégration continue, point de démo fréquente, et encore moins de livraison fréquente. L'objectif de #gitfr à toujours été pour moi d'aller plus loin que Git et d'échanger autour de la mise en place d'une chaine allant du développement à la mise en production. Chaine que l'on appelle maintenant **devop** (développement -> Q/A -> production).

A l'atelier #1, je me suis focalisé principalement sur les concepts Git. Puis à l'atelier #2, j'ai abordé plus longuement les **techniques de collaboration** et de **mise en production**. Je pense aller plus loin pour les prochaines éditions, mais en 2h seulement, difficile de tout aborder de manière suffisamment claire.

Plusieurs personnes ont manifestées un vif intérêt pour le devop, et je pense en parler abondamment en 2011. J'ai d'ailleurs un [début d'expérience assez intéressant à partager](http://groups.google.com/group/paris-devops/browse_thread/thread/7619021dfdbdd851).

La forme
--------

Pour compenser une présentation théorique, il fallait miser à fond sur la représentation graphique. Et la, [Chacon](http://twitter.com/chacon) est venu à mon secours. Le fondateur de **GitHub** fait des présentations Git depuis 3 ans maintenant, et j'ai pris ici et la les dessins dont j'avais besoin (pour l'anectode, j'ai tapé dans dix présentations différentes). Je pense que l'apport des dessins dans cette présentation est similaire à la musique dans Star Wars : un **énorme** plus.

Par contre, certains dessins étaient trop chargés par rapport à ce que je tentais d'expliquer. Une amélioration notable serait de faire moi même mes dessins. Je vais donc me former sur **Inkscape** (je suis sous Linux). Il faut noter que Chacon propose ses dessins dans le format original, malheureusement avec une application uniquement disponible sous Mac OS X.

Autre point notable, le nombre de slides : *338* pour l'atelier #1, *308* pour l'atelier #2 (j'ai supprimé quelques slides qui me semblaient peu utiles avec l'expérience de la première présentation). Soit plus d'un slide à minute. Cela faisait longtemps que je revais de ce genre de présentation : rapide, virevoltante, avec des slides trés légers, aérés... Une présentation **Zen** en sommes. Et cela, sans trop sacrifié au visuel.

Depuis des années (je fais pas mal de présentations en interne), mon outil était **Impress** de la suite *OpenOffice.org*. Oh, ce n'est pas que j'aimais cet outil (j'ai horreur des outils bureautiques), mais je n'avais guere le choix de mon point vue : je voulais un outil simple d'utilisation, sans avoir à connaitre trop de choses techniques, me permettant de me concenter au maximum sur le contenu (et surement un poil de feignantise de ma part à apprendre un nouvel outil). Et c'est à la conférence **OSDC.fr** 2011, conférence parrainée par 3 associations : *Mongueurs de Perl*, *Ruby France* et *AFPy* (Association Francophone Python, je suis administrateur de cette dernière). que j'ai pu voir une présentation par le CTO de GitHub (c'était à la base Chacon qui devait venir, malheureusement il a eut un empêchement). C'est à ce moment la que j'ai découvert l'outil [ShowOff](https://github.com/schacon/showoff) en action. Et pour l'anectode, c'est un Perliste qui m'a donné l'info, moi Pythonien alors que c'est outil codé en Ruby :).

C'est un outil qui permet d'écrire le contenu au format [Markdown](http://daringfireball.net/projects/markdown/), trés employé dans le monde Ruby. Il existe un équivalent dans le monde Python : **ReST**, bien plus avancée mais malheureusement moins connu. Pour info, le format Markdown est trés employé sur GitHub, puisqu'il est utilisable un peu partout (Gist, Wiki, doc sur le dépôt...). Pour écrire un slide, cela se résume à :

> !SLIDE

> Ceci est mon texte

Comme vous pouvez le constater, c'est trés simple. Il ne reste plus qu'a écrire votre fichier *CSS* pour spécifier la taille de vos fontes, les couleurs de bases, etc. Je vous laisse étudier la documentation pour en savoir plus. Moi, **Unixien** pur jus, adepte de la **ligne de commande** et du **fichier texte**, je suis aux anges. Adieu OpenOffice.org Impress complètement buggé (essayez de faire un drag & drop pour déplacer un slide par exemple), adieu les 80% de mon temps focalisé sur la mise en page, adieu utilisation de la souris... Point non négligeable, il est possible de découper en morceaux sur le disque (par exemple, 1 section = 1 répertoire) sans rien paraitre. Reprendre une section éxistante dans une nouvelle présentation se résume donc... à copier un répertoire. Bref j'aime.

Bien évidemment, le tout est versionné dans un dépôt Git (et backupé avec [Dropbox](http://www.dropbox.com) pour être complet sur le sujet).

A la conférence [Soft-Shake](http://www.soft-shake.ch/) à Genève, j'ai  présenté 254 slides en une heure (plus de **4 slides à la minute !**). Mais tout n'est pas parfait, ce genre de présentations :

* demande de connaitre vos slides sur les bout des doigts pour bien gérer les transitions. Vous pouvez ajouter des aides (des slides qui ont pour but de vous rappeler ce qu'il faut dire) mais cela ne compense pas la nécessité de bien se souvenir de l'ensemble des slides.
* peut être perturbant pour ceux qui ont du mal à suivre, puisque les slides s'enchainent vite.

De plus, réviser une présentation de 2h demande **beaucoup** de temps. Répêter 2 fois la présentation (ce qui n'est pas beaucoup, idéalement il faut le faire une bonne dizaine de fois) par exemple signifie donc... 4h.

Autre soucis, cela fait maintenant 3x que je fais une présentation Git. J'ai donc récité (au bas mot) certains slides 30x. C'est dur de se mettre à la place d'un orateur qui voit les slides pour la 1ere fois (cela s'appelle la **malédiction du savoir**) : parler lentement, bien expliquer. Je suis passé trop vite sur certains slides, surtout à l'atelier #2.

Malgré tout, aprés 3 expériences, les retours sur le format sont encore une fois, trés positifs. Les gens semblent même en redemander ! A titre personnel, je suis contre les présentations lourdes (avec de **slideuement**, des *slides documents*), ou l'orateur passe plus de temps à lire son texte qu'a présenter ses idées.


A noter : l'utilisation d'un prisonnier à fait tiquer, en me demandant de ne pas exploiter la souffrance des autres. J'ai trouvé la remarque étrange, tout le monde ayant compris que j'exploitais le coté tordu du personnage, et non la tragédie de la guerre. Comme quoi, faut penser à tout.

L'orateur
---------

Bon, malgré les félicitations des uns et des autres, j'ai encore beaucoup à apprendre pour faire une bonne pres. Et pour cause, c'est bien l'orateur qui fait le succés, pas les slides ! Il est nécessaire d'être calme, détendu, ouvert sur son public. J'apprécie par exemple beaucoup le calme de [Régis Médina](http://www.regismedina.com/about), parlant d'une voix posée. Moi je stresse trop, bouffant la moitié des mots... Une catastrophe (bon j'ai quelques raisons médicales pour expliquer mon stress, mais l'auditeur en a un peu rien à foutre, il est la pour avoir la meilleure expérience possible).

A ma décharge, c'était ma 5eme et 6eme présentation publique (au ParisJUG, c'était ma 2eme). Il n'y a pas de secret, il faut travailler et multiplier les présentations pour s'améliorer. Scott berkun, orateur et écrivain connu explique dans son livre [Confessions of a public speaker](http://www.amazon.com/gp/product/B002VL1CGM/) que la peur d'être seul sur scène, devant des dizaines de personnes est naturelle. Il faut la dompter, l'apprivoiser. C'est bien ce qui me reste à faire ! Néanmoins, il parait que ne se voit pas trop que je débute. Tant mieux :).

La suite ?
----------

Beaucoup de mains se sont levées pour souhaiter des ateliers. Je suis donc à la recherche de locaux (si possible) sur Paris avec tables, chaises et du réseau pour 20/25 personnes. Je pense faire 3/4 ateliers débutants, 3 ateliers intermédiaires et 1/2 ateliers avancés. Si votre entreprise peut accueillir, faites moi signe (**seb@gitfr.net**). Je rappelle également que je suis intéressé pour présenter Git et devop à des entreprises. Aider les organisations à être plus efficace étant mon dada.

Conclusion
----------------

Du positif ! Les gens semblent **contents** et moi j'apprends Git en profondeur, ce qui est mon objectif personnel. Mais pas le temps de se réposer, il faut bosser sur l'atelier **initiation**.

Je suis preneur d'avis et de critiques, n'hésitez donc à poser un commentaire sur le blog, même si c'est trés négatif :).
