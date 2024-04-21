extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	get_into_ray_cast()
	
func get_into_ray_cast():
	#print("Ingreso: ", $RayCast2D.is_colliding())
	if $RayCast2D.is_colliding():
		print("Ingreso al rayo")
		$AnimationPlayer.play("fire")
	else:
		$AnimationPlayer.play("Idle")
