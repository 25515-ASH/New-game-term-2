extends Control


@onready var main_buttons: VBoxContainer = $MainButtons
@onready var options: Panel = $options


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _ready():
	main_buttons.visible = true
	options.visible = false


func _on_start_pressed():
	print("start pressed")
	get_tree().change_scene_to_file("res://scenes/level 1.tscn")


func _on_options_pressed():
	print("options pressed")
	main_buttons.visible = false
	options.visible = true


func _on_exit_pressed():
	print("exit pressed")
	get_tree().quit()


func _on_back_options_pressed() -> void:
	_ready()
