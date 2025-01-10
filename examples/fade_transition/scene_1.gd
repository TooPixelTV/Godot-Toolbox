extends Control

@onready var fade_transition: FadeTransition = $FadeTransition

func _on_button_pressed() -> void:
	await fade_transition.fade_out()
	await get_tree().create_timer(3).timeout
	await fade_transition.fade_in()
	await get_tree().create_timer(3).timeout
	print("End transition")


func _on_fade_transition_fade_complete() -> void:
	print("Fade complete")
