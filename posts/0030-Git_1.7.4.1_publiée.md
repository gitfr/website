<!-- 
.. link: 
.. description: 
.. tags: git, release
.. date: 2011/2/12 14:24:00
.. title: Git 1.7.4.1 publiée
.. slug: git-1.7.4.1-publiee
-->

La première version de maintenance de la banche 1.7.4.x est sortie ce 12 février. Seulement 6 bugs corrigés mais suffisamment importants pour exiger une nouvelle release.

Le changelog :

 * On Windows platform, the codepath to spawn a new child process forgot
  to first flush the output buffer.

 * "git bundle" did not use OFS_DELTA encoding, making its output a few
  per-cent larger than necessarily.

 * The option to tell "git clone" to recurse into the submodules was
  misspelled with an underscore "--recurse_submodules".

 * "git diff --cached HEAD" before the first commit does what an end user
  would expect (namely, show what would be committed without further "git
  add").

 * "git fast-import" didn't accept the command to ask for "notes" feature
  to be present in its input stream, even though it was capable of the
  feature.

 * "git fsck" gave up scanning loose object files in directories with
  garbage files.
