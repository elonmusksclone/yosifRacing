extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$RichTextLabel.text = "AND SO YOU AWAKEN FROM A GREAT SLUMBER WITH A DRIVE AND PASSION FOR CAPITAL AND LABOUR AND AS YOU SCREAM FROM THE MORTAL SOIL THAT PERMEATES THE EARTH YOU REALISE A GREAT AMBITION ONE WHICH YOU SHALL FULFILL AND SO YOU ENGAGE THE ENGINE OF ETERNAL DESTRUCTION AND CHARGE TOWARDS THE LIQUID STORED PAST THE FOLD SO YOU MAY FINALLY ASCEND TO THE GREAT NUMBER"
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$Label.text = str(Global.oilprice)
	$Label2.text = "$"+str(round(Global.cash))
	$Label3.text = str(Global.speed)
