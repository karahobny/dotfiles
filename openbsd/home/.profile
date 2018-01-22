PLAN9=/usr/local/plan9
PATH=$HOME/bin:$HOME/.bin:$HOME/.bin/p9p:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:/usr/games:$PLAN9/bin:.
export PLAN9 PATH HOME

export font=/mnt/font/yuki/7/font

case `echo $0` in
	*ksh)
		export ENV=$HOME/.kshrc
		;;
	*dash)
		export ENV=$HOME/.dashrc
		;;
	*)
		;;
esac
