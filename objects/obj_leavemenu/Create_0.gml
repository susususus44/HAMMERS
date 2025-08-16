draw_set_font(f_smash_large)
selected = 0
lettershowuptime=2
lettershown=1
lettershownabout=0
fade=0
menu = array_create(0)
leavetext = "Are you sure you want to leave?"
delay=0
scr_addoption("Yes", function() {
    game_end()
})
scr_addoption("No", function() {
    scr_switchmenu(obj_mainmenu)
})
offset = 8
offsetstr = string_height("ABCabcpg")
pos = 0
for (var i = 1; i < array_length(menu); i++) {
    pos+=offsetstr
    pos+=offset
}
for (var i = 0; i < array_length(menu);i++) {
    var strl = string_length(menu[0].name)
    if (strl > lettershownabout)
        lettershownabout = strl
}
show_debug_message(pos)
alarm[0]=lettershowuptime