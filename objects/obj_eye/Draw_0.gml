/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 


draw_self();
draw_set_font(Font2);
draw_healthbar(80,170,110,320,enemy_HP, c_white, c_red, c_lime, 3, true, true);
draw_healthbar(850,780,880,930,player_HP, c_white, c_red, c_lime, 3, true, true);


if(!eyeWideOpen){
draw_healthbar(800,100,850,150,randomBlinkTime, c_white, c_red, c_lime, 3, true, true);
}


if(current_state=state.Turn){
draw_text(200,80,"Time Bonus:"+string(bonus));
}