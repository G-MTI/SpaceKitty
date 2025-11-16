extends Area2D

func _on_body_entered(body: Node2D) -> void:
	print("gthfjuh")
	if body.is_in_group("player"):
		body.queue_free() 
		
		var win_image := get_tree().current_scene.get_node("UWin")  
		win_image.visible = true

		get_tree().paused = true


func _on_button_pressed() -> void:
	pass # Replace with function body.
