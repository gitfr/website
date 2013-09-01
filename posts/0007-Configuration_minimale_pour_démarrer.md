<!-- 
.. link: 
.. description: 
.. tags: git, configuration
.. date: 2010/11/4 2:01:00
.. title: Configuration minimale pour démarrer
.. slug: configuration-minimale-pour-demarrer
-->

La configuration minimale se résume à donner son nom et son adresse email (pour indiquer qui est le "propriétaire" du commit) : 

> `$ git config --global user.name "Sebastien Douche"`

> `$ git config --global user.email sdouche@gmail.com`

L'option `--global` permet de configurer pour tous les dépôts que vous allez utiliser, en enregistrant ces paramètres dans le fichier `~/.gitconfig`.

Avec l'option `--system`, c'est une configuration pour tous les utilisateurs de la machine, et la configuration se trouve dans le fichier `/etc/gitconfig`.

Sans option, vous configurez uniquement le dépôt courant, ce qui permet par exemple de spécifier votre adresse personnelle et non professionnelle.

Trois petites informations supplémentaires :

- Sans cette configuration, Git va utiliser directement les informations contenues dans votre profil utilisateur système, ce qui n'est pas souhaité (par ex. `seb@mamachine`). 

- Il n'y a **pas** de vérification par Git. Ce dernier créé une entrée *name* dans la section *user*. Si vous tapez `userz.namer`, c'est pareil pour lui.

- Vous pouvez éditer directement les fichiers, le résultat est strictement identique. D'ailleurs je vous conseille d'éditer les fichiers pour voir à quoi ils ressemblent (avant et aprés modification).
