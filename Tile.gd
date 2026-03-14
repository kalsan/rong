extends RigidBody2D


# Declare member variables here. 
var FORCE_STRENGTH = 10


# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var center =  get_viewport_rect().size / 2.0
	var direction = (center - position).normalized()
	apply_central_impulse(direction * FORCE_STRENGTH)
