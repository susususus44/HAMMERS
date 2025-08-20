enum debugstyle {
	classic,
	modern,
}
str = ""
surf = -1
history = []
length = 0
opened = false
showcursor = false
lerpto = 0
lerppos = 0
scrollto = 0
scrollpos = 0
failed = false
command_list = ["room_goto <room>", "enter_history <string>", "instance_create <x> <y> <depth> <obj>", "game_restart"]
search = []
prevstr = []
sh = 0
lightmode = false 
style = debugstyle.modern
global.koffconsole = 0.3
depth = -1000
alarm[0] = 20