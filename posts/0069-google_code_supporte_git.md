<!-- 
.. link: 
.. description: 
.. tags: git, google code, github
.. date: 2011/07/17 18:35:00
.. title: Google Code supporte Git

Le ticket [2454](http://code.google.com/p/support/issues/detail?id=2454) est
maintenant fermé. Nommé *native git support*, c'était le ticket le plus 
**demandé** (*starred*) par les utilisateurs. Un peu plus de 2 ans après le
support de Mercurial, Google Code **supporte** donc Git. Cela signifie que
les 3 plus gros hébergeurs de code (Sourceforge, Google Code et GitHub)
supportent maitenant notre DVCS préféré. Cela signifie aussi que l'avenir
s'assombrie pour Mercurial, qui se retrouve (presque) dans la même
situation que Bzr, avec un seul hébergeur *dépendant* important. Terme mal
choisi pour désigner un hébergeur qui s'appuie uniquement sur une techno, en
l'occurence [Bitbucket](https://bitbucket.org/) ([Launchpad](https://launchpad.net/)
pour Bzr).

Pourquoi ce changement alors que rien ne semblait prévu ? Je vois deux
raisons, l'une **technique** et l'autre **marketing**.

L'argument technique
--------------------

Comme le dit très bien Shawn Pearce, développeur Git, mainteneur des projets
[Gerrit](http://code.google.com/p/gerrit/) et [JGit](http://www.eclipse.org/jgit/) 
(ré-implentation de Git en Java, utilisé par Gerrit et Eclipse notamment),
sur la liste de diffusion, Git supporte depuis la version 1.6.6 le protocole
**smart http**. Ce dernier gère bien mieux le protocole http sur lequel Google
Code s'appuie **massivement**. Ce qui a ouvert la voie, il *suffisait* (hum)
ensuite de modifier Git pour gérer l'infrastructure Google. Si cela vous
intéresse, jeter un oeil sur la video
[Google I/O 2009 - Mercurial on BigTable](http://www.youtube.com/watch?v=ri796Hx8las)
qui explique cette même modification avec Mercurial. Une vidéo similaire
devrait sortir pour Git (chouette !).

Chose étonnante, d'après Dave Borowitz, Google code n'utilise pas JGit mais
[Dulwich](http://www.samba.org/~jelmer/dulwich/), codé en Python. Je suis
curieux de connaitre les raisons de ce choix (Shawn avait averti que ce
n'était pas JGit mais n'étant pas le responsable du projet, il ne voulait
pas en dire plus).

L'argument marketing
--------------------

La montée en puissance de GitHub ne fait aucun doute, cet
[article](http://www.readwriteweb.com/hack/2011/06/github-has-passed-sourceforge.php)
le montre fort bien : entre janvier et mai 2011, le nombre de commits sur
GitHub représente le total des commits de Sourceforge, Google Code et
CodePlex **réunis**. Même si ce chiffre est à prendre avec de grosses pincettes,
les DVCS poussent au commit unitaire donc à en produire bien plus, c'est
un chiffre intéressant (le nombre de lignes de code serait lui significatif).

Et chose intéressante, on retrouve le C++ et Java en tête,  cela laisse
entendre que ces communautés ont eux aussi (au moins partiellement) basculées
sur GitHub (après les communautés Ruby, Javascript et Python).

Pour conclure
-------------

Redmonk dit que **GitHub est le nouveau centre de gravité**, les chiffres le
prouvent, et je trouve cela très bien. D'un coté, les développeurs sont
poussés à ne plus utiliser des *hébergements 1.0* (et zut, je succombe
moi aussi à cette mode débile). De l'autre, il pousse les hébergeurs à
augmenter drastiquement la qualité. Et on ne va pas s'en plaindre !
