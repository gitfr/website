<!-- 
.. link: 
.. description: 
.. tags: github
.. date: 2011/4/17 23:54:00
.. title: Gestion de ticket v2 sur GitHub

Dans mon précédent [article](http://blog.gitfr.net/post/4312294636/github-au-centre-de-lunivers-git) sur GitHub, je disais que la gestion de ticket était «simple». Et bien, les GitHubbers doivent me lire (je ne vois pas d’autres explications) car GitHub vient de lancer **Issue 2.0**, le nouveau système de gestion de ticket !

Une **issue** (que l’on peut traduire par «problème» mais je préfère le mot «ticket») ressemble maintenant à ça :

![](http://media.tumblr.com/tumblr_ljteu0UlZp1qdkaiq.png)

Vous pouvez constater plusieurs changements comme les personnes concernées (en bas), la délégation du ticket à une personne ou les milestones («étapes» en français). Voyons maintenant les nouveautés plus en détail.

Assigner un ticket
--------------------------
Vous pouvez assigner un ticket à un utilisateur GitHub.

![](https://d3nwyuy0nl342s.cloudfront.net/img/ec0267f7ae8bdbe7b6bda78c356be5bba565e8dd/687474703a2f2f6769746875622d696d616765732e73332e616d617a6f6e6177732e636f6d2f626c6f672f323031312f6973737565732d6e6578742f6f70656e696e672d626c6f636b2d686967686c69676874732e706e67)

Les milestones
---------------------
Créer des milestones est une étape (ah-ah, oui je sais avoir de l'humour) importante pour disposer d'un outil de gestion de ticket efficace, permettant de définir des releases (ticket 10, 11 et 20 pour la future v1.2 par exemple). Un ticket pouvant porter sur une correction de bug, une nouvelle fonctionnalité ou tout autre sujet (documentation, infra...). C'est pour cela que le terme **issue tracker** est plus juste que **bug tracker**.

Historique des états d'un ticket
-----------------------------------------------
On peut maintenant visualiser le changement d'état d'un ticket au cours du temps.

![](https://d3nwyuy0nl342s.cloudfront.net/img/3feb114682e7aec6e55ce668b94a36f076d98674/687474703a2f2f6769746875622d696d616765732e73332e616d617a6f6e6177732e636f6d2f626c6f672f323031312f6973737565732d6e6578742f69737375652d6576656e74732e706e67)

Navigation plus aisée
-------------------------------
Plus simple et agréable, vous pouvez filtrer par label ou milestone. Ou alors voir vos tickets ou ceux ou vous êtes mentionné.

![](http://media.tumblr.com/tumblr_ljtfr1rvLm1qdkaiq.png)

Vous pouvez aussi modifier plusieurs tickets à la fois («mass-edit» en anglais).

![](https://d3nwyuy0nl342s.cloudfront.net/img/b5136bc7590b7cb8b08b235842552ccbfc97aa5e/687474703a2f2f6769746875622d696d616765732e73332e616d617a6f6e6177732e636f6d2f626c6f672f323031312f6973737565732d6e6578742f6d6173732d656469742e706e67)

Enfin une recherche rapide («quickseach» en anglais) affiche les premiers résultats en quasi temps réel fait son apparition.

![](https://d3nwyuy0nl342s.cloudfront.net/img/9f751e258b4da3fce516d692cfb313d527bbc86d/687474703a2f2f6769746875622d696d616765732e73332e616d617a6f6e6177732e636f6d2f626c6f672f323031312f6973737565732d6e6578742f717569636b7365617263682e706e67)

Commit + ticket
-----------------------
Point intéressant, si vous nommez le numéro d'un ticket dans le message de commit, ce dernier  apparaitra sur le ticket.

![](https://d3nwyuy0nl342s.cloudfront.net/img/9bf399559491d3224bfe5c8d861042439f07a6b3/687474703a2f2f6769746875622d696d616765732e73332e616d617a6f6e6177732e636f6d2f626c6f672f323031312f6973737565732d6e6578742f636f6d6d69742d6d656e74696f6e2d726573756c742e706e67)

Mieux, vous pouvez fermer un ticket directement, en utilisation le mot clé *fixes #xxxx* (ou *fixed*, *fix*, *closes*, *close* ou *closed*).

![](https://d3nwyuy0nl342s.cloudfront.net/img/cbe2bf72802c65cb5b741d8b816565d96a933a6b/687474703a2f2f6769746875622d696d616765732e73332e616d617a6f6e6177732e636f6d2f626c6f672f323031312f6973737565732d6e6578742f636f6d6d69742d636c6f73652d726573756c742e706e67)

email + ticket
-------------------
Autre amélioration notable, vous pouvez directement répondre par mail quand vous recevez une notification.

![](https://d3nwyuy0nl342s.cloudfront.net/img/91a10c555a568850237a0ce6eb97e2246c7e73f2/687474703a2f2f6769746875622d696d616765732e73332e616d617a6f6e6177732e636f6d2f626c6f672f323031312f6973737565732d6e6578742f656d61696c616e647765622e706e67)

Raccourci clavier
-------------------------
On peut maintenant se passer de la souris :).

![](https://d3nwyuy0nl342s.cloudfront.net/img/0f4041d149e1e9f314be661808c94aaa74177ce3/687474703a2f2f6769746875622d696d616765732e73332e616d617a6f6e6177732e636f6d2f626c6f672f323031312f6973737565732d6e6578742f6b6579626f6172642e706e67)

PJAX
--------
Les écrans sont en PJAX, une [techno GitHub](https://github.com/defunkt/jquery-pjax) permettant de ne recharger qu'une partie de la page et qui va être généraliser un peu partout (demande Firefox 4 ou un Chrome récent, mais je présume que cela fonctionne avec Opéra et Safari. Non IE n'est pas un navigateur moderne).

Conclusion
-----------------
Les améliorations sont notables et redonnent des couleurs à la partie qui était, à mes yeux, la moins avancée du site en terme d'utilisabilité et surtout de fonctionnalités. L'arrivée des milestones permet de définir une **roadmap**, ce qui est toujours intéressant. Et enfin, la manipulation d'un ticket avec un message de commit va simplifier le travail de gestion de projet. Espérons que GitHub continue sur cette voie, par exemple en permettant de créer automatiquement un ticket avec un message de commit particulier sur un fork.

