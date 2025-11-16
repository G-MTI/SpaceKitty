extends Area2D

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		body.queue_free()

		var win_image := get_tree().current_scene.get_node("u didit")

		win_image.visible = true

		get_tree().paused = true
