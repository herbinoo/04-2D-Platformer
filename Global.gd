extends Node

var score = 0
var lives = 5
var health = 100
var max_health = 100
var level = 1

func increase_score(s):
	score += s



func decrease_health(h):
	health -= h
	
func decrease_lives(l):
	lives -= l
	health = max_health

func _unhandled_input(_event):
	if Input.is_action_pressed("quit"):
		get_tree().quit()
