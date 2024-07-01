extends Node2D

@onready var score_ui = $ScoreUI
@onready var game_over_ui = $GameOverUI
@onready var player = $Player

var score : int = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	Events.point_gained.connect(set_score)
	player.game_over.connect(game_over_pause)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func set_score():
	score += 1
	score_ui.display_score(score)

func game_over_pause():
	get_tree().paused = true
	score_ui.hide()
	game_over_ui.show()
	game_over_ui.display_final_score(score)
	
	
	
