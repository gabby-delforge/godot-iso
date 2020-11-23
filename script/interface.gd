extends Control

onready var label = get_node("Label")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	label.text = str(gamemanager.playerresources.food)
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	label.text = "food: " + str(gamemanager.playerresources.food)
	pass
