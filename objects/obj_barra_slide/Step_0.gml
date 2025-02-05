
if (!instance_exists(obj_bola_slide) && !instance_exists(obj_inicial_botao)) {
	instance_create_layer(barra_slideX / 2, y, "Geral", obj_bola_slide);
	obj_bola_slide.depth = -100;
}