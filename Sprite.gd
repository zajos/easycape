extends KinematicBody2D

var speed:=200
var path : PoolVector2Array
var index := 0
var moving:=false
var vel : Vector2
var destination=Vector2()
var move_direction
var anim_mode="idle"
var heart=3
var random=RandomNumberGenerator.new()


func _ready():
	
	
	random.randomize()
	var say=random.randi_range(1,3)
	position=get_parent().get_node("Position2D"+str(say)).position
	
	
func _physics_process(delta: float) -> void:
	
	if path :
		
		
		
		
		
		
		if index < path.size()-1:
			vel = path[index+1] - position
			
			
			
			if Input.is_action_pressed("click"):
				destination=get_global_mouse_position()
			
			if are_these_close_to_each_other(global_position, path[index+1]):
				index += 1
		else:
			vel = Vector2.ZERO
			moving=false
		vel = move_and_slide(vel.normalized()*speed)
		if vel!=Vector2.ZERO:
			moving=true
	
	
		
		
		


func are_these_close_to_each_other(a,b) -> bool:
	var res := false
	var mar := 10
	if (abs(abs(a.x) - abs(b.x)) < mar) and (abs(abs(a.y) - abs(b.y)) < mar):
		res = true
	return res
func _process(delta):
	move_direction=rad2deg(destination.angle_to_point(position))
	
		
	var animdirect="4"
	
	var animation
	if move_direction<=15 and move_direction>=-15:
		animdirect="0"
	elif move_direction<=60 and move_direction>=15:
		animdirect="1"
	elif move_direction<=120 and move_direction>=60:
		animdirect="2"
	elif move_direction<=165 and move_direction>=120:
		animdirect="3"
	elif move_direction>=-60 and move_direction<=-15:
		animdirect="7"
	elif move_direction>=-120 and move_direction<=-60:
		animdirect="6"
	elif move_direction>=-165 and move_direction<=-120:
		animdirect="5"
	elif move_direction<=-165 and move_direction>=165:
		animdirect="4"
	if moving == true:
		anim_mode="walk"
	else:
		anim_mode="idle"
	animation=anim_mode+animdirect
	get_node("AnimatedSprite").play(animation)


	

	




	



	
















func _on_torch_area_body_entered(body):
	if body.name=="Sprite":
		get_parent().get_node("torchess/torches/torch").set_process(false)
		get_parent().get_node("torchess/torches/torch").set_process_input(true)
		get_parent().get_node("torchess/torches/torch/torch2").set_process(false)
		get_parent().get_node("torchess/torches/torch/torch2").set_process_input(true)
		get_parent().get_node("torchess/torches2/torch").set_process(false)
		get_parent().get_node("torchess/torches2/torch").set_process_input(true)
		get_parent().get_node("torchess/torches2/torch/torch2").set_process(false)
		get_parent().get_node("torchess/torches2/torch/torch2").set_process_input(true)
		get_parent().get_node("torchess/torches3/torch").set_process(false)
		get_parent().get_node("torchess/torches3/torch").set_process_input(true)
		get_parent().get_node("torchess/torches3/torch/torch2").set_process(false)
		get_parent().get_node("torchess/torches3/torch/torch2").set_process_input(true)
		get_parent().get_node("torchess/torches4/torch").set_process(false)
		get_parent().get_node("torchess/torches4/torch").set_process_input(true)
		get_parent().get_node("torchess/torches4/torch/torch2").set_process(false)
		get_parent().get_node("torchess/torches4/torch/torch2").set_process_input(true)
		get_parent().get_node("torchess/torches5/torch").set_process(false)
		get_parent().get_node("torchess/torches5/torch").set_process_input(true)
		get_parent().get_node("torchess/torches5/torch/torch2").set_process(false)
		get_parent().get_node("torchess/torches5/torch/torch2").set_process_input(true)
		get_parent().get_node("torchess/torches6/torch").set_process(false)
		get_parent().get_node("torchess/torches6/torch").set_process_input(true)
		get_parent().get_node("torchess/torches6/torch/torch2").set_process(false)
		get_parent().get_node("torchess/torches6/torch/torch2").set_process_input(true)
		get_parent().get_node("torchess/torches7/torch").set_process(false)
		get_parent().get_node("torchess/torches7/torch").set_process_input(true)
		get_parent().get_node("torchess/torches7/torch/torch2").set_process(false)
		get_parent().get_node("torchess/torches7/torch/torch2").set_process_input(true)
		get_parent().get_node("torchess/torches8/torch").set_process(false)
		get_parent().get_node("torchess/torches8/torch").set_process_input(true)
		get_parent().get_node("torchess/torches8/torch/torch2").set_process(false)
		get_parent().get_node("torchess/torches8/torch/torch2").set_process_input(true)
		get_parent().get_node("torchess/torches9/torch").set_process(false)
		get_parent().get_node("torchess/torches9/torch").set_process_input(true)
		get_parent().get_node("torchess/torches9/torch/torch2").set_process(false)
		get_parent().get_node("torchess/torches9/torch/torch2").set_process_input(true)
		get_parent().get_node("torchess/torches10/torch").set_process(false)
		get_parent().get_node("torchess/torches10/torch").set_process_input(true)
		get_parent().get_node("torchess/torches10/torch/torch2").set_process(false)
		get_parent().get_node("torchess/torches10/torch/torch2").set_process_input(true)
		get_parent().get_node("torchess/torches11/torch").set_process(false)
		get_parent().get_node("torchess/torches11/torch").set_process_input(true)
		get_parent().get_node("torchess/torches11/torch/torch2").set_process(false)
		get_parent().get_node("torchess/torches11/torch/torch2").set_process_input(true)
		get_parent().get_node("torchess/torches12/torch").set_process(false)
		get_parent().get_node("torchess/torches12/torch").set_process_input(true)
		get_parent().get_node("torchess/torches12/torch/torch2").set_process(false)
		get_parent().get_node("torchess/torches12/torch/torch2").set_process_input(true)
		get_parent().get_node("torchess/torches13/torch").set_process(false)
		get_parent().get_node("torchess/torches13/torch").set_process_input(true)
		get_parent().get_node("torchess/torches13/torch/torch2").set_process(false)
		get_parent().get_node("torchess/torches13/torch/torch2").set_process_input(true)
		get_parent().get_node("torchess/torches14/torch").set_process(false)
		get_parent().get_node("torchess/torches14/torch").set_process_input(true)
		get_parent().get_node("torchess/torches14/torch/torch2").set_process(false)
		get_parent().get_node("torchess/torches14/torch/torch2").set_process_input(true)
		get_parent().get_node("torchess/torches15/torch").set_process(false)
		get_parent().get_node("torchess/torches15/torch").set_process_input(true)
		get_parent().get_node("torchess/torches15/torch/torch2").set_process(false)
		get_parent().get_node("torchess/torches15/torch/torch2").set_process_input(true)





