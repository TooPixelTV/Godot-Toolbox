extends Node
class_name BackgroundMusic

@onready var audio_stream_player_1: AudioStreamPlayer = $AudioStreamPlayer1
@onready var audio_stream_player_2: AudioStreamPlayer = $AudioStreamPlayer2
@onready var animation_player: AnimationPlayer = $AnimationPlayer

func crossfade_to(audio_stream: AudioStream) -> void:
	if audio_stream_player_2.playing:
		audio_stream_player_1.stream = audio_stream
		audio_stream_player_1.play()
		animation_player.play("FadeToPlayer1")
		await animation_player.animation_finished
		audio_stream_player_2.stop()
	else:
		audio_stream_player_2.stream = audio_stream
		audio_stream_player_2.play()
		animation_player.play("FadeToPlayer2")
		await animation_player.animation_finished
		audio_stream_player_1.stop()
