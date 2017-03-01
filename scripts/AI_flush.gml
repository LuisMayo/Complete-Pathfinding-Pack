///AI_flush()
//it frees the memory used by the AI
mp_grid_destroy(_grid)
path_delete(_path)
ds_list_destroy(_obstacles)
ds_grid_destroy(_priorityGrid)
