/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 
timer_countDown--;

if(timer_countDown<partialTime*0.9)
{
	countDown1.visible=false;
}
if(timer_countDown<partialTime*0.8)
{
	countDown10.visible=false;
}
if(timer_countDown<partialTime*0.7)
{
	countDown9.visible=false;
}
if(timer_countDown<partialTime*0.6)
{
	countDown8.visible=false;
}
if(timer_countDown<partialTime*0.5)
{
	countDown7.visible=false;
}
if(timer_countDown<partialTime*0.4)
{
	countDown6.visible=false;
}
if(timer_countDown<partialTime*0.3)
{
	countDown5.visible=false;
}
if(timer_countDown<partialTime*0.2)
{
	countDown4.visible=false;
}
if(timer_countDown<partialTime*0.1)
{
	countDown3.visible=false;
}
if(timer_countDown<0)
{
	countDown2.visible=false;
	timer_recount--;
	if(timer_recount<0)
	{
		timer_recount=room_speed*0.5;
		timer_countDown=room_speed*1;
		obj_countDown.visible=true;
	}
}