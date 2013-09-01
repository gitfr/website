<!-- 
.. link: 
.. description: 
.. tags: git, release
.. date: 2012/08/24 02:54:00
.. title: Git 1.7.12 publiée
.. slug: git-1.7.12-publiee
-->

Quatre changements intéressants dans cette 1.7.12 qui date du 20 août :

* Une option `--root` à rebase pour modifier aussi le commit root.

* Une option `-x` à rebase pour éxécuter une commande à chaque
  application d'un patch.

* On peut visualiser la documentation en HTML avec `git help -w $cmd`

* `git status` est plus précis quand le dépôt est dans un état
  intermédiaire (lors d'un merge, un rebase, etc).


N'hésitez pas comme d'habitude à commenter ce billet si vous voyez des 
changements intéressants.

Le changelog
------------

 * Git can be told to normalize pathnames it read from readdir(3) and
   all arguments it got from the command line into precomposed UTF-8
   (assuming that they come as decomposed UTF-8), in order to work
   around issues on Mac OS.

   I think there still are other places that need conversion
   (e.g. paths that are read from stdin for some commands), but this
   should be a good first step in the right direction.

 * Per-user $HOME/.gitconfig file can optionally be stored in
   $HOME/.config/git/config instead, which is in line with XDG.

 * The value of core.attributesfile and core.excludesfile default to
   $HOME/.config/git/attributes and $HOME/.config/git/ignore respectively
   when these files exist.

 * Logic to disambiguate abbreviated object names have been taught to
   take advantage of object types that are expected in the context,
   e.g. XXXXXX in the "git describe" output v1.2.3-gXXXXXX must be a
   commit object, not a blob nor a tree.  This will help us prolong
   the lifetime of abbreviated object names.

 * "git apply" learned to wiggle the base version and perform three-way
   merge when a patch does not exactly apply to the version you have.

 * Scripted Porcelain writers now have access to the credential API via
   the "git credential" plumbing command.

 * "git help" used to always default to "man" format even on platforms
   where "man" viewer is not widely available.

 * "git clone --local $path" started its life as an experiment to
   optionally use link/copy when cloning a repository on the disk, but
   we didn't deprecate it after we made the option a no-op to always
   use the optimization.  The command learned "--no-local" option to
   turn this off, as a more explicit alternative over use of file://
   URL.

 * "git fetch" and friends used to say "remote side hung up
   unexpectedly" when they failed to get response they expect from the
   other side, but one common reason why they don't get expected
   response is that the remote repository does not exist or cannot be
   read. The error message in this case was updated to give better
   hints to the user.

 * "git help -w $cmd" can show HTML version of documentation for
   "git-$cmd" by setting help.htmlpath to somewhere other than the
   default location where the build procedure installs them locally;
   the variable can even point at a http:// URL.

 * "git rebase [-i] --root $tip" can now be used to rewrite all the
   history leading to "$tip" down to the root commit.

 * "git rebase -i" learned "-x <cmd>" to insert "exec <cmd>" after
   each commit in the resulting history.

 * "git status" gives finer classification to various states of paths
   in conflicted state and offer advice messages in its output.

 * "git submodule" learned to deal with nested submodule structure
   where a module is contained within a module whose origin is
   specified as a relative URL to its superproject's origin.

 * A rather heavy-ish "git completion" script has been split to create
   a separate "git prompting" script, to help lazy-autoloading of the
   completion part while making prompting part always available.

 * "gitweb" pays attention to various forms of credits that are
   similar to "Signed-off-by:" lines in the commit objects and
   highlights them accordingly.

 * "mediawiki" remote helper (in contrib/) learned to handle file
   attachments.

 * "git p4" now uses "Jobs:" and "p4 move" when appropriate.

 * vcs-svn has been updated to clean-up compilation, lift 32-bit
   limitations, etc.

 * Some tests showed false failures caused by a bug in ecryptofs.

 * We no longer use AsciiDoc7 syntax in our documentation and favor a
   more modern style.

 * "git am --rebasing" codepath was taught to grab authorship, log
   message and the patch text directly out of existing commits.  This
   will help rebasing commits that have confusing "diff" output in
   their log messages.

 * "git index-pack" and "git pack-objects" use streaming API to read
   from the object store to avoid having to hold a large blob object
   in-core while they are doing their thing.

 * Code to match paths with exclude patterns learned to avoid calling
   fnmatch() by comparing fixed leading substring literally when
   possible.

 * "git log -n 1 -- rarely-touched-path" was spending unnecessary
   cycles after showing the first change to find the next one, only to
   discard it.

 * "git svn" got a large-looking code reorganization at the last
   minute before the code freeze.

 * "git submodule add" was confused when the superproject did not have
   its repository in its usual place in the working tree and GIT_DIR
   and GIT_WORK_TREE was used to access it.

 * "git commit --amend" let the user edit the log message and then died
   when the human-readable committer name was given insufficiently by
   getpwent(3).
