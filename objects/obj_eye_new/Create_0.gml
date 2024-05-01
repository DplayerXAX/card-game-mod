/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
randomize();



globalvar myHealthBar;
globalvar bonus;
globalvar heartCount;
globalvar eyeCount;
globalvar attackEffect;

attackEffect=false;
timer_effect=room_speed*0.2;

image_xscale=1.2;
image_yscale=1.2;
bonus=5;

globalvar rage;
globalvar eyeWideOpen;

rage=false;
eyeWideOpen=true;

randomBlinkTime=room_speed*0.2;
randomBlinkTimeMax=room_speed*0.2;
randomWaitTime=room_speed*0.2;
timer_happy=room_speed*0.4;
globalvar frequency;
frequency=0.7;

audio_play_sound(boss_music,0,true);

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

//textbox=instance_create_layer(950,350,"below",obj_textbox);

countDown1=instance_create_layer(1000,100,"Instances",obj_countDown);
countDown2=instance_create_layer(1000,100,"Instances",obj_countDown);
countDown3=instance_create_layer(1000,100,"Instances",obj_countDown);
countDown4=instance_create_layer(1000,100,"Instances",obj_countDown);
countDown5=instance_create_layer(1000,100,"Instances",obj_countDown);
countDown6=instance_create_layer(1000,100,"Instances",obj_countDown);
countDown7=instance_create_layer(1000,100,"Instances",obj_countDown);
countDown8=instance_create_layer(1000,100,"Instances",obj_countDown);
countDown9=instance_create_layer(1000,100,"Instances",obj_countDown);
countDown10=instance_create_layer(1000,100,"Instances",obj_countDown);

countDown1.image_angle=0;
countDown2.image_angle=36;
countDown3.image_angle=72;
countDown4.image_angle=108;
countDown5.image_angle=144;
countDown6.image_angle=180;
countDown7.image_angle=216;
countDown8.image_angle=252;
countDown9.image_angle=288;
countDown10.image_angle=324;

obj_countDown.visible=false;