if (room_exists(room_destino)) {
	var trans = instance_create_layer(0, 0, "GUI", obj_transicao);
	trans.room_alvo = room_destino; 
	trans.transicao = true;
}