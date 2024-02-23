// v2.3.0的脚本资产已更改，请参见\ n // https://help.yoyogames.com/hc/en-us/articles/360005277377
//create cards, set them to places, and give them a type.
function create_card(card_type,num){
var card=instance_create_layer(30,350+num*4,"Instances",obj_card);
	ds_list_add(card_deck,card);
	card._type=card_type;
}

//shake the screen!!!

function decide_print(card_type){
switch(card_type){
case "eye":
	return "+1 eye(damage)";
	break;
case "heart":
	return "+1 heart and heal based on heart";
	break;
case "mouth":
	return "attack!";
	break;
case "ETH":
	return "transfer all eyes to hearts!";
	break;
case "HTE":
	return "transfer all heart to eyes!"
	break;
case "HTM":
	return "use up X your hearts to attack X times!";
	break;
case "destroy":
	return "destroy opponent's tap card!";
	break;
case "stealHeart":
	return "steal one heart from enemy!(if there's any)";
	break;
case "stealEye":
	return "steal one eye from enemy!(if there's any)";
	break;
}

}


//when one side uses "destroy" card, discard opponent's tap card if existed.
//after the turn, decide player and enemy's cards' effect
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
			attackEffect=true;
			shakeHarder=true;
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
			enemy_HP-=3*player_hearts*player_eyes;
			player_hearts=0;
			}
		else if(num==1){
			player_HP-=3*enemy_hearts*enemy_eyes;
			enemy_hearts=0;
			attackEffect=true;
			shakeHarder=true;
			}
			break;
	
	case "destroy":
	
	if(num==0){
	if(ds_list_size(enemy_tap_deck)>0){
	var tapForDiscard =ds_list_find_value(enemy_tap_deck,0);
	ds_list_add(discard_deck,tapForDiscard);
	tapForDiscard.sendCardToEnemy=false;
	tapForDiscard.iBelong="discard";
	tapForDiscard.isReveal=true;
	tapForDiscard.sendCardToDiscard=true;
	tapForDiscard.image_angle=0;
	tapForDiscard.depth=-ds_list_size(discard_deck);
	tapForDiscard.devi=ds_list_size(discard_deck);
	ds_list_delete(enemy_tap_deck,0);
	enemy_tap=false;
	}
	}
	else if(num==1){
	if(ds_list_size(player_tap_deck)>0){
	var tapForDiscard =ds_list_find_value(player_tap_deck,0);
	ds_list_add(discard_deck,tapForDiscard);
	tapForDiscard.sendCardToPlayer=false;
	tapForDiscard.iBelong="discard";
	tapForDiscard.isReveal=true;
	tapForDiscard.sendCardToDiscard=true;
	tapForDiscard.image_angle=0;
	tapForDiscard.depth=-ds_list_size(discard_deck);
	tapForDiscard.devi=ds_list_size(discard_deck);
	ds_list_delete(player_tap_deck,0);
	player_tap=false;
		}
	}
	
	break;
	
	case "stealHeart":
	
	if(num==0){
		if(enemy_hearts>0){
			enemy_hearts--;
			player_hearts++;
		}
			}
		else if(num==1){
		if(player_hearts>0){
			enemy_hearts++;
			player_hearts--;
		}
			}
			break;
			
	case "stealEye":
	
		if(num==0){
			if(enemy_eyes>0){
			enemy_eyes--;
			player_eyes++;
			}
			}
		else if(num==1){
			if(player_eyes>0){
			enemy_eyes++;
			player_eyes--;
			}
			}
			break;
			
	
	}

}

