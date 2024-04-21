extends Node2D

func _ready():
	$AnimationPlayer.play("RotateSaw")


func _on_area_2d_body_entered(body):
	print(body.get_name())
	if body.get_name() == "Player":
		body.lose_life()
