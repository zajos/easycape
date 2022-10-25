extends Sprite

onready var torch=get_parent().get_parent().get_node("torch")
func _input(event):
	
	if event.is_action_pressed("click"):
		if get_rect().has_point(get_local_mouse_position()):
			
			if not $AnimationPlayer.is_playing():
				$AnimationPlayer.play("burn")
				get_parent().get_node("AnimationPlayer").play("burn")
				torch.count+=1
				$Light2D2.show()
				get_parent().get_node("Light2D").show()
	
		
func _process(delta):
	set_process_input(false)
