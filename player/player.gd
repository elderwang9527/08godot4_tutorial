extends CharacterBody2D

@export var speed: int = 100

func handleInput():
	velocity = Vector2.ZERO # The player's movement vector.
	if Input.is_action_pressed("ui_right"):
		velocity.x += speed
	if Input.is_action_pressed("ui_left"):
		velocity.x -= speed
	if Input.is_action_pressed("ui_down"):
		velocity.y += speed
	if Input.is_action_pressed("move_up"):
		velocity.y -= speed
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
	else:
		pass

func _physics_process(_delta):
	handleInput()
	move_and_slide()
