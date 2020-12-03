extends Area2D

func _on_TeekhaPaani_area_exited(area):
	if area.name == "Puri":
		area.teekha += 10
		area.get_node("sprite").modulate = Color8(0, 255-area.teekha, 0)
