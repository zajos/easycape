extends Area2D

var a=0
func _process(delta):
	if overlaps_body(get_parent().get_node("Sprite"))==true :
		a=1
		get_parent().get_node("enemy").c=0
		get_parent().get_node("enemy2").c=0
	else: 
		a=0
