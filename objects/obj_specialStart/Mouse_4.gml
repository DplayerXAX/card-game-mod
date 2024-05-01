/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

if(obj_selectEnemy.selectbox1.isSelect)
{
	ds_list_add(enemyIchooseToMeet,obj_hand);
}
if(obj_selectEnemy.selectbox2.isSelect)
{
	ds_list_add(enemyIchooseToMeet,obj_mouth);
}
if(obj_selectEnemy.selectbox3.isSelect)
{
	ds_list_add(enemyIchooseToMeet,obj_heart);
}
if(obj_selectEnemy.selectbox4.isSelect)
{
	ds_list_add(enemyIchooseToMeet,obj_bones);
}
		ds_list_add(enemyIchooseToMeet,obj_eye_new);
		visible=false;
audio_stop_all();

//instance_create_layer(500,500,"Instances",obj_player);
enemyIWillMeet=enemyIchooseToMeet;
obj_card.visible=true;
room_goto(Room_play);
instance_destroy(obj_specialStart);

