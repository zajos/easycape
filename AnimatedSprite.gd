extends AnimatedSprite
onready var enemy=get_parent().get_parent().get_node("enemy")
onready var enemy2=get_parent().get_parent().get_node("enemy2")
var heart=0
func _process(delta):
	if get_viewport_rect().has_point(enemy.position) or get_viewport_rect().has_point(enemy2.position):
		heart+=1
