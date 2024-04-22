extends Node2D

var bullet_scene = preload("res://Scenes/bullet.tscn")

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
		fire_bullet()
		$AnimationPlayer.play("fire")
		
	else:
		$AnimationPlayer.play("Idle")


func fire_bullet():
		var bullet_instance = bullet_scene.instantiate()
		bullet_instance.position = get_node("Marker2D").position
		print("Posicion: ",bullet_instance.position)
		add_child(bullet_instance)
		

	
