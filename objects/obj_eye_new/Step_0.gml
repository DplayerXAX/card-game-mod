/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
if(player_HP>100){player_HP=100;}
if(enemy_HP>100){enemy_HP=100;}
if(player_HP<=0){
	audio_stop_all();
	
	room_goto(room_ending_puppet);
	instance_destroy(obj_player);
	instance_destroy(obj_girlsprite);
	obj_card.visible=false;
	//room_goto(Room_lose);
	}
else if(enemy_HP<=0){
	audio_stop_all();
	if(cheat!=0){
	room_goto(room_ending_puppet_win);
	}else{
	room_goto(room_ending_true_win);
	}
	instance_destroy(obj_player);
	instance_destroy(obj_girlsprite);
	obj_card.visible=false;

	
	enemyLose=true;
/*if(cheat==0){room_goto(Room_trueWin);}
else{room_goto(Room_win);}*/

}

if(!eyeWideOpen)
{
	obj_countDown.visible=true;
if(randomBlinkTime<randomBlinkTimeMax*0.9)
{
	countDown1.visible=false;
}
if(randomBlinkTime<randomBlinkTimeMax*0.8)
{
	countDown10.visible=false;
}
if(randomBlinkTime<randomBlinkTimeMax*0.7)
{
	countDown9.visible=false;
}
if(randomBlinkTime<randomBlinkTimeMax*0.6)
{
	countDown8.visible=false;
}
if(randomBlinkTime<randomBlinkTimeMax*0.5)
{
	countDown7.visible=false;
}
if(randomBlinkTime<randomBlinkTimeMax*0.4)
{
	countDown6.visible=false;
}
if(randomBlinkTime<randomBlinkTimeMax*0.3)
{
	countDown5.visible=false;
}
if(randomBlinkTime<randomBlinkTimeMax*0.2)
{
	countDown4.visible=false;
}
if(randomBlinkTime<randomBlinkTimeMax*0.1)
{
	countDown3.visible=false;
}
if(randomBlinkTime<0)
{
	countDown3.visible=false;
}
}else
{
	obj_countDown.visible=false;
}


if(eyeWideOpen&&current_state=state.Turn&&player_card_decide=false){
	
for(var i=0;i<ds_list_size(enemy_deck);i++)
{
	
	var search_card=ds_list_find_value(enemy_deck,i);
	if(search_card.isReveal=true)
	{
	player_HP=player_HP-8;
	rage=true;
	attackEffect=true;
	shakeHarder=true;
	shakeScreen=true;
	search_card.paintItRed=true;
	search_card.isReveal=false;
	}	
}


/*
if(ds_list_size(enemy_tap_deck)>0){
	var search_card=ds_list_find_value(enemy_tap_deck,0);
	if(search_card.isReveal=true){
	player_HP=player_HP-8;
	rage=true;
	attackEffect=true;
	shakeHarder=true;
	shakeScreen=true;
	search_card.paintItRed=true;
	search_card.isReveal=false;
	}

}
*/
if(randomWaitTime>0){randomWaitTime--;}
else{
	eyeWideOpen=!eyeWideOpen;
	 randomWaitTime=room_speed*(irandom(4)+1)*frequency*0.5;
	}

}

if(!eyeWideOpen){
	sprite_index=spr_enemy_eye_close;
if(randomBlinkTime>0){randomBlinkTime--;}
else{
	eyeWideOpen=!eyeWideOpen;
	randomBlinkTime=room_speed*(irandom(4)+1)*frequency;
	randomBlinkTimeMax=randomBlinkTime;

}

}else{
	if(rage=true){
		sprite_index=spr_enemy_eye_angry;

		}
	else{
		sprite_index=spr_enemy_eye;
		image_blend=c_white;
		}
}

if(rage){
if(timer_happy>0){timer_happy--;}
else{
	rage=false;
	timer_happy=room_speed*0.4;
	}
}

if(attackEffect){
	var backGround=layer_background_get_id("Background");
	layer_background_blend(backGround,c_red);
	timer_effect--;
	if(timer_effect<0){
	timer_effect=room_speed*0.2;
	attackEffect=false;
	layer_background_blend(backGround,c_black);
	}
}

if(enemy_HP<80&&enemy_HP>60){
	frequency=0.5;
}
if(enemy_HP<=60&&enemy_HP>40){
	frequency=0.4;
}
if(enemy_HP<=40&&enemy_HP>20){
	frequency=0.3;
}
if(enemy_HP<=20&&enemy_HP>0){
	frequency=0.2;
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

if(obj_deck.enemyLose)
{
	image_blend=c_black;
	image_alpha-=0.01;
}

if(rage)
{
	image_blend=c_red;
}else
{
	image_blend=c_white;
}