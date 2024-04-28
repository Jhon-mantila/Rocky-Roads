extends CharacterBody2D

var GRAVITY = 10
var SPEED = 25
var moving_left = true

func _ready():
	$AnimationPlayer.play("Walk")
	#print("Collider 2: ", $RayCast2D2.is_colliding())
	
func _process(delta):
	move_charater()
	turn()
	
func move_charater():
	velocity.y += GRAVITY
	
	if moving_left:
		velocity.x = -SPEED
	else:
		velocity.x = SPEED
	
	move_and_slide()

func turn():
	if  not $RayCast2D.is_colliding():
		#print("Entro al turn+++")
		#|| $RayCast2D2.is_colliding()
		moving_left = !moving_left
		scale.x = -scale.x

		
func _on_area_2d_body_entered(body):
	print(body.get_name())
	if body.get_name() == "Player":
		body.lose_life(position.x)
