extends Area2D

@export var clue_name: String = "Jejak Kaki Kucing"

func _ready() -> void:
	if Global.inventory.has(clue_name):
		queue_free()

func _on_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		ambil_clue()

func ambil_clue():
	if not Global.inventory.has(clue_name):
		Global.inventory.append(clue_name)
		DialogueManager.start_dialogue(["Ini adalah " + clue_name + "!","Baunya sungguh tidak ramah di hidung...","Bukti ini pasti akan berguna di persidangan nanti."], "Pikiran Batin")
	queue_free()
