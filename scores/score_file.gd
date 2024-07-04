extends Node

class_name ScoreFile

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func save_file(content):
	var file = FileAccess.open("res://scores/score_data.txt", FileAccess.WRITE)
	file.store_string(content)

func load_file():
	var file = FileAccess.open("res://scores/score_data.txt", FileAccess.READ)
	var content = file.get_as_text()
	return content

func get_max(current):
	var highscore = int(load_file())
	if current > highscore:
		save_file(str(current))
