//text
draw_set_alpha(fade)
draw_sprite(s_hammerslogo,0,0,0)
if(fade<1)
    fade+=0.01
draw_set_font(f_smash)
draw_set_color(c_white)
draw_set_alpha(1)
var yy = 470 - pos
for (var i = 0; i < array_length(menu); i++) {
    var str = (selected == i ? ">" : " ") + string_copy(menu[i].name,1,lettershown)
    show_debug_message(str)
    draw_text(50, yy, str)
    yy+=offsetstr
    yy+=offset
    show_debug_message(yy)
}