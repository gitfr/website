<!-- 
.. link: 
.. description: 
.. tags: github, migration
tags: haskell
.. date: 2011/4/3 14:34:00
.. title: Haskell sur GitHub

On le savait déjà (la décision date d’aout 2008 !) mais voila une très mauvaise nouvelle pour l'outil de gestion de source [Darcs](http://darcs.net/). Le principal projet qui l'utilise, à savoir le compilateur [Haskell GHC](http://www.haskell.org/ghc/), passe officiellement sur Git, avec un [miroir disponible sur GitHub](https://github.com/ghc/ghc) depuis le 31 mars.

Mauvaise nouvelle aussi (et surtout) car Darcs est lui même en Haskell, le projet GHC était donc le premier pourvoyeur (si je ne me trompe pas) de contributions. Mais le point intéressant est l'argument pour passer à Git :

> It came down to two things: the degree of support available, and 
> flexibility of the tools (git is much happier to let you modify the history 
> than Mercurial).  Speed ruled out bzr, and Windows support is less of an 
> issue: git appears to work reasonably well on Windows these days.

Les développeurs GHC, comme la fondation Eclipse, estiment donc que le support Windows est devenu «raisonnable» pour ne pas gêner les utilisateurs de cette plateforme. Ils estiment aussi que la vitesse est le point faible de Bazaar (bzr). Et enfin, que la capacité de retravailler son historique (point fort que je mets en avant dans toutes mes présentations Git) est un atout important. Point important, cette phrase vient du mail expliquant la migration en 2008 (Bazaar étant maintenant plus rapide, par contre Git est toujours mieux armé pour gérer l'historique).

Est ce la fin pour Darcs ? Un projet Libre ne meurt vraiment jamais tant qu'il existe des utilisateurs. Le développement se poursuit (la 2.5.2 est sortie et la 2.8 est en cours de développement avec le support très attendu de la fonction *rebase*). Il est dommage pour la diversité de l'écosystème Libre qu'un outil meurt mais Darcs ne semble plus avoir d'atout majeur face à Git.

Pour la petite histoire, Darcs est né en 2002 d'un **fork** du projet GNU Arch (1er DVCS libre en 2001). L'aspect intéressant de Darcs est qu'il présente non pas l'historique comme une série de «snapshots», mais comme une suite de **patchs**, qui n'ont pas nécessairement de lien entre eux. Ce qui facilite grandement le **cherry-picking**. Malheureusement, des performances catastrophiques et quelques bugs génants au moment du *merge* n'ont jamais permis à Darcs de décoller.
