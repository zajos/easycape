extends Sprite

var count=0
func _input(event):
	
	if event.is_action_pressed("click"):
		if get_rect().has_point(get_local_mouse_position()):
			
			if not $AnimationPlayer.is_playing():
				$AnimationPlayer.play("burn")
				$torch2/AnimationPlayer.play("burn")
				count+=1
				$Light2D.show()
				$torch2/Light2D2.show()
	
	
		
			
	
func _process(delta):
	set_process_input(false)
	


	
	