func _on_door_area_body_entered(body):
	if body.name=="Sprite":
		get_parent().get_node("doors/Door").set_process(false)
		get_parent().get_node("doors/Door").set_process_input(true)
		get_parent().get_node("doors/Door2").set_process(false)
		get_parent().get_node("doors/Door2").set_process_input(true)
		get_parent().get_node("doors/Door3").set_process(false)
		get_parent().get_node("doors/Door3").set_process_input(true)
		get_parent().get_node("doors/Door4").set_process(false)
		get_parent().get_node("doors/Door4").set_process_input(true)
		get_parent().get_node("doors/Door5").set_process(false)
		get_parent().get_node("doors/Door5").set_process_input(true)
		get_parent().get_node("doors/Door6").set_process(false)
		get_parent().get_node("doors/Door6").set_process_input(true)


func _on_torch_area_body_exited(body):
	if body.name=="Sprite":
		get_parent().get_node("torchess/torches/torch").set_process(true)
		get_parent().get_node("torchess/torches/torch").set_process_input(false)
		get_parent().get_node("torchess/torches/torch/torch2").set_process(true)
		get_parent().get_node("torchess/torches/torch/torch2").set_process_input(false)
		get_parent().get_node("torchess/torches2/torch").set_process(true)
		get_parent().get_node("torchess/torches2/torch").set_process_input(false)
		get_parent().get_node("torchess/torches2/torch/torch2").set_process(true)
		get_parent().get_node("torchess/torches2/torch/torch2").set_process_input(false)
		get_parent().get_node("torchess/torches3/torch").set_process(true)
		get_parent().get_node("torchess/torches3/torch").set_process_input(false)
		get_parent().get_node("torchess/torches3/torch/torch2").set_process(true)
		get_parent().get_node("torchess/torches3/torch/torch2").set_process_input(false)
		get_parent().get_node("torchess/torches4/torch").set_process(true)
		get_parent().get_node("torchess/torches4/torch").set_process_input(false)
		get_parent().get_node("torchess/torches4/torch/torch2").set_process(true)
		get_parent().get_node("torchess/torches4/torch/torch2").set_process_input(false)
		get_parent().get_node("torchess/torches5/torch").set_process(true)
		get_parent().get_node("torchess/torches5/torch").set_process_input(false)
		get_parent().get_node("torchess/torches5/torch/torch2").set_process(true)
		get_parent().get_node("torchess/torches5/torch/torch2").set_process_input(false)
		get_parent().get_node("torchess/torches6/torch").set_process(true)
		get_parent().get_node("torchess/torches6/torch").set_process_input(false)
		get_parent().get_node("torchess/torches6/torch/torch2").set_process(true)
		get_parent().get_node("torchess/torches6/torch/torch2").set_process_input(false)
		get_parent().get_node("torchess/torches7/torch").set_process(true)
		get_parent().get_node("torchess/torches7/torch").set_process_input(false)
		get_parent().get_node("torchess/torches7/torch/torch2").set_process(true)
		get_parent().get_node("torchess/torches7/torch/torch2").set_process_input(false)
		get_parent().get_node("torchess/torches8/torch").set_process(true)
		get_parent().get_node("torchess/torches8/torch").set_process_input(false)
		get_parent().get_node("torchess/torches8/torch/torch2").set_process(true)
		get_parent().get_node("torchess/torches8/torch/torch2").set_process_input(false)
		get_parent().get_node("torchess/torches9/torch").set_process(true)
		get_parent().get_node("torchess/torches9/torch").set_process_input(false)
		get_parent().get_node("torchess/torches9/torch/torch2").set_process(true)
		get_parent().get_node("torchess/torches9/torch/torch2").set_process_input(false)
		get_parent().get_node("torchess/torches10/torch").set_process(true)
		get_parent().get_node("torchess/torches10/torch").set_process_input(false)
		get_parent().get_node("torchess/torches10/torch/torch2").set_process(true)
		get_parent().get_node("torchess/torches10/torch/torch2").set_process_input(false)
		get_parent().get_node("torchess/torches11/torch").set_process(true)
		get_parent().get_node("torchess/torches11/torch").set_process_input(false)
		get_parent().get_node("torchess/torches11/torch/torch2").set_process(true)
		get_parent().get_node("torchess/torches11/torch/torch2").set_process_input(false)
		get_parent().get_node("torchess/torches12/torch").set_process(true)
		get_parent().get_node("torchess/torches12/torch").set_process_input(false)
		get_parent().get_node("torchess/torches12/torch/torch2").set_process(true)
		get_parent().get_node("torchess/torches12/torch/torch2").set_process_input(false)
		get_parent().get_node("torchess/torches13/torch").set_process(true)
		get_parent().get_node("torchess/torches13/torch").set_process_input(false)
		get_parent().get_node("torchess/torches13/torch/torch2").set_process(true)
		get_parent().get_node("torchess/torches13/torch/torch2").set_process_input(false)
		get_parent().get_node("torchess/torches14/torch").set_process(true)
		get_parent().get_node("torchess/torches14/torch").set_process_input(false)
		get_parent().get_node("torchess/torches14/torch/torch2").set_process(true)
		get_parent().get_node("torchess/torches14/torch/torch2").set_process_input(false)
		get_parent().get_node("torchess/torches15/torch").set_process(true)
		get_parent().get_node("torchess/torches15/torch").set_process_input(false)
		get_parent().get_node("torchess/torches15/torch/torch2").set_process(true)
		get_parent().get_node("torchess/torches15/torch/torch2").set_process_input(false)


