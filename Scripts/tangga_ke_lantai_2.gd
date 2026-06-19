extends StaticBody3D

@export var target_scene: String = "res://Scenes/floor2.tscn"
@export var spawn_name: String = "TitikSpawnAtas"

func interact_ke_3d():
	print("Naik ke lantai 2")
	Global.target_spawn_name = spawn_name
	SceneTransition.change_scene(target_scene)
