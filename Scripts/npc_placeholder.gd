extends StaticBody3D

@export var npc_name: String = "Larry (Godot)"
@export_multiline var dialog_lines: Array[String] = [
	"Meong! Selamat datang di versi Alpha Rumah Nenek.",
	"Bentukku masih logo Godot, jangan protes ya.",
    "Silakan keliling-keliling lihat denahnya."
]

func interact():
	DialogueManager.start_dialogue(dialog_lines, npc_name)
