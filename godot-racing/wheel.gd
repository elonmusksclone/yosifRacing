extends CSGCylinder3D
var speed = 0
var acc = 0.03

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	rotate_object_local(Vector3(0, 1, 0), -speed/20)
	speed=speed*0.99
	if (Input.is_action_pressed("KEYW")):
		speed=speed+acc
	if (Input.is_action_pressed("KEYS")):
		speed=speed-acc
	if (Input.is_action_pressed("KEYC")):
		speed=-(speed/1.3)
	await get_tree().create_timer(2).timeout
