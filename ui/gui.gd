extends Control

@onready var score_ui = $ScoreUI
@onready var game_over_ui = $GameOverUI

var score : int = 0
var score_manager = ScoreFile.new()

# Called when the node enters the scene tree for the first time.
func _ready():
	Events.point_gained.connect(set_score)
	Events.game_over.connect(handle_game_over)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func set_score():
	score += 1
	score_ui.display_score(score)

func handle_game_over():
	score_ui.hide()
	game_over_ui.show()
	game_over_ui.display_current_score(score)
	score_manager.get_max(score)
	var highscore = int(score_manager.load_file())
	game_over_ui.display_best_score(highscore)
