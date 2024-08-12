class_name Gravity
extends Node

@export var parent: CharacterBody2D
@export var gravity: float

func _physics_process(delta: float) -> void:
	if !parent.is_on_floor():
		parent.velocity.y += gravity
