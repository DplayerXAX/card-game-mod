/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
randomize();

globalvar type_index;
globalvar count;
globalvar cheat;
playSound=false;
count=0;
cheat=0;
turnCount=0;


type_index=3;
globalvar all_type;
globalvar special_type;
globalvar steal_type;
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
oneTimeOnly=false;
enemyLose=false;

addCardType=["eye","heart","mouth","ETH","HTE","HTM","destroy","stealHeart","stealEye"];

globalvar player_score;
globalvar enemy_score;
globalvar cardChoosed;

player_score=0;
enemy_score=0;
cardChoosed=false;

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
globalvar enemy_HP;
globalvar enemy_eyes;
globalvar enemy_hearts;
globalvar underInstruction;
globalvar getCardNum;

getCardNum=4;
underInstruction=true;
player_HP=50;
player_eyes=3;
player_hearts=5;
enemy_HP=50;
enemy_eyes=0;
enemy_hearts=0;
handGenerated=false;
globalvar enemy_card;
globalvar enemy_card_index;
globalvar player_card;
globalvar player_card_index;
var rest_card;
enum state_instruction{
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

current_state=state_instruction.Start;

globalvar enemy_deck;
globalvar player_deck;
globalvar player_tap_deck;
globalvar enemy_tap_deck;

player_deck=ds_list_create();
enemy_deck=ds_list_create();
player_tap_deck=ds_list_create();
enemy_tap_deck=ds_list_create();

instruction_card_deck=ds_list_create();
discard_deck=ds_list_create();

globalvar specialDiscard;

specialDiscard=false;

var emptyPlayer;
var emptyEnemy;

//new variables

//track how many rounds player plays
globalvar gameRound;
globalvar selectCardCreate;
gameRound=0;
bonus=0;
selectCardCreate=false;

winCreated=false;
timer_win=room_speed*1;
var win;