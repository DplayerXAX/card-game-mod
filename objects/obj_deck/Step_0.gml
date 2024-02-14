/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 


//switch(){
//state=["start","dealing","turn","discard","reshuffle"];

if(timer_killing>0){timer_killing--;}
else{
player_HP--;
timer_killing=room_speed*0.5;
}


switch(current_state){
	
case state.Start:
	//create cards, put them into list, shuffle
	for(var i=0;i<24;i++){create_card(all_type[i%3],i);}
	for(var i=0;i<12;i++){create_card(special_type[i%4],i+23);}
	
		
	ds_list_shuffle(card_deck);
	audio_play_sound(shuffle_cards_sound,1,false);
	for(var j=0;j<number;j++){
	var shuffle_card=ds_list_find_value(card_deck,j);
	shuffle_card.devi=j;
	shuffle_card.depth=j;
	shuffle_card.sendCardToDeck=true;
	}
	current_state=state.Dealing;
	break;
	
case state.Dealing:
	//send cards to enemy and player,player reveals his cards
	var _x,_y;
	//enemy get cards
	if(!enemy_card_finish){
	if(timer_1>0){timer_1--;}else{
	var draw_card= ds_list_find_value(card_deck,0);
	ds_list_add(enemy_deck,draw_card);
	draw_card.code=count;
	draw_card.iBelong="enemy";
	draw_card.sendCardToDeck=false;
	audio_play_sound(send_card_sound,1,false);
	draw_card.devi=count;
	draw_card.sendCardToEnemy=true;
	ds_list_delete(card_deck,0);
	timer_1=room_speed*0.2;
	count++;
	if(count==3){
		enemy_card_finish=true;
		count=0;
			}
	}
	}
	
	//player get cards
	if(enemy_card_finish && !player_card_finish){
		if(timer_1>0){timer_1--;}else{
	var draw_card= ds_list_find_value(card_deck,0);
	ds_list_add(player_deck,draw_card);
	draw_card.iBelong="player";
	draw_card.code=count;
	draw_card.devi=count;
	draw_card.sendCardToDeck=false;
	audio_play_sound(send_card_sound,1,false);
	draw_card.sendCardToPlayer=true;
	draw_card.isReveal=true;
	ds_list_delete(card_deck,0);
	timer_1=room_speed*0.2;
	count++;
	if(count==3){
		player_card_finish=true;
		count=0;
			}
	}
	}
	time_limit=0.5;
	
	if(enemy_card_finish && player_card_finish){current_state=state.Sleeping;}
	break;
	

	
case state.Turn:
//send enemy cards, then player's
//enemy select a card, wait the player to select a card
if(!dontFlyIt){
for(var i=0;i<3;i++){
var notFlyCard= ds_list_find_value(player_deck,i);
notFlyCard.sendCardToPlayer=false;
}
}
if(!enemy_card_decide){
	if(timer_4>0){timer_4--;}else{
	enemy_card_index=irandom(2);
	enemy_card=ds_list_find_value(enemy_deck,enemy_card_index);
	enemy_card.sendCardToEnemy=false;
	enemy_card.select_enemy=true;
	enemy_card_decide=true;
	timer_4=room_speed*0.4;
	}
}
if(!player_card_decide){
	if(timer_bonus>0){timer_bonus--;}
	else{
	if(bonus>0){bonus--;}
	timer_bonus=room_speed*0.6;
	}
}else{
	for(var i=0;i<ds_list_size(player_deck);i++){
	if(ds_list_find_value(player_deck,i).select_player=true){
	player_card=ds_list_find_value(player_deck,i);
	player_card_index=i;
		}
	}
	}
	if(enemy_card_decide && player_card_decide){
		if(timer_5>0){timer_5--;}else{
		current_state=state.Discard;
		timer_5=room_speed*0.3;
		}
		}
	break;
	
case state.Discard:

	enemy_card_decide=false;
	player_card_decide=false;
	enemy_card_finish=false;
	player_card_finish=false;
	enemy_card.isReveal=true;
	bonus=5;
	
	if(!iAmJudge&&!rage){
		
		decide_effect(player_card.type,0);
		decide_effect(enemy_card.type,1);

		iAmJudge=true;
	}
	
	if(card_wait==0){
		//discard enemy selected card
	if(timer_1>0){timer_1--;}else{
	ds_list_add(discard_deck,enemy_card);
	enemy_card.select_enemy=false;
	enemy_card.iBelong="discard";
	ds_list_delete(enemy_deck,enemy_card_index);
	audio_play_sound(send_card_sound,1,false);
	enemy_card.sendCardToDiscard=true;
	enemy_card.depth=-ds_list_size(discard_deck);
	enemy_card.devi=ds_list_size(discard_deck);
	timer_1=room_speed*0.2;
	card_wait++;
			}
	}else if(card_wait==1){
		//discard player selected card
			if(timer_1>0){timer_1--;}else{
	ds_list_add(discard_deck,player_card);
	player_card.select_player=false;
	player_card.iBelong="discard";
	ds_list_delete(player_deck,player_card_index);
	audio_play_sound(send_card_sound,1,false);
	player_card.sendCardToDiscard=true;
	player_card.depth=-ds_list_size(discard_deck);
	player_card.devi=ds_list_size(discard_deck);
	timer_1=room_speed*0.2;
	card_wait++;
			}
	}else if(card_wait==2){
		if(timer_1>0){timer_1--;}else{
			//discard enemy no use cards
		rest_card=ds_list_find_value(enemy_deck,iAmOne);
		ds_list_add(discard_deck,rest_card);
		rest_card.sendCardToEnemy=false;
		rest_card.isReveal=true;
		rest_card.iBelong="discard";
		ds_list_delete(enemy_deck,iAmOne);
		audio_play_sound(send_card_sound,1,false);
		rest_card.sendCardToDiscard=true;
		rest_card.depth=-ds_list_size(discard_deck);
		rest_card.devi=ds_list_size(discard_deck);
		timer_1=room_speed*0.2;
		iAmOne--;
		
		if(iAmOne<0){
			card_wait++;
			iAmOne=1;
			}
		}
	} else if(card_wait==3){
		//discard player no use cards
	if(timer_1>0){timer_1--;}else{
	rest_card=ds_list_find_value(player_deck,iAmOne);
		ds_list_add(discard_deck,rest_card);
		rest_card.sendCardToPlayer=false;
		rest_card.iBelong="discard";
		ds_list_delete(player_deck,iAmOne);
		audio_play_sound(send_card_sound,1,false);
		rest_card.sendCardToDiscard=true;
		rest_card.depth=-ds_list_size(discard_deck);
		rest_card.devi=ds_list_size(discard_deck);
		timer_1=room_speed*0.2;
		iAmOne--;
		
		if(iAmOne<0){
			card_wait++;
			iAmOne=1;
			}
	}
	}else if(card_wait==4){discard_finish=true;}
		
	
	
	if(discard_finish){
		card_wait=0;
		discard_finish=false;
		iAmJudge=false;
	if(ds_list_size(card_deck)>0){
		rage=false;
	current_state=state.Dealing;
	}else{
		rage=false;
		current_state=state.Reshuffle;}
	}
	break;
	
case state.Reshuffle:
if(!send_finish){
if(timer_2>0){timer_2--;}else{
	var back_card=ds_list_find_value(discard_deck,littleCard);
	back_card.isReveal=false;
	audio_play_sound(send_card_sound,1,false);
	back_card.wonderful=true;
	back_card.depth=littleCard;
	back_card.sendCardToDiscard=false;
	littleCard--;
	timer_2=room_speed*0.1;
	if(littleCard<0){
		littleCard=35;
		send_finish=true;
		timer_2=room_speed*0.6;
		}
}
}

if(send_finish && !shuffle_finish){
	if(timer_3>0){timer_3--;}else{
for(var i=0;i<number;i++){
	var back_card=ds_list_find_value(discard_deck,0);
	back_card.iBelong="deck";
ds_list_add(card_deck,back_card);
ds_list_delete(discard_deck,0);
}
ds_list_shuffle(card_deck);
audio_play_sound(shuffle_cards_sound,1,false);
for(var i=0;i<number;i++){
var shuffle_card=ds_list_find_value(card_deck,i);
shuffle_card.wonderful=false;
shuffle_card.devi=i;
shuffle_card.depth=i;
shuffle_card.sendCardToDeck=true;
}
shuffle_finish=true;
timer_3=room_speed*0.6;
	}
}

time_limit=3;
	if(shuffle_finish && send_finish){
		shuffle_finish=false;
		send_finish=false;
		time_limit=0.3;
		current_state=state.Sleeping;
		}
	break;

	case state.Sleeping:
//wait some time for card sending
	timer++;
	if(timer>room_speed*time_limit){
		
	if(time_limit==0.5){current_state=state.Turn;}
	else {current_state=state.Dealing;}
	timer=0;
	}
	break;
}
