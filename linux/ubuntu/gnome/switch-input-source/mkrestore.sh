#!
[ -f restore.sh ] && echo File restore.sh already exists! && exit 1
echo "#!" >restore.sh
echo gsettings set org.gnome.desktop.wm.keybindings switch-input-source \"$(gsettings get org.gnome.desktop.wm.keybindings switch-input-source)\" >>restore.sh
echo gsettings set org.gnome.desktop.wm.keybindings switch-input-source-backward \"$(gsettings get org.gnome.desktop.wm.keybindings switch-input-source-backward)\" >>restore.sh
chmod +x restore.sh