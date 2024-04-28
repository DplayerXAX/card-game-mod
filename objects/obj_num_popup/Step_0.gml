/// @description Insert description here
// You can write your code in this editor
y -= move_speed;
life_span--;
if(life_span<=0)
{
alpha -= 0.1;
life_span=room_speed*0.1;
}

if (alpha <= 0) 
{
	instance_destroy();
}
show_debug_message("Damage Pop Up exists")
if(fly_to_player_heart = true)
{
	x = lerp(x,1200,0.05)
	y = lerp(y,925,0.05)
}
if(fly_to_enemy_heart = true)
{
	x = lerp(x,50,0.05)
	y = lerp(y,25,0.05)
}
if(fly_to_player_eyes = true)
{
	x = lerp(x,1200,0.05)
	y = lerp(y,825,0.05)
}
if(fly_to_enemy_eyes = true)
{
	x = lerp(x,50,0.05)
	y = lerp(y,130,0.05)
}
if(fly_to_player_healthbar = true)
{
	x = lerp(x,100,0.05)
	y = lerp(y,800,0.05)
}
if(fly_to_enemy_healthbar = true)
{
	x = lerp(x,ds_list_find_value(enemyIWillMeet,level).x-75,0.05);
	y = lerp(y,ds_list_find_value(enemyIWillMeet,level).y+5,0.05);
	
}