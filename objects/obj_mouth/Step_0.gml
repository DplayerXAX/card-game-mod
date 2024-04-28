/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

// Inherit the parent event
event_inherited();

if(current_state==state.Discard)
{
	if(!oneTimeEachRound)
	{
		roundCount++;
		if(roundCount==2)
		{
			eatType=player_card._type;
			player_card._type="eat";
			roundCount=0;
		}
		oneTimeEachRound=true;
		decide_effect(eatType,1);
	}
	
}

if(current_state==state.Turn)
{
	oneTimeEachRound=false;
}
