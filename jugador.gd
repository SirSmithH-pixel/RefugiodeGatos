extends CharacterBody2D


const SPEED = 300.0

func _physics_process(delta):
	# Captura las 4 direcciones (arriba, abajo, izquierda, derecha) con las flechas del teclado
	var direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	
	# Aplica la velocidad en la dirección presionada
	velocity = direction * SPEED
	
	# Ejecuta el movimiento físico
	move_and_slide()
