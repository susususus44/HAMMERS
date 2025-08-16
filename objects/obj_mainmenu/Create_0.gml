selected = 0
lettershowuptime=2
lettershown=1
lettershownabout=0
fade=0
menu = array_create(0)
scr_addoption("New game", function() {
    
})
scr_addoption("Exit", function() {
    
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