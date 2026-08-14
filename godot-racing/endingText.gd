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
		$EventLabel.text = "YOU HAVE DONE IT."
	elif (line == 2):
		$EventLabel.text = "YOU HAVE MADE MILLIONS."
	elif (line == 3):
		$EventLabel.text = "YET THERE ARE MILLIONS MORE TO BE MADE."
	elif (line == 4):
		$EventLabel.text = "ACROSS TIME YOU WAIT, UNTIL YOU ARE SATISFIED."
	elif (line == 5):
		$EventLabel.text = "BUT YOU NEVER ARE."
	elif (line == 6):
		$EventLabel.text = "AND SO YOU WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. AND WAIT. "
	elif (line == 7):
		$EventLabel.text = "FOREVER. TO INFINITY."
	elif (line == 8):
		$EventLabel.text = "LONELY, AND SAD..."
	elif (line >= 9):
		$EventLabel.text = "Oil Tycoon, by Yosif Carroll"
