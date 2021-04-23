extends Area2D

func _on_MeethaPaani_area_exited(area):
	if area.name == "Puri":
		area.meetha += 10
		print_debug(area.meetha)
		area.get_node("sprite").modulate = Color8(255-area.meetha, 0, 0)
