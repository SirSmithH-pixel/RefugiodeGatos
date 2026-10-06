extends CharacterBody2D


const SPEED = 300.0

func _physics_process(delta):
	var direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = direction * SPEED
	
	# --- Control de Animación ---
	if Input.is_action_pressed("ui_right"):
		$AnimatedSprite2D.play("caminar_derecha")
		$AnimatedSprite2D.flip_h = false # Mira en su dirección original
	elif Input.is_action_pressed("ui_left"):
		$AnimatedSprite2D.play("caminar_derecha") # Usamos la misma animación
		$AnimatedSprite2D.flip_h = true # ¡Volteamos el dibujo como un espejo!
	elif direction == Vector2.ZERO:
		$AnimatedSprite2D.stop()
		
	move_and_slide()
