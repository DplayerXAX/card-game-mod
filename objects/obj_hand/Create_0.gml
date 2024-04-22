
randomize();



globalvar myHealthBar;
globalvar bonus;
globalvar heartCount;
globalvar eyeCount;
globalvar attackEffect;

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
instruction_text = "Use the Heart to Heal"
audio_play_sound(upgrading_,0,true);
