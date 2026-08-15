extends CanvasLayer
var diceRoll = 0
var rng = RandomNumberGenerator.new()
var timer = Timer.new()
var line = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$EventLabel.text = ""
	timer.wait_time = 6.0
	timer.timeout.connect(_on_timer_timeout)
	add_child(timer)
	timer.start()


func _on_timer_timeout():
	line += 1
	if (line == 1):
		$EventLabel.text = "DISGUST."
	elif (line == 2):
		$EventLabel.text = "DISGUST IS ALL I FEEL WHEN I LOOK AT YOU."
	elif (line == 3):
		$EventLabel.text = "YOU HAD GREAT WEALTH."
	elif (line == 4):
		$EventLabel.text = "BUT YOU LOST IT ALL."
	elif (line == 5):
		$EventLabel.text = "YOU ARE A FAILURE."
	elif (line == 6):
		$EventLabel.text = "NO ONE WILL EVER FEEL FOR YOU."
	elif (line == 7):
		$EventLabel.text = "TO SQUANDER SUCH GREAT OPPORTUNITY."
	elif (line == 8):
		$EventLabel.text = "A DISGRACE..."
	elif (line == 11):
		get_tree().change_scene_to_file("res://menu.tscn")
