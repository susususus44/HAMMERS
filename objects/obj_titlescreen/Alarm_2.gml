//tonexttext
if(gotomenuat==curron) {
    instance_create_depth(x,y,depth - 1,obj_mainmenu)
    instance_destroy()
    return;
}
curron++
lettershowuptime++
lettershown=1
lettershownabout=string_length(text[curron][0])
alarm[0]=lettershowuptime
alarm[2]=text[curron][1]