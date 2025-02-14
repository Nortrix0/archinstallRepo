#khotkeysrc kglobalshortcutsrc

sed -i 's|Numlock=.*|Numlock=on|' /mnt/usr/lib/sddm/sddm.conf.d/default.conf
echo "NoDisplay=true" | tee -a /mnt/usr/share/applications/{avahi-discover.desktop,bssh.desktop,bvnc.desktop,org.kde.kuserfeedback-console.desktop,org.kde.plasma.emojier.desktop,qv4l2.desktop,qvidcap.desktop}
usermod -aG gamemode $USER
kwriteconfig6 --file kglobalshortcutsrc --group services --group org.flameshot.Flameshot.desktop --key "Capture" "Meta+Shift+S"
echo -e "--save /etc/pacman.d/mirrorlist\n--country US\n--protocol https\n--latest 20" > /etc/xdg/reflector/reflector.conf