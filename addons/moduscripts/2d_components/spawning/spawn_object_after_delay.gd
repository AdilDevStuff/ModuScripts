class_name SpawnObjectAfterDelay
extends SpawnObject2D

@export_range(0, 1, 0.1, "or_greater") var object_spawn_delay: float

func _ready() -> void:
	await get_tree().create_timer(object_spawn_delay).timeout
	spawn_object()
