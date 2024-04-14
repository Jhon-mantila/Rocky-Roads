extends CanvasLayer

var coins = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	#var coinNode = get_tree().get_root().find_node("Coin", true, false)
	#coinNode.connect("coinCollected", self, "handleCoinCollected()")
	#var coinNode = get_parent().find_child("Coin2D")
	#coinNode.connect("coinCollected",handleCoinCollected)
	#print(coinNode)
	
	#coinNode.connect("coinCollected", self, "handleCoinCollected")
	$CoinCollectedText.text = str(coins)

func handleCoinCollected():
	print("Coin Collected")
	coins += 1
	$CoinCollectedText.text = str(coins)
	
	if coins == 3:
		#método para pasar de nivel godto 4.2.1
		get_tree().change_scene_to_file("res://Scenes/Mundo2.tscn")
		



