extends Area2D

@export var clue_name: String = "Jejak Kaki Kucing"

func _ready() -> void:
	if Global.inventory.has(clue_name):
		queue_free()

func _on_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		ambil_clue()

func ambil_clue():
	print("Mendapatkan Clue: ", clue_name)
	if not Global.inventory.has(clue_name):
		Global.inventory.append(clue_name)
		print("Bagus! Berhasil mendapatkan Clue: ", clue_name)
		print("Isi Inventory sekarang: ", Global.inventory)
	queue_free()
