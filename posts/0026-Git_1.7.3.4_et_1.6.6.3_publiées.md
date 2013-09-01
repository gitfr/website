<!-- 
.. link: 
.. description: 
.. tags: git, release
.. date: 2010/12/16 14:25:00
.. title: Git 1.7.3.4 et 1.6.6.3 publiées
.. slug: git-1.7.3.4-et-1.6.6.3-publiees
-->

Le changement le plus important est la correction d'une faille de sécurité sur **Gitweb**. Cette correction est backportée sur l'ensemble des branches de maintenance (1.7.2.5, 1.7.1.4, 1.7.0.9, 1.6.5.9, 1.6.4.5).

Junio (le mainteneur) en a profité pour intégrer d'autres correctifs (uniquement sur 1.7.3.4 et 1.6.6.3) :

 * Smart HTTP transport used to incorrectly retry redirected POST
  request with GET request.

 * "git apply" did not correctly handle patches that only change modes
  if told to apply while stripping leading paths with -p option.

 * "git apply" can deal with patches with timezone formatted with a
  colon between the hours and minutes part (e.g. "-08:00" instead of
  "-0800").

 * "git checkout" removed an untracked file "foo" from the working
  tree when switching to a branch that contains a tracked path
  "foo/bar".  Prevent this, just like the case where the conflicting
  path were "foo" (c752e7f..7980872d).

 * "git cherry-pick" or "git revert" refused to work when a path that
  would be modified by the operation was stat-dirty without a real
  difference in the contents of the file.

 * "git diff --check" reported an incorrect line number for added
  blank lines at the end of file.

 * "git imap-send" failed to build under NO_OPENSSL.

 * Setting log.decorate configuration variable to "0" or "1" to mean
  "false" or "true" did not work.

 * "git push" over dumb HTTP protocol did not work against WebDAV
  servers that did not terminate a collection name with a slash.

 * "git tag -v" did not work with GPG signatures in rfc1991 mode.

 * The post-receive-email sample hook was accidentally broken in 1.7.3.3
  update.

 * "gitweb" can sometimes be tricked into parrotting a filename argument
  given in a request without properly quoting.
