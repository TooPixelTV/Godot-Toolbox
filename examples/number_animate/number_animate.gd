extends Control

@export var add_amount: int = 10
@export var anim_duration: float = 0.5

@onready var label: Label = $Label

var current_value: int = 0
var tween: Tween

func _ready() -> void:
	set_label(current_value)

func _on_button_pressed() -> void:
	if tween and tween.is_running():
		tween.stop()
	
	tween = create_tween()
	tween.tween_method(set_label, current_value, current_value + add_amount, anim_duration)
	
func set_label(value: int):
	current_value = value
	label.text = str(value)
