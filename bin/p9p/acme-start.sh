#!/bin/sh

BROWSER=chrome

TERM=dumb
MANPAGER=nobs
PAGER=nobs
EDITOR=E

PLAN9=/usr/local/plan9
PATH=$PATH:$PLAN9/bin
MANPATH=$MANPATH:$PLAN9/man
SHELL=$PLAN9/bin/rc

export BROWSER TERM MANPAGER \
PAGER EDITOR PLAN9 PATH MANPATH SHELL
unset FCEDIT VISUAL

#export font=/mnt/font/Cousine/8a/font
tabstop=4
acmeshell=$PLAN9/bin/rc

export tabstop acmeshell

fontsrv
plumber
cat $HOME/lib/plumbing | 9p write plumb/rules
cat $PLAN9/plumb/basic | 9p write plumb/rules

exec acme $*
