extends PathFollow2D

@export var speed = 50.0 # Velocidade constante do caminhão
var game_over = false

func _process(delta):
	if not game_over:
		progress += speed * delta
		
		# Condição de Vitória: Chegou ao final do caminho (ratio 1.0 = 100%)
		if progress_ratio >= 1.0:
			print("VITÓRIA! O caminhão escapou.")
			game_over = true
			# Chamar tela de vitória aqui

# Conectar o sinal "body_entered" do Area2D (filho deste nó) para detectar colisão
func _on_area_2d_body_entered(body):
	if body.is_in_group("obstaculos"):
		print("GAME OVER! O caminhão bateu.")
		game_over = true
		speed = 0
		# Chamar tela de derrota aqui
