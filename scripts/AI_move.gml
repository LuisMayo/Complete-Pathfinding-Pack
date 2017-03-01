///AI_move(speed,allowDiagonal)
/* Moves to the target which has the highest priority
argument0: speeed
argument1: boolean: True to allow diagonals, false to not allow
returns true if movement has started, false if it's not
*/
var maxi, xtarget, ytarget, success;
maxi=ds_grid_get_max(_priorityGrid,0,0,ds_grid_width(_priorityGrid),ds_grid_height(_priorityGrid))
if(maxi>0){
    xtarget=ds_grid_value_x(_priorityGrid,0,0,ds_grid_width(_priorityGrid),ds_grid_height(_priorityGrid),maxi)
    ytarget=ds_grid_value_y(_priorityGrid,0,0,ds_grid_width(_priorityGrid),ds_grid_height(_priorityGrid),maxi)
    success= AI_move_target(xtarget*width,ytarget*height,argument1,argument0)
    ds_grid_set(_priorityGrid,xtarget,ytarget,0);
}else{
    show_debug_message("No targets on list!");
    success=false;
}
return success;
