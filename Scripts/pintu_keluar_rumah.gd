extends StaticBody3D

@export var target_scene: String = "res://Scenes/outdoor.tscn"
@export var spawn_name: String = "TitikSpawnLuar"

func interact_ke_3d():
	Global.target_spawn_name = spawn_name
	SceneTransition.change_scene(target_scene)
