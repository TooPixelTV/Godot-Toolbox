extends Control

const MUSIC_1 = preload("res://examples/background_music/Blood_And_Myth_LOOP_58bpm.wav")
const MUSIC_2 = preload("res://examples/background_music/Chariot_Battle_LOOP_175bpm.wav")

@onready var background_music: BackgroundMusic = $BackgroundMusic

var playing_music_1: bool = false

func _ready() -> void:
	background_music.transition_speed = 1.3
	background_music.crossfade_to(MUSIC_1)
	playing_music_1 = true

func _on_button_pressed() -> void:
	var music = MUSIC_1
	
	if playing_music_1:
		music = MUSIC_2
		playing_music_1 = false
	
	background_music.crossfade_to(music)
	
