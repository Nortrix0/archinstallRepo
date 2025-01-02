VIDEOPLAYER=$(whiptail --nocancel --noitem --menu "Which Video Player Do You Want?" 0 0 0 VLC ​ MPV ​ "Both (VLC Backend)" ​ "Both (MPV Backend)" ​  3>&1 1>&2 2>&3)
if [[ $VIDEOPLAYER == "VLC" ]] then
	echo "phonon-qt6-vlc\n" >> ./install_packages.txt
elif [[ $VIDEOPLAYER == "VLC" ]] then
	echo "phonon-qt6-vlc\n" >> ./install_packages.txt
elif [[ $VIDEOPLAYER == "VLC" ]] then
	echo "phonon-qt6-vlc\n" >> ./install_packages.txt
elif [[ $VIDEOPLAYER == "VLC" ]] then
	echo "phonon-qt6-vlc\n" >> ./install_packages.txt
fi
case $VIDEOPLAYER in

  "VLC")
	echo -e "phonon-qt6-vlc\n" >> ./install_packages.txt
    ;;

  "MPV")
	echo -e "phonon-qt6-mpv\n" >> ./install_packages.txt
    ;;

  "Both (VLC Backend)")
	echo -e "phonon-qt6-vlc\nmpv\n" >> ./install_packages.txt
    ;;

  "Both (MVP Backend)")
	echo -e "phonon-qt6-mpv\nvlc\n" >> ./install_packages.txt
    ;;

  *)
    echo -n "UNKNOWN VIDEOPLAYER"
    exit 1
    ;;
esac