/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 



randomize();
globalvar enemyIchooseToMeet;
enemyIchooseToMeet=ds_list_create();
timer_activating=room_speed*0.1;
activated=false;

player=instance_create_layer(500,500,"Instances",obj_player);
deck=instance_create_layer(400,400,"Instances",obj_deck_instruction);
obj_card.visible=false;

addCardType=["eye","heart","mouth","ETH","HTE","HTM","destroy","stealHeart","stealEye"];