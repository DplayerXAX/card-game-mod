/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

_type="nothing";
_type="heart";
sendCardToDeck=false;
sendCardToPlayer=false;
sendCardToEnemy=false;
sendCardToDiscard=false;
sendCardToTap=false;
strNotice="";
noticeText=false;

code=0;
flyMyCard=false;
iBelong="deck";
wonderful=false;
select_enemy=false;
select_player=false;
paintItRed=false;
printItsEffect=false;
devi=0;
var _x,_y;
isReveal=true;//set reveal = true;
isTap=false;
playerTap=false;
enemyTap=false;
tapCount=0;

timer_exchanging=room_speed*1;
timer_paintRed=room_speed*0.2;
timer_text=0;

//all of the following should be added to a instruction manager
globalvar player_HP;
player_HP = 10;
globalvar player_hearts;
player_hearts = 5;//set 5 for the first healing.