extends Component
class_name HealthC

signal health_changed

@export var max_health: int = 100

var _value: int

func _init() -> void:
	component_name = "HealthC"

func _ready() -> void:
	_value = 0

func add_health(amount: int):
	_value = clamp(_value + amount, 0, max_health)
	health_changed.emit()

func remove_health(amount: int):
	_value = clamp(_value - amount, 0, max_health)
	health_changed.emit()
