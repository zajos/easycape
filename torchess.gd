extends Node
onready var torch1=$torches/torch
onready var torch2=$torches2/torch
onready var torch3=$torches3/torch
onready var torch4=$torches4/torch
onready var torch5=$torches5/torch
onready var torch6=$torches6/torch
onready var torch7=$torches7/torch
onready var torch8=$torches8/torch
onready var torch9=$torches9/torch
onready var torch10=$torches10/torch
onready var torch11=$torches11/torch
onready var torch12=$torches12/torch
onready var torch13=$torches13/torch
onready var torch14=$torches14/torch
onready var torch15=$torches15/torch
var count=0
func _process(delta):
	count=torch1.count+torch2.count+torch3.count+torch4.count+torch5.count+torch6.count+torch7.count+torch8.count+torch9.count+torch10.count+torch11.count+torch12.count+torch13.count+torch14.count+torch15.count
	
		
