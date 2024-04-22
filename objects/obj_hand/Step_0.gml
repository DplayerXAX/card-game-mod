/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

// Inherit the parent event
event_inherited();

if(current_state==state.Dealing||current_state==state.SpecialDealing)
{

if(!handGenerated)
{
	hand=instance_create_layer(230+irandom(2)*200,700,"UI",obj_hand_musk);
	handGenerated=true;
}


}else if(current_state==state.Discard)
{
handGenerated=false;
instance_destroy(obj_hand_musk);

}