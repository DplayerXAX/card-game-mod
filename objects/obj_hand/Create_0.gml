
randomize();



globalvar myHealthBar;
globalvar bonus;
globalvar heartCount;
globalvar eyeCount;
globalvar attackEffect;
globalvar enemy_HP;
globalvar enemy_eyes;
globalvar enemy_hearts;
enemy_HP=100;
enemy_eyes=0;
enemy_hearts=0;

attackEffect=false;
timer_effect=room_speed*0.2;
handGenerated=false;

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
mylevel=1;
instruction_text = "Use the Heart to Heal";
audio_play_sound(upgrading_,0,true);


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