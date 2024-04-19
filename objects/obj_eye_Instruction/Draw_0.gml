/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 


draw_self();
draw_set_font(Font2);
draw_healthbar(300,70,930,100,enemy_HP, c_white, c_red, c_lime, 0, true, true);
myHealthBar=draw_healthbar(300,1010,930,1040,player_HP, c_white, c_red, c_lime, 0, true, true);


if(!eyeWideOpen){
draw_healthbar(1000,80,1050,130,randomBlinkTime, c_white, c_red, c_lime, 3, true, true);
}

 
//draw_text(300,80,"Lose HP in "+string(timer_killing/room_speed)+"second");
if(room = room_instruction_test)
{
	draw_text_ext(x+150-1/2*sprite_width,y+sprite_height,instruction_text,50,250);
	if(gameRound = 1)
	{
		instruction_text="Use Strength Card to increase your attack";
	}
	else if(gameRound = 2)
	{
		instruction_text="Use Fist to attack";
	}
	else if(gameRound = 3 and instruction_tap = false)
	{
		instruction_text="Middle Click a card";
	}
	else if(gameRound = 3 and instruction_tap = true)
	{
		instruction_text="Now its effect permanently stays";
	}
	else if(gameRound = 4 and InstructionCheat_find = false)
	{
		instruction_text="Right click on my card to steal it";
		
	}
	else if(gameRound = 5)
	{
		instruction_text="Now Try to kill me";
		
	}
}
