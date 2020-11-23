extends KinematicBody2D

onready var worldCollider = get_node("WorldCollider")
onready var selectCollider = get_node("SelectArea/SelectCollider")

const MOTION_SPEED = 160 # Pixels/second.

func _ready():
	self.input_pickable = true
	
func _physics_process(_delta):
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
