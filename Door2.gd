extends Sprite


func _input(event):
	
	if event.is_action_pressed("click"):
		if is_pixel_opaque(get_local_mouse_position()):
			
			get_parent().get_node("Door").value=2
			
	
		
			
	
func _process(delta):
	set_process_input(false)
