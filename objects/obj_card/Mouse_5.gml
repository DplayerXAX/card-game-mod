/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 


if(current_state==state.Turn && select_enemy=false && player_card_decide=false && iBelong="enemy"){
	doIt=false;
	if(!underInstruction){doIt=true;}
	else if(gameRound>=4){doIt=true;}
	if(doIt)
	{
	cheat++;
	if(eyeWideOpen){
	player_HP=player_HP-8;
	rage=true;
	attackEffect=true;
	shakeHarder=true;
	paintItRed=true;
	shakeScreen=true;
	}else{	
 for(var i=0;i<3;i++){
	 var exchange_enemy=ds_list_find_value(enemy_deck,i);
	 var exchange_player=ds_list_find_value(player_deck,i);
 if(exchange_enemy.code==code){
	 
	 ds_list_insert(player_deck,i,exchange_enemy);
	 ds_list_insert(enemy_deck,i,exchange_player);

	 exchange_enemy.sendCardToEnemy=false;
	 exchange_enemy.y=700;
	 exchange_player.sendCardToPlayer=false;
	 exchange_player.sendCardToEnemy=true;
	 exchange_player.isReveal=false;
	 exchange_player.iBelong="enemy";
	 exchange_enemy.isReveal=true;
	 exchange_enemy.iBelong="player";
	 ds_list_delete(player_deck,i+1);
	 ds_list_delete(enemy_deck,i+1);
		break; 
			}
 
		}
	}
	}
	
}
if(current_state==state.Turn && select_enemy=false && player_card_decide=false && iBelong="enemy"){
	doIt=false;
	if(!underInstruction){doIt=true;}
	else if(gameRound>=4){doIt=true;}
	if(doIt)
	{
	cheat++;
	if(eyeWideOpen){
		if(room = room_instruction_test)
		{
			InstructionCheat_find = true;
			show_debug_message("Steal find");
			obj_eye_instruction.instruction_text = "Don't try to cheat under my eyes";
			gameRound += 100;
		}
	player_HP=player_HP-8;
	rage=true;
	attackEffect=true;
	shakeHarder=true;
	paintItRed=true;
	shakeScreen=true;
	}else{	
 for(var i=0;i<3;i++){
	 var exchange_enemy=ds_list_find_value(enemy_deck,i);
	 var exchange_player=ds_list_find_value(player_deck,i);
 if(exchange_enemy.code==code){
	 
	 ds_list_insert(player_deck,i,exchange_enemy);
	 ds_list_insert(enemy_deck,i,exchange_player);

	 exchange_enemy.sendCardToEnemy=false;
	 exchange_enemy.y=700;
	 exchange_player.sendCardToPlayer=false;
	 exchange_player.sendCardToEnemy=true;
	 exchange_player.isReveal=false;
	 exchange_player.iBelong="enemy";
	 exchange_enemy.isReveal=true;
	 exchange_enemy.iBelong="player";
	 ds_list_delete(player_deck,i+1);
	 ds_list_delete(enemy_deck,i+1);
		break; 
			}
 
		}
	}
	}
	
}




