<!-- 
.. link: 
.. description: 
.. tags: git
.. date: 2010/12/5 1:54:00
.. title: Suivre le développement de Git
.. slug: suivre-le-developpement-de-git
-->

Chaque série de patchs est mis dans une branche **topic**, c'est à dire une branche dédiée à un développement spécifique. Ce développement est ensuite fusionné (*mergé*) dans la branche **pu** (*proposed updates*), qui est une branche d'intégration. Aprés une ou plusieurs revues, si le code est beau et fonctionnel, il est de nouveau fusionné avec la branche **next**, qui représente la prochaine version stable, et eventuellement dans la branche **maint** qui représente la version stable en cours (dans le cas d'une correction de bugs). **master** quand à lui, ne récupère que des merge venant de **maint**.

Pour résumé, vous avez les branches principales :

* master
* next
* pu
* maint

Et 3 branches supplémentaires de moindres importances : **man**, **html** et **todo**.

Les améliorations se font en mettant à jour la branche topic, puis en fusionnant de nouveau dans la ou les branches concernées.

Ce workflow demande de bien suivre les développements sur l'ensemble des branches. Et comme le dit Junio lui même (le mainteneur du projet), il est nécessaire de :

* voir quels commits sont dans les branches
* vérifier quels commits sont déja mergés et où
* connaitre la date de la dernière mise à jour

C'est l'objet du résumé appelé "What's cooking", qui se trouve dans la branche **todo**. Ce fichier (`whats-cooking.txt`) est le résultat d'un script qui recense les développements en cours. C'est un fichier assez long (environ 800 lignes) qui donnent une trés bonne vue d'ensemble du projet.

Bonne lecture :).

**Note** : Ce fichier est mis à jour chaque semaine dans le dépôt git et il est également envoyé sur la liste de diffusion (**git@vger.kernel.org**).
