//draw
draw_set_alpha(1)
draw_set_font(f_smash)
draw_set_color(c_white)
draw_text(50,470,string_copy(text[curron][0],1,lettershown))
draw_set_alpha(fadeout)
draw_set_color(c_black)
draw_rectangle(0,0,960,540,false)
//if youre looking at this:
//hello.