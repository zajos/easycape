extends KinematicBody2D



# Declare member variables here. Examples:
# var a = 2
var speed=200
var vel=Vector2.ZERO

# Called when the node enters the scene tree for the first time.
func _physics_process(delta):
	var to_player=(get_parent().get_parent().get_parent().get_node("Sprite/AnimatedSprite").position-position).normalized()
	vel=to_player*speed
	move_and_slide(vel*delta)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
