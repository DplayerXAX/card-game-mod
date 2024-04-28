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
	return "Strength card: +1 strength(ATP)";
	break;
case "heart":
	return "Healing card: +1 healing point and heal based on the HTP you have.";
	break;
case "mouth":
	return "Bit card: Attack based on your strength!";
	break;
case "ETH":
	return "Flush card: transfer all strength to healing points";
	break;
case "HTE":
	return "Excitement card: transfer all healing points to strength!"
	break;
case "HTM":
	return "Hungry bit card: use up X your hearts to attack X times!";
	break;
case "destroy":
	return "Stab card: destroy opponent's tap card!";
	break;
case "stealHeart":
	return "Steal-H card: steal one healing point from enemy!(if there's any)";
	break;
case "stealEye":
	return "Steal-S card: steal one strength from enemy!(if there's any)";
	break;
}

}


//when one side uses "destroy" card, discard opponent's tap card if existed.
//after the turn, decide player and enemy's cards' effect


function decide_effect(card_type,num){
	
	switch(card_type){
		
	case "eye":
	
		if(num==0){
			player_eyes++;
			var inst = instance_create_layer(430,490, "Instances", obj_num_popup);
			inst.myColor=c_green;
			inst.damage_amount = "+1";
			inst.fly_to_player_eyes = true;
			}
		else if(num==1){
			enemy_eyes++;
			var inst = instance_create_layer(430,280, "Instances", obj_num_popup);
			inst.myColor=c_green;
			inst.damage_amount = "+1";
			inst.fly_to_enemy_eyes = true;
			}
		break;
			
	case "heart":
	
		if(num==0){
			player_HP+=5+5*player_hearts;
			player_hearts++;
			//var inst1 = instance_create_layer(1200,925, "Instances", obj_num_popup);
			//inst1.damage_amount = "+1";
			var inst1 = instance_create_layer(430,490, "Instances", obj_num_popup);
			inst1.fly_to_player_heart = true;
			inst1.damage_amount = "+1";
			inst1.myColor=c_green;
			var inst2 = instance_create_layer(430,490,"Instances", obj_num_popup);
			inst2.myColor=c_green;
			inst2.damage_amount ="+"+string(5+5*player_hearts);
			inst2.fly_to_player_healthbar = true;
			}
		else if(num==1){
			enemy_HP+=5+5*enemy_hearts;
			enemy_hearts++;
			var inst1 = instance_create_layer(430,280, "Instances", obj_num_popup);
			inst1.fly_to_player_heart = true;
			inst1.damage_amount = "+1";
			var inst2 = instance_create_layer(430,280,"Instances", obj_num_popup);
			inst2.myColor=c_green;
			inst2.damage_amount ="+"+string(5+5*enemy_hearts);
			inst2.fly_to_enemy_healthbar = true;
			}
			break;

	
	case "mouth":
	
		if(num==0){
			enemy_HP=enemy_HP-3-3*player_eyes;
			var inst = instance_create_layer(430,490,"Instances", obj_num_popup);
			inst.damage_amount = -3-3*player_eyes;
			inst.fly_to_enemy_healthbar = true;
			}
		else if(num==1){
			player_HP=player_HP-3-3*enemy_eyes;
			var inst = instance_create_layer(430,280, "Instances", obj_num_popup);
			inst.damage_amount = -3-3*enemy_eyes;
			inst.fly_to_player_healthbar = true;
			attackEffect=true;
			shakeHarder=true;
			}
			break;
			
	case "ETH":
	
		if(num==0){
			player_hearts+=player_eyes;
			var inst1 = instance_create_layer(430,490, "Instances", obj_num_popup);
			inst1.myColor=c_green;
			inst1.damage_amount = "+"+string(player_eyes);
			inst1.fly_to_player_heart = true;
			var inst2 = instance_create_layer(430,490, "Instances", obj_num_popup);
			inst2.damage_amount = "-"+string(player_eyes);
			inst2.fly_to_player_eyes = true;
			player_eyes=0;
			}
		else if(num==1){
			enemy_hearts+=enemy_eyes;
			var inst1 = instance_create_layer(430,280, "Instances", obj_num_popup);
			inst1.damage_amount = "-"+string(enemy_eyes);
			inst1.fly_to_enemy_eyes = true;
			var inst2 = instance_create_layer(430,280, "Instances", obj_num_popup);
			inst2.myColor=c_green;
			inst2.damage_amount = "+"+string(enemy_eyes);
			inst2.fly_to_enemy_heart = true;
			enemy_eyes=0;
			}
			break;
			
	
	
	case "HTE":
	
		if(num==0){
			player_eyes+=player_hearts;
			var inst1 = instance_create_layer(430,490, "Instances", obj_num_popup);
			inst1.damage_amount = "-"+string(player_hearts);
			inst1.fly_to_player_heart = true;
			var inst2 = instance_create_layer(430,490, "Instances", obj_num_popup);
			inst2.myColor=c_green;
			inst2.damage_amount = "+"+string(player_hearts);
			inst2.fly_to_player_eyes = true;
			player_hearts=0;
			}
		else if(num==1){
			enemy_eyes+=enemy_hearts;
			var inst1 = instance_create_layer(430,280, "Instances", obj_num_popup);
			inst1.myColor=c_green;
			inst1.damage_amount = "+"+string(enemy_hearts);
			inst1.fly_to_enemy_eyes = true;
			var inst2 = instance_create_layer(430,280, "Instances", obj_num_popup);
			inst2.damage_amount = "-"+string(enemy_hearts);
			inst2.fly_to_enemy_heart = true;
			enemy_hearts=0;
			}
			break;
	
	case "HTM":
	
		if(num==0){
			enemy_HP-=3*player_hearts*player_eyes;
			var inst1 = instance_create_layer(430,490, "Instances", obj_num_popup);
			inst1.damage_amount = "-"+string(player_hearts)+"*"+string(player_eyes);
			inst1.fly_to_enemy_healthbar = true;
			var inst2 = instance_create_layer(430,490, "Instances", obj_num_popup);
			inst2.damage_amount = "-"+string(player_hearts);
			inst2.fly_to_player_heart = true;
			player_hearts=0;
			}
		else if(num==1){
			player_HP-=3*enemy_hearts*enemy_eyes;
			var inst1 = instance_create_layer(430,280, "Instances", obj_num_popup);
			inst1.damage_amount = "-"+string(enemy_hearts)+"*"+string(enemy_eyes);
			inst1.fly_to_player_healthbar = true;
			var inst2 = instance_create_layer(430,280, "Instances", obj_num_popup);
			inst2.damage_amount = "-"+string(enemy_hearts);
			inst2.fly_to_enemy_heart = true;
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
			var inst1 = instance_create_layer(50,100, "Instances", obj_num_popup);
			inst1.damage_amount = "-1";
			player_hearts++;
			var inst2 = instance_create_layer(1200,1000, "Instances", obj_num_popup);
			inst2.myColor=c_green;
			inst2.damage_amount = "+1";
		}
			}
		else if(num==1){
		if(player_hearts>0){
			enemy_hearts++;
			var inst1 = instance_create_layer(50,100, "Instances", obj_num_popup);
			inst1.myColor=c_green;
			inst1.damage_amount = "+1";
			player_hearts--;
			var inst2 = instance_create_layer(1200,1000, "Instances", obj_num_popup);
			inst2.damage_amount = "-1";
		}
			}
			break;
			
	case "stealEye":
	
		if(num==0){
			if(enemy_eyes>0){
			enemy_eyes--;
			var inst1 = instance_create_layer(50,200, "Instances", obj_num_popup);
			inst1.damage_amount = "-1";
			player_eyes++;
			var inst2 = instance_create_layer(1200,900, "Instances", obj_num_popup);
			inst2.myColor=c_green;
			inst2.damage_amount = "+1";
			}
			}
		else if(num==1){
			if(player_eyes>0){
			enemy_eyes++;
			var inst1 = instance_create_layer(50,200, "Instances", obj_num_popup);
			inst1.myColor=c_green;
			inst1.damage_amount = "+1";
			player_eyes--;
			var inst2 = instance_create_layer(1200,900, "Instances", obj_num_popup);
			inst2.damage_amount = "-1";
			}
			}
			break;
			
	
	}

}

