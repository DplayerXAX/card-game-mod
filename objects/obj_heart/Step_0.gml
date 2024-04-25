/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

// Inherit the parent event
event_inherited();

if(current_state==state.Discard && obj_deck.iAmJudge)
{
if(!abilityTrigger)

{
	enemy_HP=100;
	abilityTrigger=true;
}


}

if(current_state==state.Dealing||current_state==state.SpecialDealing)
{
	abilityTrigger=false;
}