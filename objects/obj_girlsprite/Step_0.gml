/// @description Insert description here
// You can write your code in this editor
if(room = room_instruction_test)
{
	if(obj_deck_instruction.enemyLose)
	{
			need_to_lerp = true;
	}else
	{
		lerping = false;
		x=129;
		y=835;
		//x = lerp(x,129,0.05);
		//y = lerp(y,835,0.05);
		image_xscale = 1;
	}

	//x = lerp(x,1153,0.05);
	//y = lerp(y,835,0.05);
	//image_xscale = -1;
}

if(room = Room_play)
{
	if(obj_deck.enemyLose)
	{
		need_to_lerp = true;
		if(lerped = true)
		{
		lerped = false;
		}
	}
	else
	{
		lerping = false;
	//show_debug_message("Lerp back to win")
		x=129;
		y=835;
		//x = lerp(x,129,0.05);
		//y = lerp(y,835,0.05);
		lerped = true;
		image_xscale = 1;
	}
	
}

if(need_to_lerp&&!lerped)
{
	lerp_wait_timer--;
}
if(lerp_wait_timer<=0)
{
	//show_debug_message("Changing lerp now")
	if(!lerped)
	{
		lerping = true;
		lerped = true;
	}
	need_to_lerp = false;
}
if(lerping)
{
	
	x = lerp(x,1050,0.05);
	y = lerp(y,755,0.05);
	//show_debug_message("Lerp back to defeated")
	image_xscale = -1;
	lerp_wait_timer = lerp_wait_time;
}
if(x = 1050 and y = 755)
{
	lerping = false;
}
//show_debug_message("x is "+ string(x)+"y is "+string(y));