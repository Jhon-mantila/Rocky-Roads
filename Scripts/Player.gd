extends CharacterBody2D

const MOVE_SPEED = 25
const MAX_SPEED = 50
const JUMP = -300
const GRAVITY = 15

@onready var sprite = $Sprite2D
@onready var animationPlayer = $AnimationPlayer

func _physics_process(delta):
	velocity.y += GRAVITY
	var friction = false
	
	if Input.is_action_pressed("ui_right"):
		sprite.flip_h = true
		animationPlayer.play("Walk")
		velocity.x = min(velocity.x + MOVE_SPEED, MAX_SPEED)
		
	elif Input.is_action_pressed("ui_left"):
		sprite.flip_h = false
		animationPlayer.play("Walk")
		velocity.x = max(velocity.x - MOVE_SPEED, -MAX_SPEED)
	else:
		animationPlayer.play("Idle")
		friction = true
	
	if is_on_floor():
		if Input.is_action_pressed("ui_accept"):
			velocity.y = JUMP
		if friction:
			velocity.x = lerp(velocity.x, 0.0, 0.5)
	else:
		if friction:
			velocity.x = lerp(velocity.x, 0.0, 0.01)
		
	move_and_slide()

func add_coin():
	var canvasLayer = get_parent().find_child("CanvasLayer")
	canvasLayer.handleCoinCollected()



