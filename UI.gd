extends CanvasLayer

var coins = 0
var heart1
var heart2
var heart3

# Called when the node enters the scene tree for the first time.
func _ready():
	heart1 = get_node("Heart1")
	heart2 = get_node("Heart2")
	heart3 = get_node("Heart3")
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
		print("Escena Actual", get_tree().current_scene.name)
		var mundo = get_tree().current_scene.name
		print("Escena Actual", mundo)
		print("Escena Actual: ",  int(mundo.substr(mundo.length()-1, mundo.length()-1))+1)
		var siguiente_nivel = str(int(mundo.substr(mundo.length()-1, mundo.length()-1))+1)
		print(siguiente_nivel)
		get_tree().change_scene_to_file("res://Scenes/Mundo" +siguiente_nivel+ ".tscn")
		#get_tree().change_scene_to_file("res://Scenes/Mundo" + str(int(get_tree().current_scene.name)+1) + ".tscn")
		if coins == 3 && mundo == "Mundo3":
			get_tree().change_scene_to_file("res://Scenes/Mundo1.tscn")
			
func handle_hearts(lifes):
	if lifes == 0:
		heart1.visible = false
	if lifes == 1:
		heart2.visible = false
	if lifes == 2:
		heart3.visible = false
		  
		
		
		
		



