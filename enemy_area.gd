extends Area2D
var a=0
func _process(delta):
	if overlaps_body(get_parent().get_parent().get_node("Sprite"))==true:
		a=1
	else:
		a=0	



