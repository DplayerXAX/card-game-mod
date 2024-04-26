/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 


level++;
obj_card.visible=false;
switch(level)
{
case 1:
	layer_sequence_create("Instances",650,550,enemyIntroduce_arm);
	break;
case 2:
	layer_sequence_create("Instances",650,550,enemyIntroduce_mouth);
	break;
case 3:
	layer_sequence_create("Instances",650,550,enemyIntroduce_heart);
	break;
case 4:
	layer_sequence_create("Instances",650,550,enemyIntroduce_skull);
	break;
case 5:
	layer_sequence_create("Instances",650,550,enemyIntroduce_eye);
	break;
	
	

}
instance_create_layer(800,800,"UI",obj_nextButton);
audio_stop_all();
instance_destroy();


