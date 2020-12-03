extends Node2D


func _process(_delta):
	if Input.is_action_just_pressed("toggle_console"):
		get_tree().paused = true
		get_tree().root.add_child(preload("res://DebugConsole/console.tscn").instance())
