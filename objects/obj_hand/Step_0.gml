/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

// Inherit the parent event
event_inherited();

if(current_state==state.Dealing||current_state==state.SpecialDealing)
{

if(!handGenerated)
{
	num=irandom(2);
	randomAngle=irandom(1);
	if(randomAngle==0)
	{
		randomAngle=-1;
	}
	if(num==0)
	{
	hand0.appear=true;
	hand0.image_xscale=randomAngle;
	}else if(num==1)
	{
	hand1.appear=true;
	hand1.image_xscale=randomAngle;
	}else if(num==2)
	{
	hand2.appear=true;
	hand2.image_xscale=randomAngle;
	}
	handGenerated=true;
}

}else if(current_state==state.Discard)
{
handGenerated=false;
hand0.appear=false;
hand1.appear=false;
hand2.appear=false;

}