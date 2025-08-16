selected = 0
menu = array_create(0)
scr_addoption("New game", function() {
    
})
scr_addoption("Exit", function() {
    
})
offset = 8
offsetstr = string_height("ABCabcpg")
pos = 0
for (var i = 0; i < array_length(menu); i++) {
    pos+=offsetstr
    pos+=offset
}
show_debug_message(pos)