extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$Label.text = str(round(Global.oilprice*10.0)/10.0)
	$Label2.text = "$"+str(round(Global.cash))
	$Label3.text = str(round((Global.speed)*10.0)/10.0)
