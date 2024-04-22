/// @description Insert description here
// You can write your code in this editor


if(player_HP==100)
{
real_myHealthMusk.visible=false;
}else
{
real_myHealthMusk.visible=true;
real_myHealthMusk.image_xscale=1-(player_HP/100);
}

if(enemy_HP==100)
{
real_enemyHealthMusk.visible=false;
}else
{
real_enemyHealthMusk.visible=true;
real_enemyHealthMusk.image_xscale=1-(enemy_HP/100);
}

if(obj_deck_instruction.enemyLose)
{
real_myHealthMusk.visible=false;
real_enemyHealthMusk.visible=false;
real_myHealth.visible=false;
real_myHealthbar.visible=false;
real_enemyHealth.visible=false;
real_enemyHealthbar.visible=false;

}