
if (transicao) {
	image_alpha = lerp(image_alpha, 1, velocidade_trans);
	if (image_alpha >= .98) {
		room_goto(room_alvo);
		image_alpha = 1;
		transicao = false;
	}
} else {
	image_alpha = lerp(image_alpha, 0, velocidade_trans);
}

	