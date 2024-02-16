// v2.3.0的脚本资产已更改，请参见\ n // https://help.yoyogames.com/hc/en-us/articles/360005277377
//create cards, set them to places, and give them a type.
function create_card(card_type,num){
var card=instance_create_layer(30,350+num*4,"Instances",obj_card);
	ds_list_add(card_deck,card);
	card._type=card_type;
}

//shake the screen!!!


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
			if(player_hearts>0){
			enemy_eyes++;
			player_eyes--;
			}
			}
			break;
			
	
	}

}

