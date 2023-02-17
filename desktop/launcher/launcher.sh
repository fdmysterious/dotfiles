fpath="$HOME/.config/desktop/launcher/${1}.txt"
choice=$(cat $fpath | cut -d ":" -f 1,2 | dmenu -l 20)

if [ $? -eq 0 ] ; then
    CMDLINE=$(grep "$choice" $fpath | cut -d ":" -f 3)
    echo "$app"
    sh -c "${CMDLINE}"&
fi
