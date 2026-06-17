extends Area2D
@export var target_scene: String = "res://Scenes/environment.tscn"

func _on_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		SceneTransition.change_scene(target_scene)
