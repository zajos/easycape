extends KinematicBody2D

var speed:=100
var path : PoolVector2Array
var index := 0
var moving:=false
var vel : Vector2
var destination=Vector2()
onready var path_follow=get_parent().get_node("Path2D/PathFollow2D")
var a=0
var direct=0
onready var player=get_parent().get_node("Sprite")
var move_direction=0
var c=0
	

func _physics_process(delta: float) -> void:
	if a==1:
		speed=190
	elif a==0:
		speed=150
	elif a==3:
		speed=150

	
	if path :
		
		
		
		
		
		
		if index < path.size()-1:
			vel = path[index+1] - position
			
			
			
			
			
			if are_these_close_to_each_other(global_position, path[index+1]):
				index += 1
		else:
			vel = Vector2.ZERO
			
		vel = move_and_slide(vel.normalized()*speed)
		direct=rad2deg(vel.angle())
		
func are_these_close_to_each_other(a,b) -> bool:
	var res := false
	var mar := 10
	if (abs(abs(a.x) - abs(b.x)) < mar) and (abs(abs(a.y) - abs(b.y)) < mar):
		res = true
	return res
		
		
		








		

		
		
		
		
		
		
		
func _process(delta):
	
		
			
	$AnimatedSprite.flip_h=true
	$AnimatedSprite2.flip_h=true
	$AnimatedSprite.play("side")
	$AnimatedSprite2.play("side")
	if a==1:
		move_direction=rad2deg(player.position.angle_to_point(position))
	elif a==0 and get_parent().b == 0:
		move_direction=rad2deg(path_follow.position.angle_to_point(position))
	elif a==0 and get_parent().b == 1:
		move_direction=get_parent().get_node("Path2D/PathFollow2D").move_direction
	elif a==3 and get_parent().b==0:
		move_direction=rad2deg(path_follow.position.angle_to_point(position))
	if move_direction<=15 and move_direction>=-15:
		$AnimatedSprite.flip_h=false
		$AnimatedSprite2.flip_h=false
		$AnimatedSprite.play("side")
		$AnimatedSprite2.play("side")
	elif move_direction<=60 and move_direction>=15:
		$AnimatedSprite.flip_h=true
		$AnimatedSprite2.flip_h=true
		$AnimatedSprite.play("SW")
		$AnimatedSprite2.play("SW")
	elif move_direction<=120 and move_direction>=60:
		$AnimatedSprite.flip_h=false
		$AnimatedSprite2.flip_h=false
		$AnimatedSprite.play("S")
		$AnimatedSprite2.play("S")
	elif move_direction<=165 and move_direction>=120:
		$AnimatedSprite.flip_h=false
		$AnimatedSprite2.flip_h=false
		$AnimatedSprite.play("SW")
		$AnimatedSprite2.play("SW")
	elif move_direction>=-60 and move_direction<=-15:
		$AnimatedSprite.flip_h=false
		$AnimatedSprite2.flip_h=false
		$AnimatedSprite.play("NE")
		$AnimatedSprite2.play("none")
	elif move_direction>=-120 and move_direction<=-60:
		$AnimatedSprite.flip_h=false
		$AnimatedSprite2.flip_h=false
		$AnimatedSprite.play("N")
		$AnimatedSprite2.play("none")
	elif move_direction>=-165 and move_direction<=-120:
		$AnimatedSprite.flip_h=true
		$AnimatedSprite2.flip_h=true
		$AnimatedSprite.play("NE")
		$AnimatedSprite2.play("none")
	elif move_direction<=-165 and move_direction>=165:
		$AnimatedSprite.flip_h=true
		$AnimatedSprite2.flip_h=true
		$AnimatedSprite.play("side")
		$AnimatedSprite2.play("side")
	
	
	





	


	


	





		



		







func _on_enemy_area_body_exited(body):
	if body.name=="Sprite":
		c=1


