draw_set_font(f_smash_large)
selected = 0
lettershowuptime=2
lettershown=1
lettershownabout=0
fade=0
menu = array_create(0)
delay=0
playing = false
playinglettershown = 1
scr_addoption("New game", function() {
    playing = true
    alarm[1]=1
})
scr_addoption("Settings", function() {
    scr_switchmenu(obj_settingsmenu)
})
scr_addoption("Exit", function() {
    scr_switchmenu(obj_leavemenu)
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