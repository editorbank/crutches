#!
[ ! -f restore.sh ] && echo Run before mkrestore.sh! && exit 1

gsettings set org.gnome.desktop.wm.keybindings switch-input-source "['<Super>space','XF86Keyboard','<Ctrl>Shift_L']"
gsettings set org.gnome.desktop.wm.keybindings switch-input-source-backward "['<Shift><Super>space','<Shift>XF86Keyboard','<Shift>Control_L']"
