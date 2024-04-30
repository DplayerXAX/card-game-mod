/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_pressed(ord("O"))) {
    visible = true;
}

if (visible) 
{
    alpha += 0.05;  
    scale += 0.05;  
    if (alpha >= 1) 
 {
        alpha = 1;  
        if (scale > 1) 
  {
   scale = 1;
  }
    }

    if (scale == 1) 
 {
       destory_timer --;
    }
}

if (destory_timer<=0) 
{
 destory_timer = destory_time;
 instance_destroy();
}