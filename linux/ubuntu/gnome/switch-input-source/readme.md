# Альтернативное переключение между языками

_Посвещается тем кто уже долго живёт и не намерен менять своих привычек при смене очередной операционки._

* Для переключения между языками по правым Ctrl+Shift помимо Super+Spase (для **меня** минимально достаточно). Две последовательности (Ctrl+Shift и Shift+Ctrl) для того чтоб не задумываться какую клавишу нажимать первой.
Но есть **побочный эффект** отваливаются другие комбинации с Ctrl+Shift+...!  Но можно пользоваться правыми Ctrl и Shift. Тут каждый решает кому что удобней.

~~~bash
gsettings set org.gnome.desktop.wm.keybindings switch-input-source "['<Super>space','XF86Keyboard','<Shift>Control_L','<Ctrl>Shift_L']"
~~~

* Для переключения между языками по правым Ctrl+Shift помимо Super+Spase (для **эстетов**). Типа так концептуально правильно, но нормально работает толко Ctrl+Shift (появляется окно переключателя и при удержании Ctrl и нескольких нажатиях Shift происходит выбор следующего языка). В обратной последовательности Shift+Ctrl так уже не работает.

~~~bash
gsettings set org.gnome.desktop.wm.keybindings switch-input-source "['<Super>space','XF86Keyboard','<Ctrl>Shift_L']"
gsettings set org.gnome.desktop.wm.keybindings switch-input-source-backward "['<Shift><Super>space','<Shift>XF86Keyboard','<Shift>Control_L']"

~~~

* Для переключения между языками по **любым** Ctrl+Shift помимо Super+Spase.

~~~bash
gsettings set org.gnome.desktop.wm.keybindings switch-input-source "['<Super>space','XF86Keyboard','<Shift>Control_L','<Ctrl>Shift_L','<Shift>Control_R','<Ctrl>Shift_R']"
~~~

* Ну логично, для ублажения всех, хотелось бы переключаться по любой комбинации. Но в комбинации с Alt окна переключателя не появляется. А так, с двумя языками, вроде работает.

~~~bash
gsettings set org.gnome.desktop.wm.keybindings switch-input-source "['<Super>space','XF86Keyboard','<Shift>Control_L','<Ctrl>Shift_L','<Shift>Control_R','<Ctrl>Shift_R','<Alt>Shift_L', '<Shift>Alt_L','<Alt>Shift_R', '<Shift>Alt_R']"
~~~

* Вернуть настройку по умолчанию только Super+Spase.

~~~bash
gsettings set org.gnome.desktop.wm.keybindings switch-input-source "['<Super>space','XF86Keyboard']"
~~~

P.S.

* Это работает только в гноме.
* На мой взгляд, это имеет смысл только при наличии не более двух языков/раскладок,
иначе концептуально не понятно как переключаться в обратном порядке Shift+Super+Spase (ключ switch-input-source-backward). 
* Для бывших виндузятников: Super - это та самая клавиша с флажком Windows.
