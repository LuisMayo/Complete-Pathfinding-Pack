///AI_delete_obstacles(object)
/*
It removes objects from the grid so they aren't avoided anymore
Argument0: object to avoid


*/
ds_list_delete(_obstacles,ds_list_find_index(_obstacles,argument0))
AI_recheck();
