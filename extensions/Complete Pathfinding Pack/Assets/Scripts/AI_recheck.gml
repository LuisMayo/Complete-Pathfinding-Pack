///AI_recheck()
/*
This will check all instances to avoid to see if they have moved/deleted
Note that you should recalculate path after this
*/
mp_grid_clear_all(_grid)
for(i=0;i<ds_list_size(_obstacles);i++){
    mp_grid_add_instances(_grid,ds_list_find_value(_grid,i),precise)
}
mp_grid_add_instances(_grid,AI_avoid,precise)
