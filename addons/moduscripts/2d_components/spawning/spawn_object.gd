class_name SpawnObject2D
extends Node

@export var object_to_spawn: PackedScene ## The scene of the object to spawn.
@export var object_spawn_parent_node: Node2D ## Parent Node of the object where it will be spawned.
@export var object_spawn_position: Marker2D ## Position of the object where its going to be spawned.

func _ready() -> void:
	spawn_object()

func spawn_object():
	var object_instance = object_to_spawn.instantiate()
	object_instance.global_position = object_spawn_position.global_position
	object_spawn_parent_node.add_child.call_deferred(object_instance)
