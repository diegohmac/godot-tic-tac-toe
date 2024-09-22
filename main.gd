extends Control

const Cell = preload("res://cell.tscn")

@export_enum("Human", "AI") var play_with: String = "Human"

var cells: Array = []
var turn: int = 0
var is_game_over: bool = false


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for cell_count in range(9):
		var cell = Cell.instantiate()
		cell.main = self
		$Cells.add_child(cell)
		cells.append(cell)
		cell.cell_update.connect(_on_cell_update)

func _on_cell_update():
	pass

func _on_restart_button_pressed() -> void:
	get_tree().reload_current_scene()
