///AI_add_raw_obstacle(x,y)
/*
Allows you to enter a custom point where AI cannot pass
argument:0 x coordinate, argument1: y coordinate

*/
instance_create(argument0,argument1,AI_avoid)
mp_grid_add_instances(_grid,AI_avoid,precise)
