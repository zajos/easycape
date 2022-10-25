extends Node2D

onready var nav2d := $Navigation2D
onready var line := $Line2D
var firstPoint := Vector2.ZERO
var secondPoint := Vector2.ZERO
onready var nav2d2:=$LevelNavigation
onready var line2 :=$Line2D2
var b=0
var firstPoint_en
var arrPath:PoolVector2Array

		
	
		
	
func _physics_process(delta: float) -> void:

	
	
	firstPoint = $Sprite.position
	line.points = []
	if Input.is_action_pressed("click") :
		secondPoint = get_global_mouse_position()
		arrPath  = nav2d.get_simple_path(firstPoint, secondPoint, true)
		$Sprite.global_position = arrPath[0]
		$Sprite.path = arrPath
		$Sprite.index = 0
		line.points = arrPath
func _process(delta):	
	if $enemy/enemy_area.a==1 and $Area2D.a==0:
		$enemy.a=1
	elif $Area2D.a==1:
		$enemy.a=3
	elif $enemy/enemy_area.a==0 and $Area2D.a==0 and $enemy.c==1:
		$enemy.a=1
		
	line2.points = []
	if $enemy.a==1 :
		firstPoint_en = $enemy.position
		var secondPoint_en = $Sprite.position
		arrPath = nav2d2.get_simple_path(firstPoint_en, secondPoint_en, true)
		$enemy.global_position = arrPath[0]
		$enemy.path = arrPath
		$enemy.index = 0
		line2.points = arrPath
	elif $enemy.a==0 :
		firstPoint_en = $Path2D/PathFollow2D.position
		b=1
		var secondPoint_en=$Path2D/PathFollow2D.position
		var arrPath : PoolVector2Array = nav2d2.get_simple_path(firstPoint_en, secondPoint_en, true)
		$enemy.global_position = arrPath[0]
		$enemy.path = arrPath
		$enemy.index = 0
		line2.points = arrPath
		
	elif $enemy.a==3 :
		if $enemy.position==$Path2D/PathFollow2D.position:
			firstPoint_en = $Path2D/PathFollow2D.position
			b=1
		elif $enemy.position!=$Path2D/PathFollow2D.position:
			firstPoint_en=$enemy.position
			b=0
	
		var secondPoint_en=$Path2D/PathFollow2D.position
		var arrPath : PoolVector2Array = nav2d2.get_simple_path(firstPoint_en, secondPoint_en, true)
		$enemy.global_position = arrPath[0]
		$enemy.path = arrPath
		$enemy.index = 0
		line2.points = arrPath
	if $enemy2/enemy_area.a==1 and $Area2D.a==0:
		$enemy2.a=1
	elif $Area2D.a==1:
		$enemy2.a=3
	elif $enemy2/enemy_area.a==0 and $Area2D.a==0 and $enemy2.c==1:
		$enemy2.a=1
		
	line2.points = []
	if $enemy2.a==1 :
		firstPoint_en = $enemy2.position
		var secondPoint_en = $Sprite.position
		arrPath = nav2d2.get_simple_path(firstPoint_en, secondPoint_en, true)
		$enemy2.global_position = arrPath[0]
		$enemy2.path = arrPath
		$enemy2.index = 0
		line2.points = arrPath
	elif $enemy2.a==0 :
		firstPoint_en = $Path2D/PathFollow2D2.position
		b=1
		var secondPoint_en=$Path2D/PathFollow2D2.position
		var arrPath : PoolVector2Array = nav2d2.get_simple_path(firstPoint_en, secondPoint_en, true)
		$enemy2.global_position = arrPath[0]
		$enemy2.path = arrPath
		$enemy2.index = 0
		line2.points = arrPath
		
	elif $enemy2.a==3 :
		if $enemy2.position==$Path2D/PathFollow2D2.position:
			firstPoint_en = $Path2D/PathFollow2D2.position
			b=1
		elif $enemy2.position!=$Path2D/PathFollow2D2.position:
			firstPoint_en=$enemy2.position
			b=0
	
		var secondPoint_en=$Path2D/PathFollow2D2.position
		var arrPath : PoolVector2Array = nav2d2.get_simple_path(firstPoint_en, secondPoint_en, true)
		$enemy2.global_position = arrPath[0]
		$enemy2.path = arrPath
		$enemy2.index = 0
		line2.points = arrPath


	
	
		

		
		
		
		
	
		

			
	





	
	
	
	








	









	





func _on_StaticBody2D_mouse_entered():
	set_physics_process(false)


func _on_StaticBody2D_mouse_exited():
	set_physics_process(true)
