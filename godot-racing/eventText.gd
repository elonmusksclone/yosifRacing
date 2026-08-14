extends CanvasLayer
var diceRoll = 0
var rng = RandomNumberGenerator.new()
var timer = Timer.new()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$EventLabel.text = "MAKE MONEY."
	timer.wait_time = 2.0
	timer.timeout.connect(_on_timer_timeout)
	add_child(timer)  # Important!
	timer.start()


func _on_timer_timeout():
	diceRoll = round(rng.randf_range(1,16))
	if (diceRoll == 1):
		$EventLabel.text = "OIL SHARES ARE STAGNATING."
		Global.cash = Global.cash*0.8
	elif (diceRoll == 2):
		$EventLabel.text = "WAR HAS BROKEN OUT BETWEEN TWO MAJOR OIL SUPPLIERS."
		Global.oilprice = Global.oilprice*4
	elif (diceRoll == 3):
		$EventLabel.text = "A SHIP HAS CRASHED IN THE SUEZ."
		Global.oilprice = Global.oilprice*1.5
	elif (diceRoll == 4):
		$EventLabel.text = "NEW OIL SUPPLIES HAVE BEEN DISCOVERED."
		Global.oilprice = Global.oilprice*0.5
	elif (diceRoll == 5):
		$EventLabel.text = "OPEC OUTPUT HAS DECLINED."
		Global.oilprice = Global.oilprice*1.25
	elif (diceRoll == 6):
		$EventLabel.text = "RUSSIAN OUTPUT HAS DECLINED."
		Global.oilprice = Global.oilprice*1.25
	elif (diceRoll == 7):
		$EventLabel.text = "VENEZUELAN OUTPUT HAS DECLINED."
		Global.oilprice = Global.oilprice*1.25
	elif (diceRoll == 8):
		$EventLabel.text = "IRANIAN OUTPUT HAS DECLINED."
		Global.oilprice = Global.oilprice*1.25
	elif (diceRoll == 9):
		$EventLabel.text = "NORDIC OUTPUT HAS DECLINED."
		Global.oilprice = Global.oilprice*1.25
	elif (diceRoll == 10):
		$EventLabel.text = "AZERI OUTPUT HAS DECLINED"
		Global.oilprice = Global.oilprice*1.25
	elif (diceRoll == 11):
		$EventLabel.text = "A GOVERNMENT SUBSIDY HAS BEEN ESTABLISHED FOR OIL COMPANIES."
		Global.oilprice = Global.oilprice*0.9
		Global.cash = Global.cash + 100000
	elif (diceRoll == 12):
		$EventLabel.text = "RENEWABLES MARKET SHARE HAS INCREASED."
		Global.oilprice = Global.oilprice*0.8
	elif (diceRoll == 13):
		$EventLabel.text = "WAR HAS ENDED BETWEEN TWO MAJOR OIL SUPPLIERS."
		Global.oilprice = Global.oilprice*0.35
	elif (diceRoll == 14):
		$EventLabel.text = "YOUR COMPANY HAS BEEN FOUND GUILTY OF FRAUD."
		Global.cash = Global.cash*0.9-100000
	elif (diceRoll == 15):
		$EventLabel.text = "YOUR PolyMarket BET ON WHETHER THE PRESIDENT WOULD SAY BitCoin PAID OFF."
		Global.cash = Global.cash*1.1
	elif (diceRoll == 16):
		$EventLabel.text = "YOU PAID $500 DURING A GOVERNMENT LIVESTREAM ASKING THE PRESIDENT TO SAY BitCoin."
		Global.cash = Global.cash-500
