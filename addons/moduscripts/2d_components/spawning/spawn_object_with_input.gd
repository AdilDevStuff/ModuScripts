class_name SpawnObjectWithInput
extends SpawnObject2D

@export var spawn_input_action: StringName ## Input action that is going to be used for spawning the object. Define input action in Project Settings.
	
func _ready() -> void: pass

func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed(spawn_input_action):
		spawn_object()
