/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 


if(current_state==state.Turn && select_player=false && player_card_decide=false && !isTap && iBelong="player"){
	if(!underInstruction){
	select_player=true;
	player_card_decide=true;
	}else{
	if(gameRound=0&&_type="heart")
	{
		select_player=true;
		player_card_decide=true;
	}
	else if(gameRound=1&&_type="eye")
	{
		select_player=true;
		player_card_decide=true;
	}
	else if(gameRound=2&&_type="mouth")
	{
		select_player=true;
		player_card_decide=true;
	}
	else if(gameRound>2){
		select_player=true;
		player_card_decide=true;
	
	}
	
	}

}

if(current_state==state.Turn && select_player=false && player_card_decide=false && (iBelong="enemy" || (iBelong="tap" && devi=1))){
	cheat++;
	isReveal=!isReveal;
}


