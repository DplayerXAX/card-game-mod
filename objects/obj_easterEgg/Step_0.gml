/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 




if(shakeScreen){

	view_xport[0]=irandom(4)+1;
	view_yport[0]=irandom(4)+1;
	timer_shakeScreen--;
	if(timer_shakeScreen<0){
	view_xport[0]=0;
	view_yport[0]=0;
	show_debug_message("shaking!");
	timer_shakeScreen=room_speed*0.1;
	shakeScreen=false;
	}

}


if(shakeHarder){

	view_xport[0]=irandom(4)+100;
	view_yport[0]=irandom(4)+100;
	timer_shakeHarder--;
	if(timer_shakeHarder<room_speed*0.1&!halfShake){
	view_xport[0]-=(irandom(4)+100);
	view_yport[0]-=(irandom(4)+100);
	halfShake=true;
	}
	if(timer_shakeHarder<0){
	view_xport[0]=0;
	view_yport[0]=0;
	show_debug_message("shaking tough!");
	timer_shakeHarder=room_speed*0.1;
	shakeHarder=false;
	halfShake=false;
	}

}


