extends Area2D

func _process(delta: float) -> void:
	pass

func _on_body_entered(body: CharacterBody2D) -> void:
	get_tree().change_scene_to_file("res://levels/level2.tscn")
