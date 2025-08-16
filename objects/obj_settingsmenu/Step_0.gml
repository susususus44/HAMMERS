if (delay>0) {
    delay--
    return;
}
if (mouse_check_button_pressed(mb_left)) {
    var _func = menu[selected].func
    _func()
}