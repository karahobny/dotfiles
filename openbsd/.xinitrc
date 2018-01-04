#export font="/mnt/font/Go Mono/9a/font"
export font="/usr/local/plan9/font/mntcarlo/mntcarlo.font"

export PLAN9=/usr/local/plan9
export SHELL=$PLAN9/bin/rc
export PATH=$PATH:$HOME/bin/p9p

xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape' &
xset -b &
$HOME/.fehbg &
xsetroot -cursor_name left_ptr
#rio -virtuals 6
#cwm
exec bspwm
