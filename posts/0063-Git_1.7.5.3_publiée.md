<!-- 
.. link: 
.. description: 
.. tags: git, release
.. date: 2011/6/13 2:07:00
.. title: Git 1.7.5.3 publiée
.. slug: git-1.7.5.3-publiee
-->

La troisième version de maintenance de la branche 1.7.5.x est sortie le 27 mai.

Changelog
---------

 * The bash completion scripts should correctly work using zsh's bash
  completion emulation layer now.

 * Setting $(prefix) in config.mak did not affect where etc/gitconfig
  file is read from, even though passing it from the command line of
  $(MAKE) did.

 * The logic to handle "&" (expand to UNIX username) in GECOS field
  miscounted the length of the name it formatted.

 * "git cherry-pick -s resolve" failed to cherry-pick a root commit.

 * "git diff --word-diff" misbehaved when diff.suppress-blank-empty was
  in effect.

 * "git log --stdin path" with an input that has additional pathspec
  used to corrupt memory.

 * "git send-pack" (hence "git push") over smalt-HTTP protocol could
  deadlock when the client side pack-object died early.

 * Compressed tarball gitweb generates used to be made with the timestamp
  of the tarball generation; this was bad because snapshot from the same
  tree should result in a same tarball.
