extends CharacterBody2D

var angular_accelaration = 0.5
var radius = 350
var dampening_factor = 0.09


var angle = 0
var angular_speed = 0

func _process(delta: float) -> void:
	if Input.is_action_pressed("ui_left"):
		angular_speed -= angular_accelaration
	if Input.is_action_pressed("ui_right"):
		angular_speed += angular_accelaration

	if angular_speed > 0:
		if angular_speed < dampening_factor:
			angular_speed = 0
		else:
			angular_speed -= angular_speed * dampening_factor
	elif angular_speed < 0:
		if angular_speed > -dampening_factor:
			angular_speed = 0
		else:
			angular_speed += -angular_speed * dampening_factor
		
	angle += angular_speed * delta

	if angle > 2*PI:
		angle -= 2*PI
	if angle < 0:
		angle += 2*PI

	rotation = angle
	position.y = sin(angle + PI/2) * radius
	position.x = cos(angle + PI/2) * radius
