/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

// Inherit the parent event
event_inherited();

if(!eyeWideOpen){
draw_healthbar(830,80,880,130,randomBlinkTime, c_white, c_red, c_lime, 3, true, true);
}

draw_text(300,80,"Lose HP in "+string(timer_killing/room_speed)+"second");