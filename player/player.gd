extends CharacterBody2D

@export var speed: int = 100
# 05节新增代码
@onready var animations = $AnimationPlayer

# 05节新增代码
func update_animation():
	if velocity.length() == 0:
		if animations.is_playing():
			animations.stop()
	else:
		var direction = "down"
		if velocity.x < 0: direction = "left"
		elif velocity.x > 0: direction = "right"
		elif velocity.y < 0: direction = "up"
		animations.play("walk_" + direction)
		

func handleInput():
	velocity = Vector2.ZERO
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
# 05节新增代码
	update_animation()
