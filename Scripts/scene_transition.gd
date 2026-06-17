extends CanvasLayer

@onready var anim_player = $AnimationPlayer

func change_scene(target_scene_path: String):
	anim_player.play("fade")
	await anim_player.animation_finished
	get_tree().change_scene_to_file(target_scene_path)
	anim_player.play_backwards("fade") 
