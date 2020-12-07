extends Sprite

var mouse_inside = false
var picked = false
onready var p = get_parent()

func _process(_delta):
	if Input.is_action_pressed("pick") and mouse_inside:
		picked = true
	if Input.is_action_just_released("pick") and mouse_inside:
		picked = false

	if picked:
		global_position = get_global_mouse_position()
	else:
		global_position = p.get_node("ragda/pos").global_position


func _on_spoon_mouse_entered():
	mouse_inside = true

func _on_spoon_mouse_exited():
	mouse_inside = false

func _on_cup_area_entered(body):
	if body.name == "Puri":
		if not body.vatana:
			body.vatana = true
