if keyboard_check_pressed(vk_space)
{
	audio_stop_all();
	room_goto(room_instruction_test);
}

timer_sound--;

if(timer_sound<0)
{
	if(soundProgress==0){
audio_play_sound(girl_gasp1,0,false);
timer_sound=room_speed*3.5;

	}else if(soundProgress==1)
	{
	audio_play_sound(girl_gasp2,0,false);
	timer_sound=room_speed*0.5;
	}else
	{
	audio_play_sound(fall_sound,0,false);
	timer_sound=room_speed*99;
	}
soundProgress++;

}