/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 


draw_set_font(font_score);

if(!enemyLose){
draw_text(200,180,enemy_eyes);
draw_text(200,40,enemy_hearts);
draw_text(1100,820,player_eyes);
draw_text(1100,955,player_hearts);
}

if(enemyLose)
{
	obj_eyeIcon.visible=false;
	obj_heartIcon.visible=false;
	draw_set_font(font_resultTitle);
	draw_text(300,200,"You win, for now...");

	if(current_state==state_instruction.SelectCard){
	draw_set_font(font_narrative);
	draw_text_ext(300,600,"Fine, my other 'friends' are waiting.Choose one of these cards to add to your deck.",50,600)
	draw_text(300,800,"You can choose "+string(getCardNum)+" cards left.");
	}
}