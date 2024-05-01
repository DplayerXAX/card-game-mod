/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 


draw_self();
draw_set_font(font_notice);
if(!obj_deck_instruction.enemyLose)
{
draw_text(300,1050,"HP: "+string(player_HP)+"/100");
draw_text(300,110,"HP: "+string(enemy_HP)+"/100");

}
draw_set_font(Font2);
/*draw_healthbar(300,70,930,100,enemy_HP, c_white, c_red, c_lime, 0, true, true);
myHealthBar=draw_healthbar(300,1010,930,1040,player_HP, c_white, c_red, c_lime, 0, true, true);
*/
if(!eyeWideOpen){
draw_healthbar(830,80,880,130,randomBlinkTime, c_white, c_red, c_lime, 3, true, true);
}

 

draw_text(300,30,"Lose HP in "+string(timer_killing/room_speed)+"second");
if(room = room_instruction_test)
{
	draw_text(x-1/2*sprite_width,y+sprite_height,instruction_text);
	if(gameRound = 1)
	{
		instruction_text="Use Strength Card to increase your attack";
	}
	else if(gameRound = 2)
	{
		instruction_text="Use Mouth to attack";
	}
	else if(gameRound = 3)
	{
		instruction_text="Middle Click a Mouse to permanently has its effect";
	}
	else if(gameRound = 4)
	{
		instruction_text="Right click on my card to steal it";
		
	}
	if(gameRound = 5)
	{
		instruction_text="Try to kill me";
		
	}
}
