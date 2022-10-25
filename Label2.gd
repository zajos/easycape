extends Label

onready var sprite=get_parent().get_parent().get_parent().get_node("Sprite")

func _process(delta):
	self.text=str(sprite.heart)+"/3"

