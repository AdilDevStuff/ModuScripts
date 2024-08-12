class_name HZ_UnidirectionalMovement
extends Node

@export var parent: CharacterBody2D
@export var move_speed: float
@export var direction: int

func _physics_process(delta: float) -> void:
	parent.velocity = Vector2(direction * move_speed, parent.velocity.y)
