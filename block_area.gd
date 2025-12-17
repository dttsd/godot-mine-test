extends Control

@export var block_scene: PackedScene
@export var nugget_scene: PackedScene
@export var nugget_spawner: Marker2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	var block = block_scene.instantiate()
	var rect = block.get_rect().size
	var block_bounds = get_rect().size
	
	var x_qty : int = floori(block_bounds.x / rect.x)
	var y_qty : int = floori(block_bounds.y / rect.y)
	print(x_qty, " ", y_qty)
	
	for x in range(x_qty):
		for y in range(y_qty):
			
			block = block_scene.instantiate()
			#print(rect)
			block.position = Vector2(x,y) * rect
			block.block_dies.connect(self._on_block_died.bind())
			add_child(block)
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func _on_block_died():
	var nugget = nugget_scene.instantiate()
	
	nugget_spawner.add_child(nugget)
	pass
