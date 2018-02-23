xrdb -merge $HOME/.Xresources &
xset -b &
xset +fp /home/jamppa/.fonts
xset +fp /usr/local/share/fonts
xset fp rehash &

setxkbmap -option ctrl:nocaps &
xmodmap -e 'keysym Menu = Super_L' &
xmodmap $HOME/.math.xmodmap &

xsetroot -cursor_name left_ptr &
#wal -R
$HOME/.fehbg &

cwm_panel &
emacs --daemon &
emacs-client &
exec cwm

#exec i3
#exec bspwm

## wmutils stuff
#$HOME/bin/wmutils/lpanel &
#sxhkd &
#while true; do
#	wew | $HOME/bin/wmutils/yawee;
#done
