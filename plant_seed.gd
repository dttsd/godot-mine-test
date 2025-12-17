extends Marker2D

var stem : Line2D = Line2D.new()

var grad = Gradient.new()
	

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	grad.set_colors(PackedColorArray([Color.GREEN_YELLOW, Color.AQUA]))
	
	stem.set_name("stem")
	stem.default_color = Color.LIME_GREEN
	var endPoint = Vector2(0,-100)
	stem.add_point(Vector2(0,0))
	stem.add_point(endPoint)
	stem.end_cap_mode = Line2D.LINE_CAP_ROUND
	
	stem.gradient = grad
	add_child(stem)
	
	stem_off(1, endPoint)
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func stem_off(currentDepth: int, lastEnd: Vector2):
	if currentDepth > 3:
		return
		
	var stem : Line2D = Line2D.new()
	
	stem.set_name("stem" + str(currentDepth))
	stem.default_color = Color.LIME_GREEN
	stem.end_cap_mode = Line2D.LINE_CAP_ROUND
	stem.gradient = grad
	
	var endPoint = Vector2(randi() % 200 - 100, -50)
	stem.position = lastEnd
	stem.add_point(Vector2(0,0))
	stem.add_point(endPoint)
	
	add_child(stem)
	
	stem_off(currentDepth + 1,endPoint)
	stem_off(currentDepth + 1,endPoint)
