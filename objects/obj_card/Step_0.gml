/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 


if(isReveal){
if(type="eye"){sprite_index=spr_card_eye;}
else if(type="heart"){sprite_index=spr_card_heart;}
else if(type="mouth"){sprite_index=spr_card_mouth;}
else if(type="ETH"){sprite_index=spr_card_eyeToHeart;}
else if(type="HTE"){sprite_index=spr_card_heartToEye;}
else if(type="HTM"){sprite_index=spr_card_heartToMouth;}
else if(type="destroy"){sprite_index=spr_card_destroy;}
else if(type="stealHeart"){sprite_index=spr_card_stealHeart;}
else if(type="stealEye"){sprite_index=spr_card_stealEye;}
}else{sprite_index=spr_card_back;}

if(sendCardToDeck){
	
		_x=x;
		_y=y;
		x=lerp(_x,10,0.1);
		y=lerp(_y,350+devi*7,0.1);

}

if(wonderful){
	
		_x=x;
		_y=y;
		x=lerp(_x,20,0.1);
		y=lerp(_y,511,0.1);

}

if(sendCardToEnemy){
	
		_x=x;
		_y=y;
		x=lerp(_x,180+devi*200,0.1);
		y=lerp(_y,70,0.1);

}


if(sendCardToPlayer){
	
		_x=x;
		_y=y;
		x=lerp(_x,180+devi*200,0.1);
		y=lerp(_y,700,0.1);
	
}

if(sendCardToDiscard){
	_x=x;
	_y=y;
	x=lerp(_x,750,0.1);
	y=lerp(_y,500-devi*7,0.1);
}

if(select_enemy){
	_x=x;
	_y=y;
	x=lerp(_x,380,0.1);
	y=lerp(_y,280,0.1);
}
if(select_player){
	_x=x;
	_y=y;
	x=lerp(_x,380,0.1);
	y=lerp(_y,490,0.1);
	
}

if(sendCardToTap){}

