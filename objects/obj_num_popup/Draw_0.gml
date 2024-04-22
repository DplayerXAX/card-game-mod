/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(alpha);
draw_set_color(myColor);  // Set text color
draw_set_font(fnt_damage);  // Set the font (create this if needed)
draw_text(x, y, string(damage_amount));
draw_set_alpha(1);  // Reset alpha to default
draw_set_color(c_white);