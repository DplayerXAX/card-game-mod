/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

globalvar card_deck;
globalvar deck_type;
globalvar level;
globalvar enemyIWillMeet;

enemyIWillMeet=ds_list_create();
ds_list_add(enemyIWillMeet,obj_eye_instruction);
ds_list_add(enemyIWillMeet,obj_hand);
ds_list_add(enemyIWillMeet,obj_mouth);
ds_list_add(enemyIWillMeet,obj_heart);
ds_list_add(enemyIWillMeet,obj_bones);
ds_list_add(enemyIWillMeet,obj_eye_new);
level=0;

globalvar number;
number=0;
globalvar littleCard;
littleCard=0;

card_deck=ds_list_create();
//The initial deck
	for(var i=0;i<6;i++){
		create_card(all_type[i%3],i);
		number++;
		}
	for(var i=0;i<12;i++){
		create_card(all_type[i%3],i);
		number++;
		}
	littleCard=number-1;