//letters
if (playinglettershown<lettershownabout+1) {
    playinglettershown++
    alarm[1]=lettershowuptime
    audio_play_sound(su_type,1,false)
}
else {
    instance_destroy()
    
}