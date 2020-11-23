extends KinematicBody2D



const MOTION_SPEED = 160 # Pixels/second.

func _physics_process(_delta):
	var motion = Vector2()
	motion.x = Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
	motion.y = Input.get_action_strength("move_down") - Input.get_action_strength("move_up")
	motion.y /= 2
	motion = motion.normalized() * MOTION_SPEED
	#warning-ignore:return_value_discarded
	move_and_slide(motion)

func _input(ev):
	if ev is InputEventKey and ev.scancode == KEY_K:
		var position = self.position
		print('Pixel Position: ' + str(position))
		#var isometric = world_to_map(position)
		#print('Isometric Position: ' + str(isometric))

func _process(delta):
	gamemanager.playerresources.food += 1 * delta
