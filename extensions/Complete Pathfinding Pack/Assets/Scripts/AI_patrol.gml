///AI_patrol(x,y,allowDiagonal,speed)
/*
set a target and start patroling from current point to the target considering the obstacles
argument0 and argument1, coordinates of the target
argument2, set to true if you wanna allow diagonal movements, false if not
argument3: speed
*/


show_debug_message("Path...")
if(!mp_grid_path(_grid,_path,x,y,argument0,argument1,argument2)){
    show_debug_message("Path could not be computed")
    return false;
}else{
show_debug_message("Ok")
    path_start(_path,argument3,path_action_reverse,true)
    show_debug_message("Started")
    return true;
}
