/// @description Insert description here
// You can write your code in this editor
y -= move_speed;
life_span--;
if(life_span<=0)
{
alpha -= 0.2;
life_span=room_speed*0.1;
}

if (alpha <= 0) 
{
	instance_destroy();
}
show_debug_message("Damage Pop Up exists")