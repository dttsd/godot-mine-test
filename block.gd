extends TextureRect

signal block_dies

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	pass


func _on_mouse_entered() -> void:
	self_modulate = Color(1,1,1) * 1.5
	pass # Replace with function body.


func _on_mouse_exited() -> void:
	self_modulate = Color(1,1,1)
	pass # Replace with function body.

func die():
	emit_signal("block_dies")
	queue_free()

func _on_gui_input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		die()
	pass # Replace with function body.
