///AI_keepMoving(speed,allowDiagonals)
/*
argument0: speeed
argument1: boolean: True to allow diagonals, false to not allow
It will tell the AI to move to the next target if it have reached the latest one
Should be called from the step event(maybe end step would be the most optimal)
*/
if(AI_hasReached()){
    AI_move(argument0,argument1);
}
