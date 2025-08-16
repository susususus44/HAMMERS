draw_set_font(f_smash)
draw_set_color(c_white)
var yy = 410 - pos
for (var i = 0; i < array_length(menu); i++) {
    var str = (selected == i ? ">" : " ") + menu[i].name
    show_debug_message(str)
    draw_text(200, yy, str)
    yy+=offsetstr
    yy+=offset
}