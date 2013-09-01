<!-- 
.. link: 
.. description: 
.. tags: git, release
.. date: 2012/04/15 22:52:00
.. title: Git 1.7.10 publiée
.. slug: git-1.7.10-publiee
-->

Pas mal de petites changements dans cette version 1.7.10 sortie le 10 avril. Je
voulais initialement tester cette version avant de publier l'annonce mais je
n'ai pas eu le cou^H^H^Htemps :(. Mais rapidement de ce qu'ai pu voir :

* gitk a pas mal de petites évolutions.

* Un éditeur s'ouvre lors d'un `git-commit` pour pousser les gens à expliquer
  les changements.

* On peut cloner qu'un répertoire.

N'hésitez pas comme d'habitude à commenter ce billet si vous voyez des 
changements intéressants dans votre façon de travailler avec Git.

Le changelog
------------

* various "gitk" updates.

* Teams for localizing the messages from the Porcelain layer of
  commands are starting to form, thanks to Jiang Xin who volunteered
  to be the localization coordinator.  Translated messages for
  simplified Chinese, Swedish and Portuguese are available.

* The configuration mechanism learned an "include" facility; an
  assignment to the include.path pseudo-variable causes the named
  file to be included in-place when Git looks up configuration
  variables.

* A content filter (clean/smudge) used to be just a way to make the
  recorded contents "more useful", and allowed to fail; a filter can
  now optionally be marked as "required".

* Options whose names begin with "--no-" (e.g. the "--no-verify"
  option of the "git commit" command) can be negated by omitting
  "no-" from its name, e.g. "git commit --verify".

* "git am" learned to pass "-b" option to underlying "git mailinfo", so
  that a bracketed string other than "PATCH" at the beginning can be kept.

* "git clone" learned "--single-branch" option to limit cloning to a
  single branch (surprise!); tags that do not point into the history
  of the branch are not fetched.

* "git clone" learned to detach the HEAD in the resulting repository
  when the user specifies a tag with "--branch" (e.g., "--branch=v1.0").
  Clone also learned to print the usual "detached HEAD" advice in such
  a case, similar to "git checkout v1.0".

* When showing a patch while ignoring whitespace changes, the context
  lines are taken from the postimage, in order to make it easier to
  view the output.

* "git diff --stat" learned to adjust the width of the output on
  wider terminals, and give more columns to pathnames as needed.

* "diff-highlight" filter (in contrib/) was updated to produce more
  aesthetically pleasing output.

* "fsck" learned "--no-dangling" option to omit dangling object
  information.

* "git log -G" and "git log -S" learned to pay attention to the "-i"
  option.  With "-i", "log -G" ignores the case when finding patch
  hunks that introduce or remove a string that matches the given
  pattern.  Similarly with "-i", "log -S" ignores the case when
  finding the commit the given block of text appears or disappears
  from the file.

* "git merge" in an interactive session learned to spawn the editor
  by default to let the user edit the auto-generated merge message,
  to encourage people to explain their merges better. Legacy scripts
  can export GIT_MERGE_AUTOEDIT=no to retain the historical behavior.
  Both "git merge" and "git pull" can be given --no-edit from the
  command line to accept the auto-generated merge message.

* The advice message given when the user didn't give enough clue on
  what to merge to "git pull" and "git merge" has been updated to
  be more concise and easier to understand.

* "git push" learned the "--prune" option, similar to "git fetch".

* The whole directory that houses a top-level superproject managed by
  "git submodule" can be moved to another place.

* "git symbolic-ref" learned the "--short" option to abbreviate the
  refname it shows unambiguously.

* "git tag --list" can be given "--points-at <object>" to limit its
  output to those that point at the given object.

* "gitweb" allows intermediate entries in the directory hierarchy
  that leads to a project to be clicked, which in turn shows the
  list of projects inside that directory.

* "gitweb" learned to read various pieces of information for the
  repositories lazily, instead of reading everything that could be
  needed (including the ones that are not necessary for a specific
  task).

* Project search in "gitweb" shows the substring that matched in the
  project name and description highlighted.

* HTTP transport learned to authenticate with a proxy if needed.

* A new script "diffall" is added to contrib/; it drives an
  external tool to perform a directory diff of two Git revisions
  in one go, unlike "difftool" that compares one file at a time.

* Improved handling of views, labels and branches in "git-p4" (in contrib).

* "git-p4" (in contrib) suffered from unnecessary merge conflicts when
  p4 expanded the embedded $RCS$-like keywords; it can be now told to
  unexpand them.

* Some "git-svn" updates.

* "vcs-svn"/"svn-fe" learned to read dumps with svn-deltas and
  support incremental imports.

* "git difftool/mergetool" learned to drive DeltaWalker.

* Unnecessary calls to parse\_object() "git upload-pack" makes in
  response to "git fetch", have been eliminated, to help performance
  in repositories with excessive number of refs.

