
if (texto == "Geral") {
	show_debug_message("Geral");
	instance_activate_object(obj_barra_slide);
}

if (texto == "Audio e Video") {
	show_debug_message("Audio");
}

 if (texto == "Mouse e Teclado") {
	show_debug_message("Teclado");
}

if (texto == "Sair") {
	instance_deactivate_object(obj_opcao_botao);
	instance_activate_object(obj_inicial_botao);
}