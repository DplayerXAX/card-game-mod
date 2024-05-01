/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

// Inherit the parent event
event_inherited();
var card_result="";
switch(eatType){
case "eye":
	card_result= "Strength card";
	break;
case "heart":
	card_result= "Healing card";
	break;
case "mouth":
	card_result= "Bit card";
	break;
case "ETH":
	card_result= "Flush card";
	break;
case "HTE":
	card_result= "Excitement card"
	break;
case "HTM":
	card_result= "Hungry bit card";
	break;
case "destroy":
	card_result= "Stab card";
	break;
case "stealHeart":
	card_result= "Steal heal";
	break;
case "stealEye":
	card_result= "Steal ATP";
	break;
case "eat":
	card_result= "Eaten card";
	break;
}

if(!obj_deck.enemyLose)
{
	if(eatType!="eat"){
		draw_text(300,30,"In mouth's stomach, a "+card_result+" is having its effect.");
	}else
	{
		draw_text(300,30,"The mouth is starving.");
	}
	draw_text(870,400,"Eat next card in "+string(3-roundCount)+" round(s).");
}