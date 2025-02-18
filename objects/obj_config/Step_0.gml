
if (keyboard_check_pressed(vk_escape)) {
	if (instance_exists(obj_inicial_botao)) {
		game_end();
	}
	else if (instance_exists(obj_opcao_botao)) {
		instance_deactivate_object(obj_opcao_botao);
		instance_activate_object(obj_inicial_botao);
	}
}
