extends CharacterBody2D

@onready var animation_player = $AnimationPlayer

@export var jump_velocity : float = -550
# Get the gravity from the project settings to be synced with RigidBody nodes.
#var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
@export var gravity : int

var is_able_to_jump : bool = true
var game_end : bool
var fall_timer : float



func _physics_process(delta):
	# Add the gravity.
	apply_gravity(delta)
	# Handle jump.
	jump()

	
	fall_timer += delta
	if fall_timer > 0.65 and not game_end:
		animation_player.play("fall")
	
	move_and_slide()
	# Collision with floor and obstacles
	if is_on_floor() or is_on_ceiling() or is_on_wall():
		if not game_end:
			$GameOverSound.play()
		game_end = true
		Events.game_over.emit()
	
	

func apply_gravity(delta):
	if not is_on_floor():
		velocity.y += gravity * delta

func jump():
	if Input.is_action_just_pressed("ui_accept") and not game_end: 
		velocity.y = jump_velocity
		fall_timer = 0.0
		animation_player.play("RESET")

