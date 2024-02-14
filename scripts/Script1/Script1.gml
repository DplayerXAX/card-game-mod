// v2.3.0的脚本资产已更改，请参见\ n // https://help.yoyogames.com/hc/en-us/articles/360005277377
function create_card(cardType,num){
var card=instance_create_layer(30,350+num*4,0,obj_card);
	ds_list_add(card_deck,card);
	card.type=cardType;
}

function decide_effect(card_type,num){
	
	switch(card_type){
		
	case "eye":
	
		if(num==0){player_eyes++;}
		else if(num==1){enemy_eyes++;}
		break;
			
	case "heart":
	
		if(num==0){
			player_HP+=5+5*player_hearts;
			player_hearts++;
			}
		else if(num==1){
			enemy_HP+=5+5*enemy_hearts;
			enemy_hearts++;
			}
			break;
	
	
	case "mouth":
	
		if(num==0){
			enemy_HP=enemy_HP-3-3*player_eyes;
			}
		else if(num==1){
			player_HP=player_HP-3-3*enemy_eyes;
			}
			break;
			
	case "ETH":
	
		if(num==0){
			player_hearts+=player_eyes;
			player_eyes=0;
			}
		else if(num==1){
			enemy_hearts+=enemy_eyes;
			enemy_eyes=0;
			}
			break;
			
	
	
	case "HTE":
	
		if(num==0){
			player_eyes+=player_hearts;
			player_hearts=0;
			}
		else if(num==1){
			enemy_eyes+=enemy_hearts;
			enemy_hearts=0;
			}
			break;
	
	case "HTM":
	
		if(num==0){
			enemy_HP-=3*player_hearts;
			player_hearts=0;
			}
		else if(num==1){
			player_HP-=3*enemy_hearts;
			enemy_hearts=0;
			}
			break;
	
	case "destroy":
	
	
	}

		
	
	//original code down there
	/*
if(enemy_type=="rock"){
	if(player_type="rock"){}
	else if(player_type="paper"){
		player_score++;
		player_HP=player_HP+12+bonus;
		audio_play_sound(player_get_score_sound, 1, false);
		}
	else if(player_type="scissor"){
		enemy_score++;
		player_HP-=5;
		audio_play_sound(enemy_get_score_sound,1,false);
		}
}

else if(enemy_type=="paper"){
	if(player_type="paper"){}
	else if(player_type="scissor"){

		player_score++;
		player_HP=player_HP+12+bonus;
		audio_play_sound(player_get_score_sound, 1, false);
		}
	else if(player_type="rock"){
		enemy_score++;
		player_HP-=5;
		audio_play_sound(enemy_get_score_sound,1,false);
		}
}

else if(enemy_type=="scissor"){
	if(player_type="scissor"){}
	else if(player_type="rock"){
		player_score++;
		player_HP=player_HP+12+bonus;
		audio_play_sound(player_get_score_sound, 1, false);
		}
	else if(player_type="paper"){
		enemy_score++;
		player_HP-=5;
		audio_play_sound(enemy_get_score_sound,1,false);
		}
}
*/
}