* Recursive call chains in "git index-pack" to deal with long delta
  chains have been flattened, to reduce the stack footprint.

* Use of add\_extra\_ref() API is now gone, to make it possible to
  cleanly restructure the overall refs API.

* The command line parser of "git pack-objects" now uses parse-options
  API.

* The test suite supports the new "test\_pause" helper function.

* Parallel to the test suite, there is a beginning of performance
  benchmarking framework.

* t/Makefile is adjusted to prevent newer versions of GNU make from
  running tests in seemingly random order.

* The code to check if a path points at a file beyond a symbolic link
  has been restructured to be thread-safe.

* When pruning directories that has become empty during "git prune"
  and "git prune-packed", call closedir() that iterates over a
  directory before rmdir() it.

* Build with NO_PERL_MAKEMAKER was broken and Git::I18N did not work
  with versions of Perl older than 5.8.3.
  (merge 5eb660e ab/perl-i18n later to maint).

* "git tag -s" honored "gpg.program" configuration variable since
  1.7.9, but "git tag -v" and "git verify-tag" didn't.
  (merge a2c2506 az/verify-tag-use-gpg-config later to maint).

* "configure" script learned to take "--with-sane-tool-path" from the
  command line to record SANE_TOOL_PATH (used to avoid broken platform
  tools in /usr/bin) in config.mak.autogen.  This may be useful for
  people on Solaris who have saner tools outside /usr/xpg[46]/bin.

* zsh port of bash completion script needed another workaround.

* git-gui updated to 0.16.0.

* git-p4 (in contrib/) updates.

* Git uses gettext to translate its most common interface messages
  into the user's language if translations are available and the
  locale is appropriately set. Distributors can drop new PO files
  in po/ to add new translations.

* The code to handle username/password for HTTP transactions used in
  "git push" & "git fetch" learned to talk "credential API" to
  external programs to cache or store them, to allow integration with
  platform native keychain mechanisms.

* The input prompts in the terminal use our own getpass() replacement
  when possible. HTTP transactions used to ask for the username without
  echoing back what was typed, but with this change you will see it as
  you type.

* The internals of "revert/cherry-pick" have been tweaked to prepare
  building more generic "sequencer" on top of the implementation that
  drives them.

* "git rev-parse FETCH\_HEAD" after "git fetch" without specifying
  what to fetch from the command line will now show the commit that
  would be merged if the command were "git pull".

* "git add" learned to stream large files directly into a packfile
  instead of writing them into individual loose object files.

* "git checkout -B <current branch> <elsewhere>" is a more intuitive
  way to spell "git reset --keep <elsewhere>".

* "git checkout" and "git merge" learned "--no-overwrite-ignore" option
  to tell Git that untracked and ignored files are not expendable.

* "git commit --amend" learned "--no-edit" option to say that the
  user is amending the tree being recorded, without updating the
  commit log message.

* "git commit" and "git reset" re-learned the optimization to prime
  the cache-tree information in the index, which makes it faster to
  write a tree object out after the index entries are updated.

* "git commit" detects and rejects an attempt to stuff NUL byte in
  the commit log message.

* "git commit" learned "-S" to GPG-sign the commit; this can be shown
  with the "--show-signature" option to "git log".

* fsck and prune are relatively lengthy operations that still go
  silent while making the end-user wait. They learned to give progress
  output like other slow operations.

* The set of built-in function-header patterns for various languages
  knows MATLAB.

* "git log --format='<format>'" learned new %g[nNeE] specifiers to
  show information from the reflog entries when walking the reflog
  (i.e. with "-g").

* "git pull" can be used to fetch and merge an annotated/signed tag,
  instead of the tip of a topic branch. The GPG signature from the
  signed tag is recorded in the resulting merge commit for later
  auditing.

* "git log" learned "--show-signature" option to show the signed tag
  that was merged that is embedded in the merge commit. It also can
  show the signature made on the commit with "git commit -S".

* "git branch --edit-description" can be used to add descriptive text
  to explain what a topic branch is about.

* "git fmt-merge-msg" learned to take the branch description into
  account when preparing a merge summary that "git merge" records
  when merging a local branch.

* "git request-pull" has been updated to convey more information
  useful for integrators to decide if a topic is worth merging and
  what is pulled is indeed what the requestor asked to pull,
  including:

   - the tip of the branch being requested to be merged;
   - the branch description describing what the topic is about;
   - the contents of the annotated tag, when requesting to pull a tag.

* "git pull" learned to notice 'pull.rebase' configuration variable,
  which serves as a global fallback for setting 'branch.<name>.rebase'
  configuration variable per branch.

* "git tag" learned "--cleanup" option to control how the whitespaces
  and empty lines in tag message are cleaned up.

* "gitweb" learned to show side-by-side diff.
