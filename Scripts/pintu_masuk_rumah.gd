extends StaticBody3D

@export var target_scene: String = "res://Scenes/floor1.tscn"
@export var spawn_name: String = "TitikSpawnDalam"

func interact_ke_3d():
	Global.target_spawn_name = spawn_name
	SceneTransition.change_scene(target_scene)
