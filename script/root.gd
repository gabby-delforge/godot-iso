extends Node2D

# Variables for selecting multiple units with mouse
var dragging = false	# Dragging?
var selected = [] 		# Selected units 
var drag_start = Vector2.ZERO # Position where drag begins
var select_rect = RectangleShape2D.new()	# Collision shape for drag box

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Selecting units 
func _unhandled_input(ev):
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
		draw_rect(Rect2(drag_start, get_global_mouse_position() - drag_start), Color(.5,.5,.5), false)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
