extends CharacterBody2D

@onready var health_component: HealthComponent = $Components/HealthComponent

func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("ui_cancel"):
		health_component.apply_damage(randf_range(25, 35))

func _on_health_component_damaged(amount: int) -> void:
	print("Damaged: %d" % amount)

func _on_health_component_killed() -> void:
	queue_free()
