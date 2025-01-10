@tool
extends Component
class_name HealthUIC

@onready var progress_bar: ProgressBar = $ProgressBar

var health_c: HealthC

func _init() -> void:
	component_name = "HealthUIC"
	
func _get_configuration_warnings() -> PackedStringArray:
	return required_components_warning([HealthC])

func _ready() -> void:
	health_c = get_component(HealthC)
	if health_c:
		progress_bar.max_value = health_c.max_health
		progress_bar.value = health_c._value
		health_c.health_changed.connect(_on_health_changed)

func _on_health_changed():
	progress_bar.value = health_c._value
