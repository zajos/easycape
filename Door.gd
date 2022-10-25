extends Sprite


var value=0
func _input(event):
	
	if event.is_action_pressed("click"):
		if is_pixel_opaque(get_local_mouse_position()):
			
			value=1
	
	
		
			
	
func _process(delta):
	set_process_input(false)
