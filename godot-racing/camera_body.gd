extends RigidBody3D
var a=0	
var damp=0.5
var olda=0
#a is for angle
var speed = 0
var acc = 0.03
var direction = 0
var da = 0


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.z=position.z+sin(olda)/5*speed
	position.x=position.x+cos(olda)/5*speed
	rotate_object_local(Vector3(0, 1, 0), da)
	olda=olda+a
	da=(olda-direction)*0.5+(a*0.5)
	direction=direction+da
	a=0
	speed=speed*0.99
	if (Input.is_action_pressed("KEYA")):
		a=a-(0.04*speed*damp)
	if (Input.is_action_pressed("KEYD")):
		a=a+(0.04*speed*damp)
	if (Input.is_action_pressed("KEYW")):
		speed=speed+acc
	if (Input.is_action_pressed("KEYS")):
		speed=speed-acc
	if (Input.is_action_pressed("KEYC")):
		position.z=position.z+sin(olda)/5*-speed
		position.x=position.x+cos(olda)/5*-speed
		speed=-(speed/1.3)
	await get_tree().create_timer(2).timeout
