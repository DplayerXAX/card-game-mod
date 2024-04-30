/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

// Inherit the parent event
/// @description Insert description here
// You can write your code in this editor


if(player_HP>100){player_HP=100;}
if(enemy_HP>100){enemy_HP=100;}

if(player_HP<=0){
	audio_stop_all();
	room_goto(room_ending_puppet);
	instance_destroy(obj_player);
	obj_card.visible=false;
	}
else if(enemy_HP<=0){
	audio_stop_all();
	if(cheat==0){room_goto(room_ending_win);}
	else{room_goto(room_ending_puppet);}
	/*
	if(!playSound)
	{
	audio_play_sound(upgrading_depressed,0,true);
	audio_play_sound(enemy_lose,0,false);
	playSound=true;
	}
	obj_deck.enemyLose=true;
	*/

}




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

if(obj_deck.enemyLose)
{
real_myHealthMusk.visible=false;
real_enemyHealthMusk.visible=false;
real_myHealth.visible=false;
real_myHealthbar.visible=false;
real_enemyHealth.visible=false;
real_enemyHealthbar.visible=false;

}
audio_stop_sound(upgrading_);
audio_play_sound(boss_music,0,true)
eyeWideOpen=true;
randomBlinkTimeMax=randomBlinkTime;

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