<!-- 
.. link: 
.. description: 
.. tags: git, astuce
.. date: 2011/07/31 04:13:00
.. title: Le commit initial vide

Nous instaurons la rubrique astuce avec le **commit initial vide**. Le commit
initial a un statut particulier puisque c'est... le premier, l'ancêtre de tous
les commits. C'est pourquoi je commence **toujours** un dépôt par un commit
initial vide avec la commande :

	$git commit --allow-empty -m "Initial commit."

C'est seulement ensuite que j'ajoute du contenu. A quoi ça sert ? Tout
simplement à **jouer avec tous les commits de contenu**.

Examinons deux exemples.

rebase -i
---------

Un rebase -i demande une limite basse, un commit de référence en sommes. Si
mon graphe est composé des commits c1, c2, c3 et c4, je peux jouer sur c2 à
c4, mais pas c1, ce dernier étant la référence. Si j'ai du contenu dans c1,
je l'ai dans le baba ! Inversement, si c1 est un commit vide, alors tout mon
contenu est accessible.

Travailler directement dans une branche
---------------------------------------

Une bonne pratique est de ne pas travailler dans master, mais uniquement dans
des branches (de fonctionnalités, d'intégration ou de correction de bugs) et de
merger ensuite (avec sans *fast forward* selon le *workflow* que vous avez
choisi). Mais comme mon commit initial est obligatoirement dans master, c'est
raté. Encore une fois, si ce commit ne contient pas de contenu, le problème
disparait de lui-même : mon premier commit de contenu (le deuxième dans le
graphe donc) sera lui, dans une branche.

Conclusion
----------

N'oubliez pas que la puissance de Git vient dans la capacité à manipuler votre
graphe dans tous les sens, et même si vous ne voyez pas l'intérêt de modifier
vos premiers commits, vous en verrez l'utilité plusieurs semaines aprés.
Voir des mois après :).
