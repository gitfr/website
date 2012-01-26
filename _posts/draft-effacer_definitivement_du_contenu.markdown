#---
#categories: git, astuce
#date: 2011/08/04 01:50:00
#title: Effacer définitvement du contenu
#slug: effacer-definitvement-du-contenu
#---

Ceux qui ont suivi mes conférences se rappelleront qu'il existe **deux Git** :
le **frontend** que l'on manipule et le **backend** qui est appelé directement
par le frontend. Pour le premier, effacer du contenu signifie qu'aucune
référence ne pointe directement ou directement sur le commit qui contient ce
contenu. Autrement dit, aucune branche ou tag ne permet d'atteindre ce commit.

C'est ainsi qu'effacer du contenu se résume à supprimer des références : je
veux supprimer une branche, je supprime la référence du type branche. Aprés
cette opération, la branche et les commits associés ne seront plus visibles
dans un outil frontend comme **gitk** ou **gitX**.

Mais cela ne veut pas dire que ces commits ont disparu, bien au contraire. Si
vous reposez votre référence au même endroit, tous vos commits vont
ré-appararaître instantanément ! Logique, vous n'avez fait qu'effacer une
référence, l'opération inverse nous fait revenir au point de départ. Et cela
est bien pratique d'ailleurs, il est toujours possible de récupérer les pires
bétises avec Git :).

Le garbage collector
--------------------

Le backend efface réellement les commits une fois de temps en temps, plus 
précisemment quand le **garbage collector** passe. Ce dernier n'est pas un
processus à part mais est appelé en tâche de fond et vérifie périodiquement
s'il a de boulot. Par défaut, il attend 3 mois après l'effacement
de la référence pour effacer les commits non accessibles. Et si je ne dis pas 
de bétise, il passe aussi quand Git compresse la base de données (autrement
dit quand vous avez beaucoup d'objets).

Effacer manuellement
--------------------

Il faut tout simplement appeler vous même la commande :

	$ git gc

Qui va par défaut **effacer les objets de plus de 2 semaines**. Si vous voulez
tout effacer :

	$ git gc --aggressive --prune=now

Dans quel cas ?
---------------

Je n'utilise jamais cette commande, mais il existe 2 cas ou cela est fort
utile :

* Supprimer du contenu secret (vous avez bêtement commité en public le fichier
  des mots de passe).

* Supprimer du contenu volumineux, ce qui est le cas de Julien.

Je vous conseille de laisser Git se débrouiller si vous ne rentrez pas dans
un de ces deux cas, il est toujours utile de récupérer du contenu même
longtemps après :).
