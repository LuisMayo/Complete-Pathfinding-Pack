///AI_quickSet(x,y,speed)
/** Move your AI with Just One piece of code
argument0/1: Target x/y
argunment2: speed

Remember that you still have to flush when You have finished

*/
var a;
a=instance_nearest(x,y,AI_avoid)
AI_init(a.image_xscale*sprite_get_width(a.sprite_index ),a.image_yscale*sprite_get_height(a.sprite_index ),true)
AI_move_target(argument0,argument1,true,argument2)
