extends PathFollow2D

@export var speed = 60.0 
var is_game_over = false

func _process(delta):
	if not is_game_over:
		progress += speed * delta
		
		if progress_ratio >= 1.0:
			print("VITÓRIA! Caminhão salvo.")
			is_game_over = true



func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("obstaculos"):
		print("DERROTA! Cabum.")
		is_game_over = true
		speed = 0
