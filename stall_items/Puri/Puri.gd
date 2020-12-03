extends Area2D

var mouse_inside = false
var picked = false

var teekha = 0
var meetha = 0

func _on_Puri_mouse_entered():
	mouse_inside = true

func _on_Puri_mouse_exited():
	mouse_inside = false

func _ready():
	$sprite.modulate = Color(1, 1, 1, 1)

func _process(_delta):
	if Input.is_action_pressed("pick") and mouse_inside:
		picked = true
	if Input.is_action_just_released("pick") and mouse_inside:
		picked = false

	if picked:
		global_position = get_global_mouse_position()
