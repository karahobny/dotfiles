#xsetroot -bitmap /home/jamppa/git/bitmap-walls/patterns/fence_knitting.xbm -bg '#eeeeee' -fg '#999999'

#$HOME/.fehbg &
#urxvtd &

export font=/mnt/font/yuki/7/font
export PLAN9=/usr/local/plan9
export PATH=$PATH:$HOME/.bin/p9p:$HOME/bin/wmutils

xrdb -merge $HOME/.Xresources &
xset -b &
xset +fp /home/jamppa/.fonts
xset +fp /usr/local/share/fonts/artwiz-aleczapka/
xset fp rehash &

setxkbmap -option caps:escape &
xmodmap -e 'keysym Menu = Super_L' &
xmodmap ~/.math.xmodmap

xsetroot -cursor_name left_ptr &
#hsetroot -fill $HOME/.wall.jpeg -gamma 0.6 &
wal -R

cwm_panel &
exec cwm

# wmutils stuff
#$HOME/bin/wmutils/lpanel &
#sxhkd &
#$HOME/bin/wmutils/pulsar &
#while true; do
#	wew | $HOME/bin/wmutils/yawee;
#done
