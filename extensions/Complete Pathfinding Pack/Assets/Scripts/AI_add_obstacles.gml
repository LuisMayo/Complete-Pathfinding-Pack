///AI_add_obstacles(object)
//argument0 will be the instances to avoid
/*
Note that if an object is going to be ALWAYS avoided by your AI you should make him a child of AI_avoid
*/
mp_grid_add_instances(_grid,argument0,precise)
ds_list_add(_obstacles,argument0)
