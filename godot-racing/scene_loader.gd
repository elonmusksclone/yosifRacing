extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if (Global.cash >= 10000000):
		get_tree().change_scene_to_file("res://ending.tscn")
	elif (Global.cash < 0 ):
		get_tree().change_scene_to_file("res://fail.tscn")
	pass
