extends PathFollow2D

@export var speed = 60.0 
var is_game_over = false

func _process(delta):
		progress += speed * delta
		
		if progress_ratio >= 1.0:
			get_tree().change_scene_to_file("res://Vitoria.tscn")



func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("obstaculos"):
		get_tree().change_scene_to_file("res://gameOver.tscn")
