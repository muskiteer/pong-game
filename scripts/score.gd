extends Node2D

var left_score: int = 0
var right_score: int = 0

func _ready():
	update_score_labels()

func add_score(side: String):
	if side == "left":
		left_score += 1
	elif side == "right":
		right_score += 1
	update_score_labels()

func update_score_labels():
	$LeftScoreLabel.text = str(left_score)
	$RightScoreLabel.text = str(right_score)
