<!-- 
.. link: 
.. description: 
.. tags: git, release
.. date: 2011/1/11 8:03:00
.. title: Git 1.7.3.5 publiée
.. slug: git-1.7.3.5-publiee
-->

La version 1.7.3.5 est sortie le 6 Janvier, et c'est surement la dernière version de la série 1.7.3.x (sauf bien évidemment gros bug ou faille de sécurité). Voici les changements :
     
  * test-lib.sh/test_decode_color(): use octal not hex in awk script
  * gitweb: Include links to feeds in HTML header only for '200 OK' response
  * ident: die on bogus date format
  * Fix typo in git-gc document.
  * t0050: fix printf format strings for portability
  * gitweb: skip logo in atom feed when there is none
  * commit: die before asking to edit the log message
  * am --abort: keep unrelated commits since the last failure and warn
  * rebase --skip: correctly wrap-up when skipping the last patch
  * status: Quote paths with spaces in short format
  * t/t8006: Demonstrate blame is broken when cachetextconv is on
  * fill_textconv(): Don't get/put cache if sha1 is not valid
  * fsck docs: remove outdated and useless diagnostic
  * git-difftool.txt: correct the description of $BASE and describe $MERGED
  * difftool: provide basename to external tools
  * t3419-*.sh: Fix arithmetic expansion syntax error
  * close file on error in read_mmfile()
  * Fix false positives in t3404 due to SHELL=/bin/false
  * t9001: Fix test prerequisites
  * userdiff: fix typo in ruby and python word regexes
  * trace.c: mark file-local function static

Comme vous pouvez le constater, rien de bien important (enfin je dis cela car je ne suis pas tombé sur un des bugs :), les développeurs se focalisant depuis quelques semaines déja sur la future version 1.7.4.
