extends RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	set_axis_velocity(Vector2(100,-100))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node) -> void:
	if body.name.begins_with("Tile"):
		$CollisionAudio.play()
	else:
		$BounceAudio.play()
