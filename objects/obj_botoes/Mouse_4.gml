
if (mudar_room) {
	if (room_exists(room_destino)) {
		var trans = instance_create_layer(0, 0, "GUI", obj_transicao);
		trans.transicao = true;
		trans.room_alvo = room_destino;
	}
}

if (texto == "Sair") {
	game_end();
}
