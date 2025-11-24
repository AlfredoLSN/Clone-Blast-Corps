extends Path2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var pontos_do_caminho = curve.get_baked_points()
	$Line2D.points = pontos_do_caminho


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
