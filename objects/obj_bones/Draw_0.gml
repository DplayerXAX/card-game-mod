/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
draw_self();
draw_set_font(font_notice);
if(!obj_deck.enemyLose)
{
draw_text(300,1050,"HP: "+string(player_HP)+"/100");
draw_text(300,110,"HP: "+string(enemy_HP)+"/60");

}
draw_set_font(Font2);
/*

