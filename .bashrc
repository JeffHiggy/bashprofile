# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

if [ -d "$HOME/.dotfiles" ]; then
	for DOTFILE in `find $HOME/.dotfiles/`
	do
	  [ -f "$DOTFILE" ] && source "$DOTFILE"
	done
fi

if [ -d "$HOME/.localdotfiles" ]; then
        for DOTFILE in `find $HOME/.localdotfiles/`
        do
          [ -f "$DOTFILE" ] && source "$DOTFILE"
        done
fi

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac
