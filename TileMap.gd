extends TileMap

	
func _process(delta):
	if Input.is_action_pressed("click"):
		replace_tile(17,18)

				
func replace_tile(id1,id2):
	var all_id = get_used_cells_by_id(id1)
	for z in all_id:
		set_cell(z.x,z.y,id2)
