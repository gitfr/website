<!-- 
.. link: 
.. description: 
.. tags: git, configuration
.. date: 2010/11/4 2:37:00
.. title: Eviter de commiter des fichiers indésirables
.. slug: eviter-de-commiter-des-fichiers-indesirables
-->

Pour éviter d'historiser des fichiers qui ne nous intéresse pas, il est nécessaire de configurer le fichier `~./gitignore`. Bien évidemment, le contenu de ce fichier dépendra fortement du contexte (éditeur utilisé, langage, os...). Personnellement, mon fichier fait 30 lignes, je n'ai donc plus me soucier quand je fais un `git add .`, et je n'hésite pas à ajouter une exclusion dés que le besoin s'en fait sentir.

La configuration de ce fichier est trés simple :

- 1 ligne par exclusion
- si c'est un répertoire, mettre son nom (comme `egg`)
- si c'est un fichier, ajouter un wildcard (comme `*.egg`)

Enfin, il faut modifier sa configuration Git pour utiliser ce filtre d'exclusion sur tous les dépôts avec la ligne `excludesfile=/path/to/.gitignore` dans la section `[core]` (remplacer "/path/to" par le chemin vers votre fichier). Ce qui donne :

>`[core]`

>`excludesfile=/home/sdouche/.gitignore`

Disposer d'un gitignore à deux intérêts :

1. éviter de commiter des fichiers indésirables
2. ne pas être surchargé d'informations inutiles (présence de fichier *non suivis*, **untracked** en anglais)

Nous allons voir plus tard que c'est pénible quand nous avons un **prompt** qui affiche **en permanence** la présence de ces fameux fichiers indésirables.

Pour plus d'information sur gitignore, je vous conseille la lecture de la [doc](http://www.kernel.org/pub/software/scm/git/docs/gitignore.html).

Note : il est bien sûr possible de disposer d'un fichier *gitignore* par dépôt, utile quand on veut s'assurer que les développeurs (par exemple sur un projet Libre) ne feront pas la bétise de commiter ces fichiers à cause d'une mauvaise configuration.
