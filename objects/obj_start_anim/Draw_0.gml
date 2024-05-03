var play_anim = video_draw();
var playing = play_anim[0];

if (playing == 0)
{
	var surf = play_anim[1];
	
	if !surface_exists(surf) 
	{
		surface_create(1300, 1100)
		show_debug_message("yes");
		
	} else {
		draw_surface(surf, 0, 0);
	}
}

draw_text(20,1050,"Press 'space' to skip");