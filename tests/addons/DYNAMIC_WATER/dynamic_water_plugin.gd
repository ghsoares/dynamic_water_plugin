tool
extends EditorPlugin

func _enter_tree():
	add_custom_type("dynamic water", "Node2D", preload("res://addons/DYNAMIC_WATER/dynamic_water.gd"), preload("res://addons/DYNAMIC_WATER/icon.png"))

func _exit_tree():
	remove_custom_type("dynamic water")

