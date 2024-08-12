class_name HorizontalMovement
extends Node

@export var parent: CharacterBody2D
@export var move_speed: float

@export_group("Input Actions")
@export var negative_action: StringName
@export var positive_action: StringName

func _physics_process(delta: float) -> void:
	var input_axis = Input.get_axis(negative_action, positive_action)
	parent.velocity = Vector2(input_axis * move_speed, parent.velocity.y)
