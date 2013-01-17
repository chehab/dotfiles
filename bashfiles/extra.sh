# Raspberry Pi

alias df="df -h"
alias lh="ls -lh"

# Root extra:
for file in ~/.bashfiles/su-{path,bash_prompt,exports,aliases,functions,extra}.sh; do
        [ -r "$file" ] && source "$file"
done
unset file


# transmission

alias transmission-log="tail -f ~/torrent/transmission.log"
alias transmission-setting="nano ~/.config/transmission-daemon/settings.json"
alias transmission-cd="cd ~/.config/transmission-daemon/"

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

function mnt()
{
 sudo mount -t vfat -o uid=pi,gid=pi $1 $2 -t $3
}
function umnt()
{
 sudo umount $1
}

function eco()
{
 echo --$1--$2--$3--
}
