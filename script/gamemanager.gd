extends Node2D

onready var troll = get_node("dungeon/Troll")
onready var floormap = get_node("dungeon/Floor")
#onready var camera = get_node("Camera2D")
onready var interface = get_node("interface")
onready var label = get_node("interface/Label")

# Declare member variables here. Examples:
var resources = {
	'food': 0,
	'water': 0,
	'wood': 0,
	'cash': 0
}



# Called when the node enters the scene tree for the first time.
func _ready():
	var position = troll.position
	print(position)
	var isometric = floormap.world_to_map(position)
	print(isometric)
	pass # Replace with function body.

func _process(delta):
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
