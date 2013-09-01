<!-- 
.. link: 
.. description: 
.. tags: git, release
.. date: 2011/6/13 1:57:00
.. title: Git 1.7.5.1 publiée
.. slug: git-1.7.5.1-publiee
-->

La première version de maintenance de la branche 1.7.5.x est sortie la 5 mai.

Le changelog
------------

 * When an object "$tree:$path" does not exist, if $path does exist in the
  subtree of $tree that corresponds to the subdirectory the user is in,
  git now suggests using "$tree:./$path" in addition to the advice to use
  the full path from the root of the working tree.

 * The "--date=relative" output format used to say "X years, 12 months"
  when it should have said "X+1 years".

 * The smart-HTTP transfer was broken in 1.7.5 when the client needs
  to issue a small POST (which uses content-length) and then a large
  POST (which uses chunked) back to back.

 * "git clean" used to fail on an empty directory that is not readable,
  even though rmdir(2) could remove such a directory.  Now we attempt it
  as the last resort.

 * The "--dirstat" option of "diff" family of commands used to totally
  ignore a change that only rearranged lines within a file.  Such a
  change now counts as at least a minimum but non zero change.

 * The "--dirstat" option of "diff" family of commands used to use the
  pathname in the original, instead of the pathname in the result,
  when renames are involved.

 * "git pack-object" did not take core.bigfilethreashold into account
  (unlike fast-import); now it does.

 * "git reflog" ignored options like "--format=.." on the command line.

 * "git stash apply" used to refuse to work if there was any change in
  the working tree, even when the change did not overlap with the change
  the stash recorded.

 * "git stash apply @{99999}" was not diagnosed as an error, even when you
  did not have that many stash entries.

 * An error message from "git send-email" to diagnose a broken SMTP
  connection configuration lacked a space between "hello=<smtp-domain>"
  and "port=<smtp-server-port>".

 * "git stash -p --no-keep-index" and "git stash --no-keep-index -p" now
  mean the same thing.

 * "git upload-pack" (hence "git push" over git native protocol) had a
  subtle race condition that could lead to a deadlock.
