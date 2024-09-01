extends StaticBody2D

@onready var ground: Polygon2D = $Ground
@onready var collision_shape_2d: CollisionPolygon2D = $CollisionShape2D

func _ready() -> void:
	collision_shape_2d.polygon = ground.polygon
