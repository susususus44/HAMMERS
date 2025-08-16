function scr_switchmenu(obj){
    instance_destroy()
    with (instance_create_depth(x,y,depth,obj)) {
        delay = 3
    }
}