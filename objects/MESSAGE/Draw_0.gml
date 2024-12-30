var str = "X.TO.LICENSE"
draw_set_color(c_red)
draw_rectangle(x, y, x + string_width(str), y + string_height(str), false)
draw_set_color(c_black)
draw_text(x, y, str)