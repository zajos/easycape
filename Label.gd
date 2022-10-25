extends Label






# Called when the node enters the scene tree for the first time.
func _process(delta):
	
	self.text=str(get_parent().get_parent().get_parent().get_node("torchess").count)+"/15"
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
