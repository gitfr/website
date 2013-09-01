<!-- 
.. link: 
.. description: 
.. tags: github
.. date: 2011/4/25 19:03:00
.. title: Merge en un click

GitHub vient de sortir une fonctionnalité surement attendue par beaucoup : la possibilité de fusionner (*merger*) **facilement** une demande de récupération de code (*pull request*) ! 

Rappel du workflow
----------------------------
Si je souhaite faire des modifications sur un projet, le workflow par défaut de GitHub me demande de suivre ces étapes :

1. Je créé une version personnelle de ce projet sur GitHub, afin d'avoir le droit d'écriture (**fork** dans la terminologie GitHub).

2. Je clone ma version GitHub sur ma machine (`git clone`).

3. Je code, je code, je code.

4. Une fois satisfait, je pousse mes modifications sur mon fork GitHub (`git push`).

5. Je fais un *pull request*, en donnant toutes les informations pertinentes au mainteneur.

C'est à ce moment la que vous demandez au mainteneur du projet de récupérer votre code pour le lire, le commenter et l'intégrer s'il est satisfait de vos modifications.

Coté mainteneur
------------------------
Depuis quelques mois, il peut directement commenter le code dans un *pull request*, vous demander de plus amples informations, ou discuter avec d'autres personnes. Bref, il pouvait tout faire sur l'interface Web sauf pour intégrer le code. Il devait récupérer votre code (`git pull`) dans une branche et fusionner (`git merge`) avec la méthode «traditionnelle», autrement dit avec Git.

La nouveauté
--------------------
Plus maintenant ! Si le mainteneur le souhaite, il peut directement faire une fusion en cliquant sur un bouton :

![](https://img.skitch.com/20110423-qtkkxtwt8rwwrds9b84y8561c6.png)

Si la fusion se passe mal :

![](https://img.skitch.com/20110425-jwxx7qcaeak3rxi42c6kmmj2ab.png)

Il suffit donc d'un seul click pour fusionner et fermer la demande.

**Note** : le merge est un **non fast-forward** (on modélise donc la fusion, cf ma présentation) et le message de merge indique le nombre, la source et le titre du *pull request* :

![](https://img.skitch.com/20110423-8nb941gfhsa6qt1isq71kybh9.png)

Conclusion
----------------
Cette fonctionnalité prend tout son sens depuis les améliorations sur l'interface, puisque l'on peut visualiser le code, commenter le code, discuter autour du code... et maintenant fusionner le code. C'est un pas en avant vers la simplicité et rend GitHub plus attrayant pour les personnes qui ne sont pas encore des «Git-Fu».
