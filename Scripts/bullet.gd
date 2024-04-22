extends CharacterBody2D

#var GRAVITY = 15
var SPEED = 25

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	move_bullet()
	
func move_bullet():
	#print("MOVER LA BALA")
	#velocity.y += GRAVITY
	velocity.x = -SPEED
	move_and_slide()
	


func _on_visible_on_screen_notifier_2d_screen_exited():
	print("Salio del viewport")
	queue_free()


func _on_bullet_2d_body_entered(body):
	if body.get_name() == "Player":
		print("Te toco la bala")
	#body.lose_life()
