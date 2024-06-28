extends CanvasLayer

@onready var score_label = $ScoreCenterContainer/ScoreLabel


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func display_score(score : int):
	score_label.text = str(score)
	
