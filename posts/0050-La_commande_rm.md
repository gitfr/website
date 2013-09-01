<!-- 
.. link: 
.. description: 
.. tags: git, git-rm
.. date: 2011/4/23 3:21:00
.. title: La commande rm

Peu de chose à dire sur la commande `rm`. Je ne vous fais pas l'injure de dire à quoi elle sert :). Elle est un poil plus complexe que sa soeur *hg* ou *svn* avec la présence de l'index. En effet, nous pouvons effacer des fichiers dans l'index seul, avec l'option `--cached`, mais aussi dans l'espace de travail **et** l'index (par défaut).

Il existe un «raccourci» : si vous avez supprimer un fichier avec la commande `rm` de l'OS, Git supprimera aussi le fichier avec la commande `git commit -a`, puisque cette dernière demande à Git de vérifier les changements dans les fichiers tracés.

Comme d'habitude, lisez le manuel ;).

