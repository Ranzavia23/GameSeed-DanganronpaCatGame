extends CanvasLayer

@onready var panel = $Panel
@onready var name_label = $Panel/NameLabel
@onready var text_label = $Panel/TextLabel
@onready var type_timer = $TypeTimer

var dialogue_lines = []
var current_line = 0
var is_dialogue_active = false
var is_typing = false

func _ready():
	panel.hide()
	type_timer.timeout.connect(_on_type_timer_timeout)

func start_dialogue(lines: Array, character_name: String = "Nama"):
	if lines.is_empty():
		return
		
	dialogue_lines = lines
	current_line = 0
	is_dialogue_active = true
	
	name_label.text = character_name
	show_line()
	panel.show()
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)

func show_line():
	text_label.text = dialogue_lines[current_line]
	text_label.visible_characters = 0
	is_typing = true
	type_timer.start(0.03)

func _on_type_timer_timeout():
	if text_label.visible_characters < text_label.get_total_character_count():
		text_label.visible_characters += 1
		#masukin kode untuk muter SFX ngetiknya di sini
	else:
		type_timer.stop()
		is_typing = false

func _input(event):
	if not is_dialogue_active:
		return
	if event.is_action_pressed("interact") or event.is_action_pressed("ui_accept"):
		if is_typing:
			text_label.visible_characters = text_label.get_total_character_count()
			type_timer.stop()
			is_typing = false
		else:
			current_line += 1
			if current_line < dialogue_lines.size():
				show_line()
			else:
				is_dialogue_active = false
				panel.hide()
				if Global.is_in_3d:
					Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
