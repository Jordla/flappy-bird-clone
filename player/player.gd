extends CharacterBody2D

const JUMP_VELOCITY : float = -550
# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept"): 
		velocity.y = JUMP_VELOCITY

	move_and_slide()
	
	if is_on_floor():
		queue_free()
