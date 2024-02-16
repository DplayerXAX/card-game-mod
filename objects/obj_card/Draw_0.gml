/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

draw_self();
draw_set_font(font_notice);

if(printItsEffect){
	
	if(select_player){
	draw_text_ext(680,650,"YOU " + decide_print(_type),-1,150);
	}
	else if(select_enemy){
	draw_text_ext(300,300,"ENEMY " + decide_print(_type),-1,150);
	}
	else if(playerTap){
	draw_text_ext(300,700,"YOUR tap card " + decide_print(_type),-1,150);
	}
	else if(enemyTap){
	draw_text_ext(680,350,"ENEMY's tap card "+decide_print(_type),-1,150);
	}
	
}





