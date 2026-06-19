extends StaticBody3D
@export var target_scene: String = "res://Scenes/kamar_nenek.tscn"
func interact_ke_2d():
	SceneTransition.change_scene(target_scene)
