extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_body_entered(body):
	print(body.get_name())
	if body.get_name() == "Player" :
		print("Toco las pullas")
		get_tree().reload_current_scene()
