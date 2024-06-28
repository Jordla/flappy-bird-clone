extends Node2D

@onready var score_ui = $ScoreUI

var score : int = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	Events.point_gained.connect(set_score)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func set_score():
	score += 1
	score_ui.display_score(score)
