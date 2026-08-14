extends ColorRect
var mat := self.material
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	mat.set_shader_parameter("darkness", Global.cash/1000000.0+1.0)
	
