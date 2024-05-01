/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

draw_set_font(font_resultTitle);
draw_text_ext(50,200,"You win,by CHEATING!", 50,800);

draw_set_font(font_eyes_insturction);
draw_text_ext(280,660,textArray[progression], 50,380);

draw_text(80,950,"Press 'space' to continue");

if(progression==1)
{
	obj_speaker.sprite_index=spr_girlHead;
}else
{
	obj_speaker.sprite_index=spr_boyHead;
}