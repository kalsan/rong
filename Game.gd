extends Node2D

var tile_scene = preload("res://Tile.tscn")

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	for i in range(15):
		var tile = tile_scene.instantiate()
		tile.global_position = Vector2(0, 0)
		add_child(tile)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
