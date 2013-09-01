<!-- 
.. link: 
.. description: 
.. tags: git, release
.. date: 2011/6/13 2:05:00
.. title: Git 1.7.5.2 publiée
.. slug: git-1.7.5.2-publiee
-->

La deuxième version de maintenance de la branche 1.7.5.x est sortie la 20 mai.

Changelog
---------

* "git add -p" did not work correctly when a hunk is split and then
  one of them was given to the editor.

 * "git add -u" did not resolve a conflict where our history deleted and
  their history modified the same file, and the working tree resolved to
  keep a file.

 * "git cvsimport" did not know that CVSNT stores its password file in a
  location different from the traditional CVS.

 * "git diff-files" did not show the mode information from the working
  tree side of an unmerged path correctly.

 * "git diff -M --cached" used to use unmerged path as a possible rename
  source candidate, which made no sense.

 * The option name parser in "git fast-import" used prefix matches for
  some options where it shouldn't, and accepted non-existent options,
  e.g. "--relative-marksmith" or "--forceps".

 * "git format-patch" did not quote RFC822 special characters in the
  email address (e.g From: Junio C. Hamano <jch@example.com>, not
  From: "Junio C. Hamano" <jch@example.com>).

 * "git format-patch" when run with "--quiet" option used to produce a
  nonsense result that consists of alternating empty output.

 * In "git merge", per-branch branch.<name>.mergeoptions configuration
  variables did not override the fallback default merge.<option>
  configuration variables such as merge.ff, merge.log, etc.

 * "git merge-one-file" did not honor GIT_WORK_TREE settings when
  handling a "both sides added, differently" conflict.

 * "git mergetool" did not handle conflicted submodules gracefully.

 * "git-p4" (in contrib) used a wrong base image while merge a file that
  was added on both branches differently.

 * "git rebase -i -p" failed to preserve the history when there is a
  redundant merge created with the --no-ff option.

