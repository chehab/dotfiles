# Raspberry Pi

alias df="df -h"
alias lh="ls -lh"
alias extra="nano /root/dotfiles/bashfiles/extra.sh"
alias logmsg="tail -f /var/log/messages"

# transmission

alias transmission-log="tail -f /home/pi/torrent/transmission.log"
alias transmission-setting="nano /home/pi/.config/transmission-daemon/settings.json"
alias transmission-cd="cd home/pi/.config/transmission-daemon/"

function mnt-h()
{
 echo "------------------------------------------------------------------------"
 echo " mnt help"
 echo ""
 echo "  Check the disk sys-location by tailing log/msg.. while connecting it"
 echo "   'tail -f /var/log/messages'"
 echo "  Or"
 echo "   by exec. \$dmesg"
 echo ""
 echo "  After finding the sys-location (ex: sdb1)"
 echo "  find or mkdir '250HD' or other name in '/media/' to mount to"
 echo "   exec \$mnt /dev/sdb1 /media/250 -t ntfs"
 echo ""
 echo "------------------------------------------------------------------------"
}

function extra-append()
{
 echo $1 >> /root/dotfiles/bashfiles/extra.sh
}

function mnt()
{
 sudo mount -o uid=pi,gid=pi $1 $2
}

function mntt()
{
 sudo mount -o uid=pi,gid=pi $1 $2 -t $3
}

function umnt()
{
 sudo umount $1
}

function eco()
{
 echo --$1--$2--$3--
}


# appended

alias mount-help="echo '\$mount -o uid=pi,gid=pi /dev/sda2 /media/250HDD -t ntfs'\nalso try: \$mntt-help "
alias mntt-help="echo '\$mntt /dev/sda2 /media/250HDD ntfs'"
alias transmission-restart="!!"
