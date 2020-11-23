extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
func _input_event(viewport, ev, shape_idx):
	if ev and ev is InputEventMouseButton and ev.button_index == BUTTON_LEFT and ev.is_pressed():
		self.on_click()

func on_click():
	print("CLICK")
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
