extends Node2D

var tile_scene = preload("res://Tile.tscn")

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	# Multiplayer
	Lobby.player_loaded.rpc_id(1) # Tell the server that this peer has loaded.

	for i in range(15):
		var tile = tile_scene.instantiate()
		tile.global_position = Vector2(0, 0)
		add_child(tile, true)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


# Called only on the server.
func start_game():
	# All peers are ready to receive RPCs in this scene.
	pass
