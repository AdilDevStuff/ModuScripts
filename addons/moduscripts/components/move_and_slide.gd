class_name MoveAndSlide
extends Node

@export var parent: CharacterBody2D

func _physics_process(delta: float) -> void:
	parent.move_and_slide()
