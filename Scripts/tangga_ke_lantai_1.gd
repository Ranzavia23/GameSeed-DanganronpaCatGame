extends StaticBody3D

@export var target_scene: String = "res://Scenes/floor1.tscn"
@export var spawn_name: String = "TitikSpawnBawah"

func interact_ke_3d():
	print("Turun ke lantai 1")
	Global.target_spawn_name = spawn_name
	SceneTransition.change_scene(target_scene)
