extends Camera2D

# Hierarchy error: node_to_follow is [Object:null], not Troll.
onready var node_to_follow = get_parent().get_node("dungeon/Troll")

# Called when the node enters the scene tree for the first time.
func _ready():
	print(node_to_follow)
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position = node_to_follow.position
