class_name SpawnObjectWithRate
extends SpawnObject2D

@export_range(0, 5, 0.1, "or_greater") var object_spawn_rate: float
@export var spawn_at_start: bool = false

var can_spawn: bool = false

func _ready() -> void:
	if spawn_at_start:
		can_spawn = true
	else:
		can_spawn = false

func _process(delta: float) -> void:
	if spawn_at_start:
		spawn_object_with_rate()

func spawn_object_with_rate():
	if can_spawn:
		var object_instance = object_to_spawn.instantiate()
		object_instance.global_position = object_spawn_position.global_position
		object_spawn_parent_node.add_child.call_deferred(object_instance)
		can_spawn = false
		await get_tree().create_timer(object_spawn_rate).timeout
		can_spawn = true
