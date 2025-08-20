var col = (lightmode ? c_white : c_black)
var col2 = (lightmode ? c_black : c_white)
switch (style) {
	#region modern style
	case debugstyle.modern:
		var _yoff = 480 - 200 + 54;
		_yoff = 0
		var da50thing = 0
		draw_set_font(font_console);
		draw_set_color(col2);
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		draw_set_alpha((length / 480) * 0.75);
		if (length > 0)
			draw_roundrect_colour(483 - length, -10 + ((length / 480 * -da50thing) + da50thing) + _yoff, 475 + length, 200 + ((length / 480 * -da50thing) + da50thing) + _yoff, col, col, false);
		draw_set_alpha(length / 480);
		if (length > 0)
			draw_line_width_color(483 - length, 180 + ((length / 480 * -da50thing) + da50thing) + _yoff, 475 + length, 180 + ((length / 480 * -da50thing) + da50thing) + _yoff, 1, col2, col2);
		if (!surface_exists(surf)) {
			surf = surface_create(960, 200);
		}
		surface_set_target(surf);
		draw_clear_alpha(c_black, 0);
		draw_text(6, 182 - scrollpos + ((length / 480 * -da50thing) + da50thing), str);
		draw_text(6 + string_width(str), 182 - scrollpos + ((length / 480 * -da50thing) + da50thing), (showcursor ? "|" : ""))
		for (var i = 0; i < array_length(history); ++i) {
			if (history[i][1] != 2) {
				draw_set_alpha(0.75);
				draw_set_color(history[i][1] ? c_red : c_green);
				draw_rectangle(4, ((180 - lerppos) + 20 * i) - scrollpos + ((length / 480 * -da50thing) + da50thing), 477 + length, ((198 - lerppos) + 20 * i) - scrollpos + ((length / 480 * -da50thing) + da50thing), false);
			}
			draw_set_alpha(0.75);
			draw_set_color(col);
			draw_text(6, ((180 - lerppos) + 20 * i) - scrollpos + ((length / 480 * -da50thing) + da50thing), string_replace(history[i][0], " - FAILED", ""));
		}
		draw_set_halign(fa_right);
		draw_set_color(col2);
		draw_text(956, 3, "Vadimos's debug console");
		draw_set_halign(fa_left);
		surface_reset_target();
		draw_set_alpha(length / 480);
		draw_surface_part(surf, 0, 0, length * 2, 200, 480 + -length, (length / 480 * -da50thing) + da50thing + _yoff);
		draw_set_alpha(1);
		for (var i = 0; i < array_length(search); ++i) {
			draw_set_alpha((length / 480) * 0.75);
			draw_set_color(col);
			draw_roundrect(3, 201 + i * 20 + _yoff, string_width(search[i]) + 30, 220 + i * 20 + _yoff, false);
			draw_set_alpha(length / 480);
			draw_set_color(col2);
			draw_text(6 + irandom_range(-sh, sh), 202 + 20 * i + _yoff, search[i]);
		}
		draw_set_color(col);
		draw_set_alpha(1)
		break;
		#endregion
	
		#region classic style
	case debugstyle.classic:
		draw_set_font(font_console)
		draw_set_color(col2)
		draw_set_halign(fa_left)
		draw_set_valign(fa_top)
		draw_set_alpha(0.75)
		if (length > 0)
			draw_rectangle_color(480 - length, 0, 480 + length, 200, col, col, col, col, false)
		draw_set_alpha(1)
		if (length > 0)
			draw_line_color(480 - length, 200, 480 + length, 200, col2, col2)
		if (!surface_exists(surf)) {
			surf = surface_create(960, 200);
		}
		surface_set_target(surf);
		draw_clear_alpha(c_black, 0);
		if (length == 480)
			draw_text(10, 180 - scrollpos, string_concat(str, (showcursor ? "|" : "")))
		if (length == 480)
			for (var i = 0; i < array_length(history); ++i) {
				if (history[i][1] != 2) {
					draw_set_alpha(0.5)
					if (history[i][1])
						draw_set_color(c_red)
					else
						draw_set_color(c_green)
					draw_rectangle(480 - length, ((180 - lerppos) + 20 * i) - scrollpos, 480 + length, ((198 - lerppos) + 20 * i) - scrollpos, false)
				}
				draw_set_alpha(1)
				draw_set_color(col2)
				draw_text(10, ((180 - lerppos) + 20 * i) - scrollpos, string_replace(history[i][0], " - FAILED", ""))
			}
		surface_reset_target();
		draw_set_alpha(1)
		draw_surface(surf, 0, 0);
		if (length == 480)
			for (var i = 0; i < array_length(search); ++i) {
				draw_set_alpha(0.75)
				draw_set_color(col)
				draw_rectangle(0, 201 + i * 20, string_length(search[i]) * 10, 220 + i * 20, false)
				draw_set_alpha(1)
				draw_set_color(col2)
				draw_text(10, 202 + 20 * i, string_replace(search[i], " - FAILED", ""))
			}
		draw_set_halign(fa_right)
		if (length == 480)
			draw_text(959, 0, "Vadimos's debug console")
		var arrnum = -((array_length(history) - 9) * 20)
		if (array_length(history) - 9) < 0
		arrnum = 0
		draw_set_color(col2)
		draw_set_halign(fa_left)
		break
		#endregion
}