func _on_door_area_body_exited(body):
	if body.name=="Sprite":
		get_parent().get_node("doors/Door").set_process(true)
		get_parent().get_node("doors/Door").set_process_input(false)
		get_parent().get_node("doors/Door2").set_process(true)
		get_parent().get_node("doors/Door2").set_process_input(false)
		get_parent().get_node("doors/Door3").set_process(true)
		get_parent().get_node("doors/Door3").set_process_input(false)
		get_parent().get_node("doors/Door4").set_process(true)
		get_parent().get_node("doors/Door4").set_process_input(false)
		get_parent().get_node("doors/Door5").set_process(true)
		get_parent().get_node("doors/Door5").set_process_input(false)
		get_parent().get_node("doors/Door6").set_process(true)
		get_parent().get_node("doors/Door6").set_process_input(false)



 





func _on_player_area_body_entered(body):
	if body.name=="enemy"or body.name=="enemy2":
		heart-=1
		if heart==2:
			random.randomize()
			var say=random.randi_range(1,3)
			position=get_parent().get_node("Position2D"+str(say)).position
		elif heart==1:
			random.randomize()
			var say=random.randi_range(1,3)
			position=get_parent().get_node("Position2D"+str(say)).position
		elif heart==0:
			get_tree().change_scene("res://game_over_lose.tscn")
