extends Control

@onready var status_label: Label = $MarginContainer/VBoxContainer/StatusLabel
@onready var action_button: Button = $MarginContainer/VBoxContainer/ActionButton

func _ready() -> void:
	status_label.text = "Aegis Godot Bridge: Ready"
	action_button.pressed.connect(_on_action_button_pressed)

func _on_action_button_pressed() -> void:
	status_label.text = "Action button pressed!"
