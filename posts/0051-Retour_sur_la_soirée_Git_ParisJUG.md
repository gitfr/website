<!-- 
.. link: 
.. description: 
.. tags: gitfr, atelier
.. date: 2011/4/23 5:36:00
.. title: Retour sur la soirée Git ParisJUG
.. slug: retour-sur-la-soiree-git-parisjug
-->

J'arrive vers 19h et des poussières, et je vois une file assez impressionnante de personnes qui attendent de rentrer. J'apprendrai plus tard que le système de réservation s'est gouré et n'a pas limité à 200 places comme d'habitude mais à... 300 ! L'équipe du ParisJUG s'est donc mis à la recherche d'un maximum de sièges (interdiction de rester dans le couloir ou par terre). Donc non seulement j'ai battu le record d'inscription (200 places parties en 3h, 120 personnes en liste d'attente), mais surement le nombre de personnes présentes à une conférence :). Signe que Git à le vent en poupe en France !

A cause d'une pause de 40mn en plein milieu de la soirée j'ai présenté Git en deux parties, de 55 minutes chacune. Le tout faisant 393 slides.

La partie «théorie»
-------------------
J'ai épuré par rapport à l'atelier #1 et #2, pour me focaliser sur les points clés :

* Les objets (blob, tree, commit)
* La base de données clé / valeur
* Le SHA1
* Le graphe (DAG)
* Les références (tag et branche, distante et locale)
* Un peu de théorie sur le merge (2 way merge, 3 way merge)

La difficulté est que l'auditeur lambda ne connait pas les DVCS, la notion de graphe (le DAG) n'est donc **pas maitrisée**. Venant de svn, ils ne connaissent que le graphe à une branche (que j'appelle un **graphe dégénéré**). C'est à cause de ce graphe unaire que les merges sont difficiles. Inversement, le DVCS ayant une **vue globale** de l'historique, il est plus à même de vous faciliter la vie avec de nombreuses commandes et de prendre les bonnes décisions.

Les points fondamentaux que j'ai tenté de faire passer : 

* Git est avant tout bien pensé conceptuellement. Complexe de prime abord, la compréhension de Git est grandement amélioré en abordant chaque concept individuellement.
* Git permet de modifier le graphe dans tous les sens. C'est le **gros** avantage sur ses concurrents.
* Le travail collaboratif est simplifié avec les références distantes, permettant d'avoir N versions d'un projet sur son dépôt.

Et surtout que Git n'est **pas** l'outil magique que l'on peut croire, il n'est qu'un **outil stupide** qu'il ne fait que ce qu'on lui ordonne. Mais il a l'avantage de disposer des fonctionnalités qu'on est en droit d'attendre en 2011. **Svn est dépassé**, pas besoin de tortiller du cul (j'aime bien cette expression un poil vulgaire).

La partie «pratique»
--------------------
Cette partie avait pour but de mettre les pieds à l'étrier, en donnant des conseils et quelques astuces. J'ai pensé à parler des commandes de base, ou à faire une démo en «live», mais après quelques essais, je n'était pas satisfait. J'ai donc joué la carte du **faire envie**. J'ai parlé de quelques commandes que j'adore comme le `add -p` ou le `rebase -i`. 

Mais surtout, le point clé de cette partie est de montrer l'utilité de modifier aussi facilement le graphe pour disposer d'un historique «propre». Cette notion étant mouvante dans le temps, on peut à tout moment revoir cette historique pour le rendre conforme à ses souhaits. Disposer de **commits  unitaires** facilitant la compréhension des changements, des **multiples branches** pour différencier les travaux au cours du temps et leurs intégrations, le tout donc dans un graphe facile à comprendre. est un avantage **indéniable** de Git. C'est de mon point de vue, ce qu'il l'emporte sur *Hg*. Car ce dernier est (aussi) bien pensé, (plus) facile à utiliser et diablement efficace, même si la gestion des branches est un poil simpliste.

J'ai aussi parlé des Workflows et rapidement des outils graphiques et de GitHub.

Conclusion
----------
De l'avis de toutes les personnes qui ont vu mes premières présentations, celle ci est bien mieux construite. Mon travail à donc payé (j'ai passé quelque chose comme 20h, si ce n'est pas plus). J'ai aussi accompagné les auditeurs pendant 2h, la pause aidant sur ce point.

Mais si j'ai bien réussi la partie théorique, je dois encore améliorer la partie pratique en enlevant quelques commandes peu pertinentes et me focaliser sur l'intérêt de modifier le graphe à travers des exemples intéressants : l'avantage du décentralisé en travaillant tranquillement sur son dépôt, le travail collaboratif, le fait de revoir son historique au bout de plusieurs semaines de travail, etc.

Bref, beaucoup de positif, mais encore du travail pour une meilleur ROI de l'auditeur :).
