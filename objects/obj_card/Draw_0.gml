/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

draw_self();
draw_set_font(font_notice);

if(current_state=state.Discard){
	
timer_text=room_speed*1;
	
}


if(timer_text>0){
	draw_text_ext(650,670,"YOU " + decide_print(player_card._type),-1,190);
	draw_text_ext(280,370,"ENEMY " + decide_print(enemy_card._type),-1,190);
	if(ds_list_size(player_tap_deck)>0){
	draw_text_ext(280,670,"YOUR tap card " + decide_print(ds_list_find_value(player_tap_deck,0)._type),-1,190);
	}
	if(ds_list_size(enemy_tap_deck)>0){
	draw_text_ext(650,370,"ENEMY's tap card "+decide_print(ds_list_find_value(enemy_tap_deck,0)._type),-1,190);
	}
	timer_text--;
}


