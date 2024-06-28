extends Node2D
@onready var spawn_timer = $SpawnTimer

@export var obstacle_array : Array[PackedScene]
var rng = RandomNumberGenerator.new()


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_spawn_timer_timeout():
	var random_int = rng.randi_range(0, 2)
	var new_obstacle = obstacle_array[random_int]
	add_child(new_obstacle.instantiate())
	
