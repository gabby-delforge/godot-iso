extends KinematicBody2D

var is_selected = false
var selected_material
onready var sprite = get_node("Sprite")

#const MOTION_SPEED = 200 # Pixels/second.
export (int) var speed = 200

var target = Vector2()
var velocity = Vector2()

func _ready():
	target = position
	self.input_pickable = true
	selected_material = load("res://shaders/selected.material")
	
func _input(ev):
	if ev and ev is InputEventMouseButton and ev.button_index == BUTTON_RIGHT and ev.is_pressed() and is_selected:
		target = get_global_mouse_position()
		velocity = position.direction_to(target) * speed
	
func _physics_process(_delta):
	if position.distance_to(target) < 5:
		velocity = Vector2.ZERO
	else:
		look_at(target)
		velocity = move_and_slide(velocity)
#	var motion = Vector2()
#	motion.x = Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
#	motion.y = Input.get_action_strength("move_down") - Input.get_action_strength("move_up")
#	motion.y /= 2
#	motion = motion.normalized() * MOTION_SPEED
#	#warning-ignore:return_value_discarded
#	move_and_slide(motion)
	pass
		#var isometric = world_to_map(position)
		#print('Isometric Position: ' + str(isometric))

func _process(delta):
	gamemanager.playerresources.food += 1 * delta

func on_select():
	is_selected = true
	sprite.set_material(selected_material)
	
func on_deselect():
	is_selected = false
	sprite.set_material(null)

	
