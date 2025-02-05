
if (mudar_room) {
	if (room_exists(room_destino)) {
		var trans = instance_create_layer(0, 0, "Configs", obj_transicao);
		trans.transicao = true;
		trans.room_alvo = room_destino;
	}
}

if (texto == "Sair") {
	game_end();
}

if (texto == "Opções") {
	instance_deactivate_object(obj_inicial_botao);
	instance_activate_object(obj_opcao_botao);
	
}
