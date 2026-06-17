extends StaticBody3D
@export var target_scene: String = "res://Scenes/ruang_investigasi.tscn"
func interact():
	SceneTransition.change_scene(target_scene)
