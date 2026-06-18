extends CanvasLayer

@onready var panel_utama = $PanelUtama
@onready var item_list = $PanelUtama/VBoxContainer

@onready var panel_detail = $PanelUtama/PanelDetail
@onready var texture_rect = $PanelUtama/PanelDetail/TextureRect
@onready var label_deskripsi = $PanelUtama/PanelDetail/LabelDeskripsi

func _ready():
	panel_utama.hide()
	panel_detail.hide() 

func _input(event):
	if event.is_action_pressed("toggle_inventory"):
		if panel_utama.visible:
			panel_utama.hide()
		else:
			update_ui()
			panel_utama.show()

func update_ui():
	for child in item_list.get_children():
		child.queue_free()
	
	panel_detail.hide()
	
	if Global.inventory.is_empty():
		var label_kosong = Label.new()
		label_kosong.text = "Tidak ada bukti..."
		item_list.add_child(label_kosong)
		return

	for item in Global.inventory:
		var item_button = Button.new()
		item_button.text = "  " + item
		item_button.alignment = HorizontalAlignment.HORIZONTAL_ALIGNMENT_LEFT
		
		item_button.pressed.connect(_on_item_button_pressed.bind(item))
		
		item_list.add_child(item_button)

func _on_item_button_pressed(item_name: String):
	if Global.evidence_db.has(item_name):
		var data = Global.evidence_db[item_name]
		
		label_deskripsi.text = data["description"]
		texture_rect.texture = load(data["image"])
		
		panel_detail.show()
