extends Node2D

class_name Obstacle

@export var speed : float = 300
var velocity : Vector2 = Vector2.ZERO


# Called when the node enters the scene tree for the first time.
func _ready():
	transform.x *= -1 # Flip x vector
	velocity = transform.x * speed


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	position += velocity * delta
 

func _on_score_detector_body_exited(body):
	print("Score +1")


func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()


func _on_score_detector_body_entered(body):
	print("Score +1 (end)")
