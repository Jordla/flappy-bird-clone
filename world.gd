extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	Events.game_over.connect(handle_game_over)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func handle_game_over():
	get_tree().paused = true
