#!
[ ! -f restore.sh ] && echo Run before mkrestore.sh! && exit 1

gsettings set org.gnome.desktop.wm.keybindings switch-input-source "['<Super>space','XF86Keyboard','<Ctrl>Shift_L','<Shift>Control_L']"
