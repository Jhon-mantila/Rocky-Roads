extends Area2D


func _on_body_entered(body):
	print(body.get_name())
	if body.get_name() == "Player" :
		print("Hemos caido")
		get_tree().reload_current_scene()
