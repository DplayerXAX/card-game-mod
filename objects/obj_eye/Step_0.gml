/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 




if(eyeWideOpen&&current_state=state.Turn&&player_card_decide=false){
	
for(var i=0;i<3;i++)
{
	var search_card=ds_list_find_value(enemy_deck,i);
	if(search_card.isReveal=true){
	player_HP=player_HP-8;
	rage=true;
	search_card.isReveal=false;
	}	
}

if(randomWaitTime>0){randomWaitTime--;}
else{
	eyeWideOpen=!eyeWideOpen;
	 randomWaitTime=room_speed*(irandom(4)+1)*0.1;
	}

}

if(!eyeWideOpen){
	sprite_index=spr_eye_close;
if(randomBlinkTime>0){randomBlinkTime--;}
else{
	eyeWideOpen=!eyeWideOpen;
	randomBlinkTime=room_speed*(irandom(4)+1)*0.4;

}

}else{
	if(rage=true){sprite_index=spr_eye_angry;}
	else{sprite_index=spr_eye_open;}
}

if(rage){
if(timer_happy>0){timer_happy--;}
else{
	rage=false;
	timer_happy=room_speed*0.4;
	}
}
