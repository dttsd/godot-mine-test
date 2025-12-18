extends Button

@export var spinBox : SpinBox
signal spawn_nugget
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	spinBox.get_line_edit().context_menu_enabled = false
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_pressed() -> void:
	var qty : int = floori(spinBox.value)
	for i in range(qty - 1):
		emit_signal("spawn_nugget")
	pass # Replace with function body.
