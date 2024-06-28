extends CanvasLayer

@onready var final_score_label = $CenterContainer/VBoxContainer/CenterContainer/FinalScoreLabel


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func display_final_score(score):
	final_score_label.text = "Your final score was: " + str(score)
