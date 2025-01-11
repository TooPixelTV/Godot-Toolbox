extends Node2D


func _ready() -> void:
	var found: Component = Component.get_child_component(%Character, HealthUIC)
	print(found)
