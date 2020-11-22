extends Node2D

onready var troll = get_node("Troll")
onready var floormap = get_node("Floor")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var position = troll.position
	print(position)
	var isometric = floormap.world_to_map(position)
	print(isometric)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
