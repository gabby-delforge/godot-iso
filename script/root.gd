extends Node2D

var selection = []
onready var dungeon = $dungeon

# Called when the node enters the scene tree for the first time.
func _ready():
	for child in dungeon.get_children():
		print(child.is_unit)
	pass

func _process(delta):
	pass
