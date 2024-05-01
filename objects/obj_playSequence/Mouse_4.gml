/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 


level++;
audio_play_sound(enemy_introduce,0,false);
obj_card.visible=false;
switch(ds_list_find_value(enemyIWillMeet,level))
{
case obj_hand:
	layer_sequence_create("Instances",650,550,enemyIntroduce_arm);
	break;
case obj_mouth:
	layer_sequence_create("Instances",650,550,enemyIntroduce_mouth);
	break;
case obj_heart:
	layer_sequence_create("Instances",650,550,enemyIntroduce_heart);
	break;
case obj_bones:
	layer_sequence_create("Instances",650,550,enemyIntroduce_skull);
	break;
case obj_eye_new:
	layer_sequence_create("Instances",650,550,enemyIntroduce_eye);
	break;
	
	

}
instance_create_layer(1000,900,"UI",obj_nextButton);
audio_stop_sound(upgrading_depressed);
instance_destroy();


ds_list_find_value(enemyIWillMeet,level)