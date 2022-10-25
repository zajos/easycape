extends PathFollow2D


var random=RandomNumberGenerator.new()
var say = 0
var move_direction=0
var speed=150
func _ready():
	random.randomize()
	say=random.randf_range(18932.53/2,18932.53)
	set_offset(say)
var pos=Vector2.ZERO




# Called when the node enters the scene tree for the first time.
func _physics_process(delta):
	var prepos = get_global_position()
	set_offset(get_offset()+speed*delta)
	pos = get_global_position()
	move_direction=rad2deg(pos.angle_to_point(prepos))
