/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

countDown1=instance_create_layer(850,50,"Instances",obj_countDown);
countDown2=instance_create_layer(850,50,"Instances",obj_countDown);
countDown3=instance_create_layer(850,50,"Instances",obj_countDown);
countDown4=instance_create_layer(850,50,"Instances",obj_countDown);
countDown5=instance_create_layer(850,50,"Instances",obj_countDown);
countDown6=instance_create_layer(850,50,"Instances",obj_countDown);
countDown7=instance_create_layer(850,50,"Instances",obj_countDown);
countDown8=instance_create_layer(850,50,"Instances",obj_countDown);
countDown9=instance_create_layer(850,50,"Instances",obj_countDown);
countDown10=instance_create_layer(850,50,"Instances",obj_countDown);

countDown1.image_angle=0;
countDown2.image_angle=36;
countDown3.image_angle=72;
countDown4.image_angle=108;
countDown5.image_angle=144;
countDown6.image_angle=180;
countDown7.image_angle=216;
countDown8.image_angle=252;
countDown9.image_angle=288;
countDown10.image_angle=324;

partialTime=room_speed*1;
timer_countDown=partialTime;
timer_recount=room_speed*0.5;