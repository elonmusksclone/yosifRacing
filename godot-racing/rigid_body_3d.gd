extends RigidBody3D
var a=0	
#a is for angle
var speed = 0


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.z=position.z+sin(a)/5*speed
	position.x=position.x+cos(a)/5*speed
	if (Input.is_action_pressed("KEYA")):
		a=a-0.1
	if (Input.is_action_pressed("KEYD")):
		a=a+0.1
	if (Input.is_action_pressed("KEYW")):
		speed=speed+0.1
	if (Input.is_action_pressed("KEYS")):
		speed=speed-0.1
	await get_tree().create_timer(2).timeout
