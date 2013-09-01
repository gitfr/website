<!-- 
.. link: 
.. description: 
.. tags: git, release
.. date: 2011/4/7 18:13:00
.. title: Git 1.7.4.4 publiée
.. slug: git-1.7.4.4-publiee
-->

La quatrième version de la branche 1.7.4.x vient de sortir (7/4/2011).

Le changelog :

 * Compilation of sha1_file.c on BSD platforms were broken due to our
  recent use of getrlimit() without including <sys/resource.h>.

 * "git config" did not diagnose incorrect configuration variable names.

 * "git format-patch" did not wrap a long subject line that resulted from
  rfc2047 encoding.

 * "git instaweb" should work better again with plackup.

 * "git log --max-count=4 -Sfoobar" now shows 4 commits that changes the
  number of occurrences of string "foobar"; it used to scan only for 4
  commits and then emitted only matching ones.

 * "git log --first-parent --boundary $c^..$c" segfaulted on a merge.

 * "git pull" into an empty branch should have behaved as if
  fast-forwarding from emptiness to the version being pulled, with
  the usual protection against overwriting untracked files.

 * "git submodule" that is run while a merge in the superproject is in
  conflicted state tried to process each conflicted submodule up to
  three times.

 * "git status" spent all the effort to notice racily-clean index entries
  but didn't update the index file to help later operations go faster in
  some cases.
