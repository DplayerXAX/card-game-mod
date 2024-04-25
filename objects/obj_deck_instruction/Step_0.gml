/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

if(player_HP>100){player_HP=100;}
if(enemy_HP>100){enemy_HP=100;}

if(player_HP<=0){
	audio_stop_sound(upgrading_);
	room_goto(Room_lose);
	}
else if(enemy_HP<=0){
	audio_stop_sound(upgrading_);
	enemyLose=true;
/*if(cheat==0){room_goto(Room_trueWin);}
else{room_goto(Room_win);}*/

}

//no losing HP in instruction
/*
if(timer_killing>0){timer_killing--;}
else{
player_HP-=5;
timer_killing=room_speed*4;
shakeScreen=true;

}
*/


switch(current_state){
	
case state_instruction.Start:
	//create cards, put them into list, shuffle
	/*
	for(var i=0;i<6;i++){
		create_card(all_type[i%3],i);
		number++;
		}
	for(var i=0;i<12;i++){
		create_card(all_type[i%3],i);
		number++;
		}
	littleCard=number-1;
	*/
	/*
	for(var i=0;i<8;i++){create_card(special_type[i%4],i+23);}
	create_card("destroy",i+31);
	create_card("heart",i+32);
	create_card("destroy",i+33);
	create_card("heart",i+33);
	for(var i=0;i<6;i++){create_card(steal_type[i%2],i+35)}*/
	//empty player and enemy card that stuck into player and enemy's list when tapping a card
	emptyPlayer=instance_create_layer(1500,1500,"Instances",obj_card);
	emptyEnemy=instance_create_layer(1500,1500,"Instances",obj_card);
	hand0=instance_create_layer(200,1100,"UI",obj_hand_musk);
	hand1=instance_create_layer(390,1100,"UI",obj_hand_musk);
	hand2=instance_create_layer(580,1100,"UI",obj_hand_musk);
	//no shuffle in instruction to make sure player get the right card
	//ds_list_shuffle(card_deck);
	//audio_play_sound(shuffle_cards_sound,1,false);
	for(var j=0;j<number;j++){
	var shuffle_card=ds_list_find_value(card_deck,j);
	shuffle_card.devi=j;
	shuffle_card.depth=j;
	shuffle_card.sendCardToDeck=true;
	}
	current_state=state_instruction.Dealing;
	break;
	
case state_instruction.Dealing:
	//send cards to enemy and player,player reveals his cards
	var _x,_y;
	//enemy get cards
	if(!handGenerated)
	{
		if(gameRound==0)
		{
		hand0.appear=true;
		hand2.appear=true;
		handGenerated=true;
		}

	
	}
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
	
	if(enemy_card_finish && player_card_finish){current_state=state_instruction.Sleeping;}
	break;
	

//send enemy cards, then player's
//enemy select a card, wait the player to select a card	
case state_instruction.Turn:
//stop player cards from getting back to preset position
if(!dontFlyIt){
for(var i=0;i<ds_list_size(player_deck);i++){
var notFlyCard= ds_list_find_value(player_deck,i);
notFlyCard.sendCardToPlayer=false;
}
}
//enemy waits for some times, then select a card, it might tap a card if
//it doesn't have one
if(!enemy_card_decide){
	if(timer_4>0){timer_4--;}else{
	if(ds_list_size(enemy_tap_deck)>0){
	enemy_card_index=irandom(2);
	enemy_card=ds_list_find_value(enemy_deck,enemy_card_index);
	enemy_card.sendCardToEnemy=false;
	enemy_card.select_enemy=true;
	enemy_card_decide=true;
	}else {
	var gamble=0;
	if(gamble==0){
	enemy_card_index=irandom(2);
	enemy_card=ds_list_find_value(enemy_deck,enemy_card_index);
	enemy_card.sendCardToEnemy=false;
	enemy_card.select_enemy=true;
	enemy_card_decide=true;
	}
	else{
	enemy_card_index=irandom(2);
	enemy_card=ds_list_find_value(enemy_deck,enemy_card_index);
	enemy_card.isTap=true;
	enemy_tap=true;
	ds_list_add(enemy_tap_deck,enemy_card);
	enemy_card.iBelong="tap";
	ds_list_delete(enemy_deck,enemy_card_index);
	ds_list_insert(enemy_deck,enemy_card_index,emptyEnemy);
	enemy_card.devi=1;
	enemy_card.sendCardToEnemy=false;
	enemy_card.select_enemy=true;
	enemy_card_decide=true;
	enemy_card.enemyTap=true;
	}
	}
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
	if(ds_list_find_value(player_deck,i).select_player==true){
	player_card=ds_list_find_value(player_deck,i);
	player_card_index=i;
	foundItPlayer=true;
		}
	}
		if(!foundItPlayer)
		{
	//if(ds_list_size(player_tap_deck)>0){}
	if(ds_list_find_value(player_tap_deck,0).select_player==true){
	player_card=ds_list_find_value(player_tap_deck,0);
	foundItPlayer=true;
	}
				
		}
	}
	if(enemy_card_decide && player_card_decide){
		
		turnCount++;
		enemy_card.printItsEffect=true;
		player_card.printItsEffect=true;
		foundItPlayer=false;
		if(timer_5>0){timer_5--;}else{
		current_state=state_instruction.Discard;
		timer_5=room_speed*0.6;
		}
		}
	break;
	
case state_instruction.Discard:
	
	if(handGenerated)
	{
	hand0.appear=false;
	hand1.appear=false;
	hand2.appear=false;
	handGenerated=false;
	}

	enemy_card_decide=false;
	player_card_decide=false;
	enemy_card_finish=false;
	player_card_finish=false;
	if(enemy_card.iBelong!="tap"){enemy_card.isReveal=true;}
	player_card.select_player=false;
	player_card.isTap=false;
	enemy_card.select_enemy=false;
	enemy_card.isTap=false;
	bonus=5;
	
	if(!iAmJudge){
		shakeScreen=true;
		gameRound++;
		decide_effect(player_card._type,0);
		decide_effect(enemy_card._type,1);
		if(ds_list_size(player_tap_deck)>0){
		decide_effect(ds_list_find_value(player_tap_deck,0)._type,0);
		}
		if(ds_list_size(enemy_tap_deck)>0){
		decide_effect(ds_list_find_value(enemy_tap_deck,0)._type,1);
		}

		iAmJudge=true;
	}
	if(ds_list_size(card_deck)==0||enemyLose){lastTurn=true;}
	
	if(card_wait==0){
		//discard enemy selected card
	if(timer_1>0){timer_1--;}else{
	show_debug_message(enemy_card._type);
	show_debug_message(string(enemy_card.enemyTap));
	if(!enemy_card.enemyTap){
	ds_list_add(discard_deck,enemy_card);
	enemy_card.select_enemy=false;
	enemy_card.iBelong="discard";
	audio_play_sound(send_card_sound,1,false);
	enemy_card.sendCardToDiscard=true;
	enemy_card.depth=-ds_list_size(discard_deck);
	enemy_card.devi=ds_list_size(discard_deck);
	}
	timer_1=room_speed*0.2;
	card_wait++;
			}
			
	}else if(card_wait==1){
		//discard player selected card
		if(timer_1>0){timer_1--;}else{
		if(!player_card.playerTap){	
	ds_list_add(discard_deck,player_card);
	player_card.select_player=false;
	player_card.iBelong="discard";
	ds_list_delete(player_deck,player_card_index);
	audio_play_sound(send_card_sound,1,false);
	player_card.sendCardToDiscard=true;
	player_card.depth=-ds_list_size(discard_deck);
	player_card.devi=ds_list_size(discard_deck);
		}
	timer_1=room_speed*0.2;
	card_wait++;
			}
	}else if(card_wait==2 && lastTurn){
		//if there's a empty card in enemy's card, delete it
		if(!emptyClear){
		ds_list_delete(enemy_deck,enemy_card_index);
		emptyClear=true;
		}
			
		if(timer_1>0){timer_1--;}else{
		
			//discard enemy no use cards
			if(!enemy_card.enemyTap){	
		iAmOne=ds_list_size(enemy_deck)-1;
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
			}
		timer_1=room_speed*0.2;
		
		if(iAmOne==0){
			card_wait++;
			}
		}
	} else if(card_wait==3&& lastTurn){
		//discard player no use cards
	if(timer_1>0){timer_1--;}else{
		iAmOne=ds_list_size(player_deck)-1;
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
		
		if(iAmOne==0){
			card_wait++;
			}
	}
	}else if(card_wait==4&& lastTurn){
		//discard player tap cards
		if(ds_list_size(player_tap_deck)>0){
		var tapForDiscard=ds_list_find_value(player_tap_deck,0);
		ds_list_add(discard_deck,tapForDiscard);
		tapForDiscard.sendCardToPlayer=false;
		tapForDiscard.sendCardToTap=false;
		tapForDiscard.iBelong="discard";
		tapForDiscard.isReveal=true;
		tapForDiscard.sendCardToDiscard=true;
		tapForDiscard.image_angle=0;
		tapForDiscard.depth=-ds_list_size(discard_deck);
		tapForDiscard.devi=ds_list_size(discard_deck);
		ds_list_delete(player_tap_deck,0);
		player_tap=false;
		}
		//discard enemy tap cards
		if(ds_list_size(enemy_tap_deck)>0){
		var tapForDiscard=ds_list_find_value(enemy_tap_deck,0);
		ds_list_add(discard_deck,tapForDiscard);
		show_debug_message(ds_list_size(discard_deck));
		tapForDiscard.sendCardToEnemy=false;
		tapForDiscard.sendCardToTap=false;
		tapForDiscard.iBelong="discard";
		tapForDiscard.isReveal=true;
		tapForDiscard.sendCardToDiscard=true;
		tapForDiscard.image_angle=0;
		tapForDiscard.depth=-ds_list_size(discard_deck);
		tapForDiscard.devi=ds_list_size(discard_deck);
		ds_list_delete(enemy_tap_deck,0);
		enemy_tap=false;
		}
		if(!enemyLose){discard_finish=true;}
		else{
		
		while(ds_list_size(card_deck)!=0)
		{
			var cardDeckForDiscard=ds_list_find_value(card_deck,0);
			ds_list_add(discard_deck,cardDeckForDiscard);
			cardDeckForDiscard.sendCardToDeck=false;
			cardDeckForDiscard.sendCardToDiscard=true;
			cardDeckForDiscard.iBelong="discard";
			cardDeckForDiscard.isReveal=true;
			cardDeckForDiscard.depth=-ds_list_size(discard_deck);
			cardDeckForDiscard.devi=ds_list_size(discard_deck);
			ds_list_delete(card_deck,0);
		}
		discard_finish=true;
		
		}
		
		
		}
	 else{discard_finish=true;}
		
	
	
	if(discard_finish){
		emptyClear=false;
		card_wait=0;
		discard_finish=false;
		iAmJudge=false;
		player_card.playerTap=false;
		enemy_card.enemyTap=false;
	if(!lastTurn){
		rage=false;
	current_state=state_instruction.SpecialDealing;
	}else{
		rage=false;
		lastTurn=false;
		current_state=state_instruction.Reshuffle;}
	}
	break;
	
case state_instruction.SpecialDealing:

	if(!handGenerated)
	{
		if(gameRound==1)
		{
			hand1.appear=true;
			hand2.appear=true;
		}else if(gameRound==2)
		{
			hand0.appear=true;
			hand1.appear=true;
		}
		handGenerated=true;

	}
//enemy get cards
	enemy_card.printItsEffect=false;
	player_card.printItsEffect=false;
	if(!enemy_card_finish){
	if(timer_1>0){timer_1--;}else{
	var draw_card= ds_list_find_value(card_deck,0);
	ds_list_delete(enemy_deck,enemy_card_index);
	ds_list_insert(enemy_deck,enemy_card_index,draw_card);
	draw_card.iBelong="enemy";
	draw_card.code=enemy_card_index;
	draw_card.devi=enemy_card_index;
	draw_card.sendCardToDeck=false;
	audio_play_sound(send_card_sound,1,false);
	draw_card.sendCardToEnemy=true;
	ds_list_delete(card_deck,0);
	timer_1=room_speed*0.2;
	enemy_card_finish=true;
	}
	}
	
	if(ds_list_size(player_tap_deck)==0)
	{
		oneTimeOnly=false;
	}
	//player get cards
	if(enemy_card_finish && !player_card_finish){
		if(timer_1>0){timer_1--;}else{
	var draw_card= ds_list_find_value(card_deck,0);
	/*if(ds_list_size(player_tap_deck)!=0 &&!oneTimeOnly)
	{
			ds_list_delete(player_deck,player_card_index);
			oneTimeOnly=true;
	}*/

	ds_list_insert(player_deck,player_card_index,draw_card);
	draw_card.iBelong="player";
	draw_card.code=player_card_index;
	draw_card.devi=player_card_index;
	draw_card.sendCardToDeck=false;
	audio_play_sound(send_card_sound,1,false);
	draw_card.sendCardToPlayer=true;
	draw_card.isReveal=true;
	ds_list_delete(card_deck,0);
	timer_1=room_speed*0.2;
	player_card_finish=true;
	
	}
	}
	time_limit=0.5;
	
	if(enemy_card_finish && player_card_finish){current_state=state_instruction.Sleeping;}
	break;
	
case state_instruction.Reshuffle:
if(!send_finish){
if(timer_2>0){timer_2--;}else{
	var back_card_1=ds_list_find_value(discard_deck,littleCard);
	var back_card_2=ds_list_find_value(discard_deck,number-littleCard-1);
	back_card_1.isReveal=false;
	back_card_2.isReveal=false;
	audio_play_sound(send_card_sound,1,false);
	back_card_1.wonderful=true;
	back_card_1.depth=littleCard;
	back_card_1.sendCardToDiscard=false;
	back_card_2.wonderful=true;
	back_card_2.depth=littleCard;
	back_card_2.sendCardToDiscard=false;
	littleCard--;
	timer_2=room_speed*0.1;
	if(littleCard<(number/2)){
		littleCard=number-1;
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
		if(!enemyLose){current_state=state_instruction.Sleeping;}
		else{current_state=state_instruction.SelectCard;}
		}
	break;

	case state_instruction.Sleeping:
//wait some time for card sending
	timer++;
	if(timer>room_speed*time_limit){
		
	if(time_limit==0.5){current_state=state_instruction.Turn;}
	else {current_state=state_instruction.Dealing;}
	timer=0;
	}
	break;
	case state_instruction.SelectCard:
	if(!selectCardCreate){
	if(getCardNum>0){
	for(var i=0;i<3;i++)
	{
	newCard=instance_create_layer(0,0,"Instances",obj_add_card);
	newCard.devi=i;
	newCard.selecting=true;
	newCard.isReveal=true;
	newCard._type=addCardType[irandom(8)];
	
	}
	}else{
	instance_create_layer(800,800,"Instances",obj_nextButton);
	}
	selectCardCreate=true;
	}
	
	break;
}
