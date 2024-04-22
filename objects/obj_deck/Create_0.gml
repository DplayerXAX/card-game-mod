/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
randomize();

globalvar type_index;
globalvar count;
globalvar cheat;
count=0;
cheat=0;

turnCount=0;
type_index=3;
all_type=["eye","heart","mouth"];
special_type=["ETH","HTE","HTM","destroy"];
steal_type=["stealHeart","stealEye"];
timer=0;
timer_1=room_speed*0.2;
timer_2=room_speed*0.6;
timer_3=room_speed*0.6;
timer_4=room_speed*0.4;
timer_5=room_speed*0.6;
timer_bonus=room_speed*0.6;

time_limit=3;
globalvar timer_killing;
timer_killing=room_speed*4;

enemy_card_finish=false;
player_card_finish=false;
discard_finish=false;
shuffle_finish=false;
shuffle_again=false;
send_finish=false;
card_wait=0;
card_wait_again=0;
iAmOne=1;
iAmJudge=false;
dontFlyIt=false;
lastTurn= false;
foundItPlayer=false;
foundItEnemy=false;
emptyClear=false;
addCardType=["eye","heart","mouth","ETH","HTE","HTM","destroy","stealHeart","stealEye"];
globalvar player_score;
globalvar enemy_score;


player_score=0;
enemy_score=0;

globalvar player_card_decide;
globalvar enemy_card_decide;
globalvar player_card_type;
globalvar player_tap;
globalvar enemy_tap;

player_card_decide=false;
enemy_card_decide=false;
player_tap=false;
enemy_tap=false;

globalvar player_HP;
globalvar player_eyes;
globalvar player_hearts;


player_HP=100;
player_eyes=0;
player_hearts=0;


globalvar enemy_card;
globalvar enemy_card_index;
globalvar player_card;
globalvar player_card_index;
var rest_card;
enum state{
Start,
Dealing,
SpecialDealing,
Turn,
Discard,
Reshuffle,
Sleeping,
SelectCard
}
globalvar current_state;

current_state=state.Start;

globalvar enemy_deck;
globalvar player_deck;
globalvar player_tap_deck;
globalvar enemy_tap_deck;

player_deck=ds_list_create();
enemy_deck=ds_list_create();
player_tap_deck=ds_list_create();
enemy_tap_deck=ds_list_create();

discard_deck=ds_list_create();
enemyLose=false;
globalvar specialDiscard;

specialDiscard=false;

globalvar underInstruction;
underInstruction=false;


globalvar gameRound;
globalvar selectCardCreate;
globalvar getCardNum;
getCardNum=4;
gameRound=0;
selectCardCreate=false;


var emptyPlayer;
var emptyEnemy;