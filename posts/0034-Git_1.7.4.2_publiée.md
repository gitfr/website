<!-- 
.. link: 
.. description: 
.. tags: git, release
.. date: 2011/3/29 8:48:00
.. title: Git 1.7.4.2 publiée
.. slug: git-1.7.4.2-publiee
-->

La deuxième version de maintenance de la banche 1.7.4.x est sortie le 27 mars. Vous pouvez constater que le terme **upstream** (qui désigne la branche distante) remplace progressivement tous les anciens termes. Cela fait une suite à une constatation dans le manque de cohérence dans la terminologie employée (documentation et commande).

Le changelog :

 * Many documentation updates to match "git cmd -h" output and the
  git-cmd manual page.

 * We used to keep one file descriptor open for each and every packfile
  that we have a mmap window on it (read: "in use"), even when for very
  tiny packfiles.  We now close the file descriptor early when the entire
  packfile fits inside one mmap window.

 * "git bisect visualize" tried to run "gitk" in windowing
  environments even when "gitk" is not installed, resulting in a
  strange error message.

 * "git clone /no/such/path" did not fail correctly.

 * "git commit" did not correctly error out when the user asked to use a
  non existent file as the commit message template.

 * "git diff --stat -B" ran on binary files counted the changes in lines,
  which was nonsensical.

 * "git diff -M" opportunistically detected copies, which was not
  necessarily a good thing, especially when it is internally run by
  recursive merge.

 * "git difftool" didn't tell (g)vimdiff that the files it is reading are
  to be opened read-only.

 * "git merge" didn't pay attention to prepare-commit-msg hook, even
  though if a merge is conflicted and manually resolved, the subsequent
  "git commit" would have triggered the hook, which was inconsistent.

 * "git patch-id" (and commands like "format-patch --ignore-in-upstream"
  that use it as their internal logic) handled changes to files that end
  with incomplete lines incorrectly.

 * The official value to tell "git push" to push the current branch back
  to update the upstream branch it forked from is now called "upstream".
  The old name "tracking" is and will be supported.

 * "git submodule update" used to honor the --merge/--rebase option (or
  corresponding configuration variables) even for a newly cloned
  subproject, which made no sense (so/submodule-no-update-first-time).

 * gitweb's "highlight" interface mishandled tabs.

 * gitweb didn't understand timezones with GMT offset that is not
  multiple of a whole hour.

 * gitweb had a few forward-incompatible syntactic constructs and
  also used incorrect variable when showing the file mode in a diff.

