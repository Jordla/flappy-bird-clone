extends CanvasLayer

@onready var current_score_label = $ScoresContainer/CurrentScoreContainer/NinePatchRect/TextContainer/Label

@onready var best_score_label = $ScoresContainer/BestScoreContainer/NinePatchRect/ScoreContainer/Label


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func display_current_score(score):
	current_score_label.text = str(score)

func display_best_score(score):
	best_score_label.text = str(score)
