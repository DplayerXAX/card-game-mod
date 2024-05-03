/// @description Insert description here
// You can write your code in this editor
if (room = Room_play and obj_deck.enemyLose = true) {
    visible = true;
}
if (room = room_instruction_test and obj_deck_instruction.enemyLose = true) {
    visible = true;
}

if (visible) 
{
    //alpha += 0.07;  
    scale -= 0.1;  
    if (image_alpha >= 1) 
 {
        image_alpha = 1;  
        if (scale < 1.7) 
  {
   scale = 1.7;
  }
    }

    if (scale <= 1.7) 
 {
       destory_timer --;
    }
}

if (destory_timer<=0) 
{
 destory_timer = destory_time;
 instance_destroy();
}