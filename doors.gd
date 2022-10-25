extends Node

var random=RandomNumberGenerator.new()
var say=0
func _ready():
	random.randomize()
	say=random.randi_range(1,6)
	
func _process(delta):
	if $Door.value==say and get_parent().get_node("torchess").count==15:
		get_tree().change_scene("res://game_over.tscn")
