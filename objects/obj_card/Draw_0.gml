/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

draw_self();
draw_set_font(font_notice);

if(current_state==state.Discard){
	
timer_text=room_speed*1;
noticeText=false;
	
}


if(timer_text>0){
	if(room = room_instruction_test)
	{
		draw_text_ext(700,620,"YOU use " + decide_print(player_card._type),-1,190);
		draw_text_ext(330,370,"ENEMY uses " + decide_print(enemy_card._type),-1,190);
		if(ds_list_size(player_tap_deck)>0){
		draw_text_ext(330,670,"YOUR tap " + decide_print(ds_list_find_value(player_tap_deck,0)._type),-1,190);
		}
		if(ds_list_size(enemy_tap_deck)>0){
		draw_text_ext(700,370,"ENEMY's tap " + decide_print(ds_list_find_value(enemy_tap_deck,0)._type),-1,190);
		}
		timer_text--;
		if(obj_deck_instruction.enemyLose)
		{
		timer_text-=room_speed*1;
		}
	}
		if(room = Room_play)
	{
		draw_text_ext(700,620,"YOU use " + decide_print(player_card._type),-1,190);
		draw_text_ext(330,370,"ENEMY uses " + decide_print(enemy_card._type),-1,190);
		if(ds_list_size(player_tap_deck)>0){
		draw_text_ext(330,670,"YOUR tap " + decide_print(ds_list_find_value(player_tap_deck,0)._type),-1,190);
		}
		if(ds_list_size(enemy_tap_deck)>0){
		draw_text_ext(700,370,"ENEMY's tap " + decide_print(ds_list_find_value(enemy_tap_deck,0)._type),-1,190);
		}
		timer_text--;
			if(obj_deck.enemyLose)
		{
		timer_text-=room_speed*1;
		}
	}
}


/*+decide_print(ds_list_find_value(enemy_tap_deck,0)._type)*/
draw_set_font(font_notice);
if(noticeText){
draw_text_ext(300,980,decide_print(_type),-1,750);
}