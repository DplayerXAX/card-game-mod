/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_font(font_notice);
if(!obj_deck.enemyLose)
{
draw_text(300,1050,"HP: "+string(player_HP)+"/100");
draw_text(300,110,"HP: "+string(enemy_HP)+"/100");

}
draw_set_font(Font2);
/*
draw_healthbar(40,170,70,320,enemy_HP, c_white, c_red, c_lime, 3, true, true);
myHealthBar=draw_healthbar(850,780,880,930,player_HP, c_white, c_red, c_lime, 3, true, true);
*/

/*
if(!eyeWideOpen){
draw_healthbar(830,80,880,130,randomBlinkTime, c_white, c_red, c_lime, 3, true, true);
}
*/
/*

draw_text(300,80,"Lose HP in "+string(timer_killing/room_speed)+"second");
if(room = room_instruction_test)
{
	draw_text(x-1/2*sprite_width,y+sprite_height,instruction_text);
	if(gameRound = 1)
	{
		instruction_text="Use Eyeballs to increase your attack";
	}
	else if(gameRound = 2)
	{
		instruction_text="Use Mouth to attack";
	}
	else if(gameRound = 3)
	{
		instruction_text="Use Middle Mouse to tap a card";
	}
	else if(gameRound = 4)
	{
		instruction_text="Right click on my card to steal it";
		
	}
}
*/