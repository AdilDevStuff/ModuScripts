class_name HealthComponent extends Node

signal killed
signal damaged(amount: int)

signal health_healed(amount: int)
signal health_filled()

signal max_health_increased(amount: int)

@export var max_health: int = 100
@export var parent: Node

var current_health: int = 0

func _ready() -> void:
	current_health = max_health

func apply_damage(amount: int) -> void:
	current_health -= amount
	damaged.emit(amount)
	if current_health <= 0:
		killed.emit()

func heal_health(amount: int) -> void:
	current_health += amount
	health_healed.emit(amount)
	
	if current_health == max_health:
		health_filled.emit()

func increase_max_health(amount: int) -> void:
	max_health = amount
	max_health_increased.emit(amount)
