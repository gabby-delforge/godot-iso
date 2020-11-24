extends Control

# Update resource labels
onready var food_label = get_node("HBoxContainer/Food label")
onready var wood_label = get_node("HBoxContainer/Wood label")
onready var num_selected_label = get_node("HBoxContainer/NumberSelected label")

# Drag to select units
var dragging = false	# Is the player dragging?
var selected = [] 		# Selected units 
var drag_start = Vector2.ZERO # Position where drag begins
var select_rect = RectangleShape2D.new()	# Collision shape for drag box

# Called when the node enters the scene tree for the first time.
func _ready():
	food_label.text = "food: " + str(gamemanager.playerresources.food)
	wood_label.text = "wood: " + str(gamemanager.playerresources.wood)
	num_selected_label.text = "selected: " + str(selected.size())	
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	food_label.text = "food: " + str(round(gamemanager.playerresources.food))
	wood_label.text = "wood: " + str(gamemanager.playerresources.wood)
	num_selected_label.text = "selected: " + str(selected.size())	
	pass
	
	
# Selecting units 
func _input(ev):
	if ev is InputEventMouseButton and ev.button_index == BUTTON_LEFT:
		if ev.pressed:
			# Start drag if no units selected
			if selected.size() == 0:
				dragging = true
				drag_start = ev.position
		# If button released while dragging
		elif dragging:
			dragging = false
			update()
	if ev is InputEventMouseMotion and dragging:
		update()
	if ev is InputEventKey and ev.scancode == KEY_K:
		print(get_global_mouse_position())

func _draw():
	if dragging:
		draw_rect(Rect2(drag_start, get_viewport().get_mouse_position() - drag_start), Color(.5,.5,.5), false)
