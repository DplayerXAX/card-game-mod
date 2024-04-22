/// @description Insert description here
// You can write your code in this editor
y -= move_speed;
alpha -= 1 / life_span;
if (alpha <= 0) 
{
	instance_destroy();
}
show_debug_message("Damage Pop Up exists")