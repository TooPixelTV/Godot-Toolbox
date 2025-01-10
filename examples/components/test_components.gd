extends Node2D

@export var value: int = 10

@onready var health_c: HealthC = $Character/HealthC

func _on_add_health_pressed() -> void:
	health_c.add_health(value)


func _on_remove_health_pressed() -> void:
	health_c.remove_health(value)
