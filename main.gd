extends Node2D

var trash_scenes = [
	preload("res://trashScenes/broken_mug.tscn"),
	preload("res://trashScenes/cardboard-box.tscn"),
	preload("res://trashScenes/glass_bottle.tscn"),
	preload("res://trashScenes/glass_jar.tscn"),
	preload("res://trashScenes/milk_jug.tscn"),
	preload("res://trashScenes/paper_bag.tscn"),
	preload("res://trashScenes/pizza_box.tscn"),
	preload("res://trashScenes/plastic_bottle.tscn")
]

var spawn_area_min = Vector2(50, 300)
var spawn_area_max = Vector2(900, 600)
var number_of_trash_items = 20

func _ready():
	for i in range(number_of_trash_items):
		var random_trash_scene = trash_scenes[randi() % trash_scenes.size()]
		var trash = random_trash_scene.instantiate()
		var random_x = randf_range(spawn_area_min.x, spawn_area_max.x)
		var random_y = randf_range(spawn_area_min.y, spawn_area_max.y)
		trash.position = Vector2(random_x, random_y)
		trash.add_to_group("trash_group")
		add_child(trash)

