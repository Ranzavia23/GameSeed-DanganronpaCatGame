extends Area2D

@export var clue_name: String = "Jejak Kaki Kucing"

func _on_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		ambil_clue()

func ambil_clue():
	print("Mendapatkan Clue: ", clue_name)

	queue_free()
