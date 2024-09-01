class_name Jump
extends Node

@export var parent: CharacterBody2D

@export_group("Properties")
@export var jump_force: float

## If 0, player can jump infinitely
@export var jump_limit: float

var jump_count = 0

@export_group("Input Actions")
@export var jump_action: StringName

func _physics_process(delta: float) -> void:
	if parent.is_on_floor():
		jump_count = 0
		
	if Input.is_action_just_pressed(jump_action):
		if jump_limit == 0 or jump_count < jump_limit:
			parent.velocity.y = -jump_force
			jump_count += 1
