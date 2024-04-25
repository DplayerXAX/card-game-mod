/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 




if(current_state==state.Turn && player_card_decide=false &&!player_tap && iBelong="player"){
	if(!underInstruction){
	isTap=true;
	player_tap=true;
	player_card_index=devi;
	var tapCard=ds_list_find_value(player_deck,devi);
	ds_list_add(player_tap_deck,tapCard);
	tapCard.iBelong="tap";
	ds_list_delete(player_deck,devi);
	//ds_list_insert(player_deck,player_card_index,obj_deck.emptyPlayer);
	devi=0;
	sendCardToPlayer=false;
	player_card_decide=true;
	select_player=true;
	playerTap=true;
	}else if(gameRound>=3){
	isTap=true;
	player_tap=true;
	player_card_index=devi;
	var tapCard=ds_list_find_value(player_deck,devi);
	ds_list_add(player_tap_deck,tapCard);
	tapCard.iBelong="tap";
	ds_list_delete(player_deck,devi);
	//ds_list_insert(player_deck,player_card_index,obj_deck_instruction.emptyPlayer);
	devi=0;
	sendCardToPlayer=false;
	player_card_decide=true;
	select_player=true;
	playerTap=true;
	instruction_tap = true;
	}

}







