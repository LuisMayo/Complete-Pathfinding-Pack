///AI_init(width,height,precise)
/**
    @syntax    AI_init(width,height,prec)

    @param     [Integer]      width      width of the grid
    @param     [Integer]      height     height of the grid

    @desc      This script inits the requiered variables to maker the AI work.
    Be carrefull: he larger the values, the faster and less precisse it will be
*/


/**
argument0: width of the grid
argument1: height of the grid. The larger the values, the faster and less precisse it will be

I recomend your project default wall size

argument2 (true-false): to use perfect-pixel collision(slower but more precise) or not.(Recommended when not geometric shapes)
*/

//Conf: configuration setting that are constant on all your game
debug=false //Remember to set this to false when you are gonna to publish your game



//show_debug_message("Init...")
precise=argument2
width=argument0
height=argument1


//We init al the memory structures we need
_grid=mp_grid_create(0,0,ceil(room_width/argument0),ceil(room_height/argument1), argument0,argument1)
_path=path_add()
_obstacles=ds_list_create()
mp_grid_add_instances(_grid,AI_avoid,precise)//We fill the grid with the objects we have to avoid
show_debug_message("Ok")
//This stuff is for the priority targets
_priorityGrid=ds_grid_create(width,height)
