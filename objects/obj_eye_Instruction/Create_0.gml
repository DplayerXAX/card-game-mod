/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
randomize();



globalvar myHealthBar;
globalvar bonus;
globalvar heartCount;
globalvar eyeCount;
globalvar attackEffect;
globalvar InstructionCheat_find;

attackEffect=false;
timer_effect=room_speed*0.2;

bonus=5;

globalvar rage;
globalvar eyeWideOpen;

rage=false;
eyeWideOpen=true;

randomBlinkTime=room_speed*0.2;
randomWaitTime=room_speed*0.2;
timer_happy=room_speed*0.4;
globalvar frequency;
frequency=0.7;

instruction_text = "Use the Heart to Heal"
audio_play_sound(upgrading_,0,true);

InstructionCheat_find = false;

globalvar instruction_tap;
instruction_tap=false;

real_myHealthMusk=instance_create_layer(913,1025,"UI",obj_health_musk);
real_enemyHealthMusk=instance_create_layer(913,85,"UI",obj_health_musk);
real_myHealth=instance_create_layer(615,1025,"UI",obj_health);
real_myHealthbar=instance_create_layer(615,1025,"UI",obj_health_bar);
real_enemyHealth=instance_create_layer(615,85,"UI",obj_health);
real_enemyHealthbar=instance_create_layer(615,85,"UI",obj_health_bar);
real_myHealthbar.image_xscale=1.05;
real_myHealthbar.image_yscale=1.2;
real_enemyHealthbar.image_xscale=1.05;
real_enemyHealthbar.image_yscale=1.2;

textbox=instance_create_layer(950,350,"below",obj_textbox);