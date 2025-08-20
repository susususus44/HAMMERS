 function exec_command(arr) {
        failed = false
        if (!is_array(arr)) {
            arr = string_split(arr, " ")
        }
        switch (arr[0]) {
            case "room_goto":
                if (array_length(arr) > 1) {
                    if (room_exists(asset_get_index(arr[1]))) {
                        var rm = asset_get_index(arr[1])
                        show_debug_message(rm)
                        room_goto(rm)
                    } else {
                        failed = true
                    }
                } else {
                    failed = true
                }
                break
			case "enter_history":
                var outputstr = arr[1]
                if array_length(arr) > 2
                for (var l = 2; l < array_length(arr); ++l) {
                    outputstr += string_concat(" ", arr[l])
                } else
                    outputstr = arr[1]
                failed = 3
				array_push(history, [outputstr, 2])
				lerpto += 20
				break
			case "instance_create":
                if (array_length(arr) >= 4) {
                        var obj = asset_get_index(arr[4])
                        show_debug_message(obj)
                        instance_create_depth(real(arr[1]), real(arr[2]), real(arr[3]), obj) 
                } else {
                    failed = true
                }
                break
			case "game_restart":
				game_restart()
				break
			case "enabledebug":
				show_debug_log(true)
				failed=false
				break
            case "disabledebug":
				show_debug_log(false)
				failed=false
				break
			case "givefps":
				exec_command(["enter_history", fps])
				failed = false
				break
            default:
                failed = true
                break
        }
}