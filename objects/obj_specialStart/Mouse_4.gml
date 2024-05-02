/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

if(obj_selectEnemy.selectbox1.isSelect)
{
	ds_list_add(enemyIchooseToMeet,obj_hand);
}else
{
	for(var i=0;i<4;i++)
	{
		create_card(addCardType[irandom(8)],0);
		number++;
		selectCard=ds_list_find_value(card_deck,ds_list_size(card_deck)-1);
		selectCard.devi=ds_list_size(card_deck)-1;
		selectCard.depth=selectCard.devi;
		selectCard.sendCardToDeck=true;
	}
}
if(obj_selectEnemy.selectbox2.isSelect)
{
	ds_list_add(enemyIchooseToMeet,obj_mouth);
}else
{
	for(var i=0;i<4;i++)
	{
		create_card(addCardType[irandom(8)],0);
		number++;
		selectCard=ds_list_find_value(card_deck,ds_list_size(card_deck)-1);
		selectCard.devi=ds_list_size(card_deck)-1;
		selectCard.depth=selectCard.devi;
		selectCard.sendCardToDeck=true;
	}
}
if(obj_selectEnemy.selectbox3.isSelect)
{
	ds_list_add(enemyIchooseToMeet,obj_heart);
}else
{
	for(var i=0;i<4;i++)
	{
		create_card(addCardType[irandom(8)],0);
		number++;
		selectCard=ds_list_find_value(card_deck,ds_list_size(card_deck)-1);
		selectCard.devi=ds_list_size(card_deck)-1;
		selectCard.depth=selectCard.devi;
		selectCard.sendCardToDeck=true;
	}
}
if(obj_selectEnemy.selectbox4.isSelect)
{
	ds_list_add(enemyIchooseToMeet,obj_bones);
}else
{
	for(var i=0;i<4;i++)
	{
		create_card(addCardType[irandom(8)],0);
		number++;
		selectCard=ds_list_find_value(card_deck,ds_list_size(card_deck)-1);
		selectCard.devi=ds_list_size(card_deck)-1;
		selectCard.depth=selectCard.devi;
		selectCard.sendCardToDeck=true;
	}
}
		ds_list_add(enemyIchooseToMeet,obj_eye_new);
		visible=false;
audio_stop_all();

//instance_create_layer(500,500,"Instances",obj_player);
enemyIWillMeet=enemyIchooseToMeet;
obj_card.visible=true;
obj_girlsprite.visible=true;
room_goto(Room_play);
instance_destroy(obj_specialStart);









