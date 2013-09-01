<!-- 
.. link: 
.. description: 
.. tags: git, release
.. date: 2011/6/13 2:10:00
.. title: Git 1.7.5.4 publiée
.. slug: git-1.7.5.4-publiee
-->

La quatrième version de la branche 1.7.5.x est sortie le 2 juin, soit seulement 5 jours aprés la précédente. C'est la dernière ligne du changelog qui nous donne la réponse.

Changelog
---------

 * The single-key mode of "git add -p" was easily fooled into thinking
  that it was told to add everthing ('a') when up-arrow was pressed by
  mistake.

 * Setting a git command that uses custom configuration via "-c var=val"
  as an alias caused a crash due to a realloc(3) failure.

 * "git diff -C -C" used to disable the rename detection entirely when
  there are too many copy candidate paths in the tree; now it falls
  back to "-C" when doing so would keep the copy candidate paths
  under the rename detection limit.

 * "git rerere" did not diagnose a corrupt MERGE_RR file in some cases.
