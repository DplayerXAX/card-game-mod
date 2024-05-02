/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

selectbox1=instance_create_layer(80,350,"Instances",obj_select);
selectbox2=instance_create_layer(350,350,"Instances",obj_select);
selectbox3=instance_create_layer(670,350,"Instances",obj_select);
selectbox4=instance_create_layer(980,350,"Instances",obj_select);
//selectbox5=instance_create_layer(520,820,"Instances",obj_select);

girl=instance_create_layer(128,864,"Instances",obj_girlsprite);
girl.visible=false;


audio_play_sound(select_music,0,true);