extends CharacterBody2D

var angle = 0
var angular_speed = 0
var max_angular_speed = 5
var angular_accelaration = 1
var angular_speed_decay = 1
var radius = 350


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var direction = 0
	if Input.is_action_pressed("ui_left"):
		if angular_speed > -max_angular_speed:
			angular_speed -= angular_accelaration
	if Input.is_action_pressed("ui_right"):
		if angular_speed < max_angular_speed:
			angular_speed += angular_accelaration
	
	# if angular_speed > 0:
	# 	angular_speed -= angular_speed_decay
	# elif angular_speed < 0:
	# 	angular_speed += angular_speed_decay
		
	angle += angular_speed * delta
		
	if angle > 2*PI:
		angle -= 2*PI
	if angle < 0:
		angle += 2*PI

	rotation = angle
	position.y = sin(angle + PI/2) * radius
	position.x = cos(angle + PI/2) * radius
