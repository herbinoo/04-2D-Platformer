extends Node2D

onready var Enemy_Ground = load("res://Enemy/Enemy_Ground.tscn")
onready var Enemy_Flying = load("res://Enemy/Enemy_Flying.tscn")


func spawn(e_type, attr, p):
	var enemy = null
	if e_type == "Enemy_Ground":
		enemy = Enemy_Ground.instance()
	if e_type == "Enemy_Flying":
		enemy = Enemy_Flying.instance()
	for a in attr:
		enemy[a] = attr[a]
	enemy.position = p
	add_child(enemy)

