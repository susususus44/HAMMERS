//text
draw_set_font(f_smash_large)
draw_set_color(c_white)
draw_set_alpha(1)
var xx = 50
var yy = 470 - pos
for (var i = 0; i < array_length(menu); i++) {
    var str = (selected == i ? "> " : "  ") + string_copy(menu[i].name,playinglettershown,lettershown)
    var strw = string_width(str)
    draw_text(xx, yy, str)
    if (point_in_rectangle(mouse_x,mouse_y,xx,yy,xx+300,yy+offsetstr)&&!playing) {
        if (i != selected) {
            selected = i
            audio_play_sound(su_papertear,1,false)
        }
    }
    yy+=offsetstr
    yy+=offset
}