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
    alpha += 0.15;  
    scale += 0.15;  
    if (alpha >= 1) 
 {
        alpha = 1;  
        if (scale > 2) 
  {
   scale = 2;
  }
    }

    if (scale == 2) 
 {
       destory_timer --;
    }
}

if (destory_timer<=0) 
{
 destory_timer = destory_time;
 instance_destroy();
}