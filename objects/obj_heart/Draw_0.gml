/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
draw_self();
draw_set_font(font_notice);
if(!obj_deck.enemyLose)
{
draw_text(300,1050,"HP: "+string(player_HP)+"/100");
draw_text(300,110,"HP: "+string(enemy_HP)+"/80");

}
draw_set_font(Font2);