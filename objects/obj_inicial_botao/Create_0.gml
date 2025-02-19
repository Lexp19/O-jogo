
//salvando o valor da escala inicial do botão

escala_x = image_xscale;
escala_y = image_yscale;
escala_texto_x = 1;
escala_texto_y = 1;

target_xscale = escala_x;
target_yscale = escala_y;
target_text_x = 1;
target_text_y = 1;

instance_deactivate_all(true);
instance_activate_object(obj_inicial_botao);
instance_activate_object(obj_game_controller);
instance_activate_object(obj_transicao);

cor_texto = c_white;
target_alpha = 1;


