/// @description Insert description here
// You can write your code in this editor


if(player_HP>100){player_HP=100;}
if(enemy_HP>80){enemy_HP=80;}

if(player_HP<=0){
	audio_stop_sound(upgrading_);
	room_goto(room_ending_puppet);
	instance_destroy(obj_player);
	instance_destroy(obj_girlsprite);
	obj_card.visible=false;
	}
else if(enemy_HP<=0){
	audio_stop_sound(upgrading_);
	audio_play_sound(enemy_lose,0,false);
	audio_play_sound(upgrading_depressed,0,true);
	obj_deck.enemyLose=true;
	/*if(cheat==0){room_goto(Room_trueWin);}
	else{room_goto(Room_win);}*/

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

if(current_state==state.Discard && obj_deck.iAmJudge)
{
if(!abilityTrigger)

{
	enemy_HP=100;
	abilityTrigger=true;
}


}

if(current_state==state.Dealing||current_state==state.SpecialDealing)
{
	abilityTrigger=false;
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