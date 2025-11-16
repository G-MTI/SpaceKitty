extends Area2D

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		body.queue_free()

		var death_image := get_tree().current_scene.get_node("UDied")

		death_image.visible = true

		get_tree().paused = true
