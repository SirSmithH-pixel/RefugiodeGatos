extends Area2D

func _on_body_entered(body):
	# Comprobamos si el cuerpo que tocó al gatito es el jugador
	if body is CharacterBody2D:
		print("¡Gatito rescatado!")
		# Esta función hace que el nodo desaparezca del juego
		queue_free()
