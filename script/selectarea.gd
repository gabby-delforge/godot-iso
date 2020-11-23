extends Area2D

onready var troll = get_parent()
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
	# Change troll select flag to true
	if troll.is_selected:
		troll.is_selected = false
		troll.sprite.set_material(null)
	else:
		troll.is_selected = true
		troll.sprite.set_material(troll.selected_material)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
