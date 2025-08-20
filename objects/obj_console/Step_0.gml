if (keyboard_check_pressed(vk_f5)) {
    if (!opened) {
        opened = true
        timeout = 3
        keyboard_string = str
    } else {
        opened = false
    }
}
if (opened) {
	scrollto += mouse_wheel_down() * 20
	scrollto -= mouse_wheel_up() * 20
	var arrnum = -((array_length(history) - 9) * 20)
	if (array_length(history) - 9) < 0
		arrnum = 0
	scrollto = clamp(scrollto, arrnum, 0)
    lerppos = lerp(lerppos, lerpto, 0.4)
	scrollpos = lerp(scrollpos, scrollto, 0.4)
	if (style == debugstyle.modern)
		length = lerp(length, 480, global.koffconsole)
	else
		length = approach(length, 480, 50)
	if (length > 479.5)
		length = 480
    if (timeout > 0)
        timeout--
	else
    {
        if (keyboard_check(vk_control) && keyboard_check_pressed(ord("Z")) && array_length(prevstr) != 0)
        {
            str = prevstr[(array_length(prevstr) - 1)]
            keyboard_string = prevstr[(array_length(prevstr) - 1)]
            array_resize(prevstr, (array_length(prevstr) - 1))
        }
        if (keyboard_check(vk_control) && keyboard_check_pressed(ord("V")))
        {
            str += clipboard_get_text()
            keyboard_string += clipboard_get_text()
        }
        if (str != keyboard_string)
        {
            array_push(prevstr, str)
            str = keyboard_string
            scrollpos = 0
            scrollto = 0
        }
    }
	search = []
    for (var i = 0; i < array_length(command_list); i++)
    {
        var _length = string_length(str);
        _length = clamp(_length, 0, string_length(command_list[i]));
        
        if (string_copy(command_list[i], 0, _length) == str)
            array_push(search, command_list[i]);
    }
    
    if (keyboard_check_pressed(vk_tab) && array_length(search) > 0)
    {
        var searchstr = string_split(search[0], " ");
        keyboard_string = searchstr[0];
    }
	if (str != "") {
		if (keyboard_check_pressed(vk_enter)) {
		    var arr = string_split(str, " ")
		    failed = false
			array_push(history, [str, failed])
		    exec_command(arr)
		    show_debug_message(failed)
		    keyboard_string = ""
		    failed = false
		    lerpto += 20
			scrollpos = 0
			scrollto = 0
			str = ""
		}
	}
} 
else {
	if (style == debugstyle.modern)
		length = lerp(length, 0, global.koffconsole)
	else
		length = approach(length, 0, 50)
	if (length < 0.5)
		length = 0
}
if (sh > 0)
	sh -= 0.1