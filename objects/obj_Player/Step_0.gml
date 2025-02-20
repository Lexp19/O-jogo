//Movimentação Player Script
	scr_Player_Base();

sala_atual = instance_place(x, y, obj_rooms);

with(all) {
	if (id != obj_Player && id != obj_rooms && instance_exists(obj_rooms)) {
		
		if (obj_rooms.salas_id != obj_Player.sala_atual && instance_exists(obj_Player)) { 
			with(obj_inimigo_teste_vida) {
				instance_deactivate_object(id);
			}
			
			show_debug_message("Inimigo desativado: " + string(id))
		}	
		else {
			instance_activate_all();
			
			show_debug_message("Ativou")
		}
	}
}
