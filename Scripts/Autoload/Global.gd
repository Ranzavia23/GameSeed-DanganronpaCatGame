extends Node

var player_pos = Vector3.ZERO
var player_rot = Vector3.ZERO
var is_returning = false 
var inventory = []

#Database Detail Bukti
var evidence_db = {
	"Jejak Kaki Kucing": {
		"description": "Jejak kaki kucing misterius yang ditemukan di lantai. Ukurannya mencurigakan, mirip dengan bentuk kaki Happy Cat.",
		"image": "res://icon.svg"
	},
	"Poop Misterius": {
		"description": "Bukti utama kejahatan hari ini. Ditemukan di atas karpet ruang tamu. Aromanya sangat menyengat.",
		"image": "res://icon.svg"
	}
}
