
gpu_set_blendenable(false);

if (pause) {
	surface_set_target(application_surface);
	
	if (surface_exists(pauseSuperf)) {
		draw_surface_ext(pauseSuperf, 0, 0, 1, 1, 0, c_white, .2);
	}
	else {
		pauseSuperf = surface_create(res_w, res_h);
		buffer_set_surface(pauseSuperfBuffer, pauseSuperf, 0);
	}
	
	surface_reset_target();
}


if (keyboard_check_pressed(vk_escape)) {
	if (!pause) {
		
		pause = true;
		
		instance_deactivate_all(true);
		
		pauseSuperf = surface_create(res_w, res_h);
		surface_set_target(pauseSuperf);
			draw_surface_ext(application_surface, 0, 0, 1, 1, 0, c_white, .3);
		surface_reset_target();
		
		if (buffer_exists(pauseSuperfBuffer)) buffer_delete(pauseSuperfBuffer);
		pauseSuperfBuffer = buffer_create(res_w * res_h * 4, buffer_fixed, 1);
		buffer_set_surface(pauseSuperfBuffer, pauseSuperf, 0);
	}
	else {
		pause = false;
		instance_activate_all();
		if (surface_exists(pauseSuperf)) surface_free(pauseSuperf);
		if (buffer_exists(pauseSuperfBuffer)) buffer_delete(pauseSuperfBuffer);
	}
}

gpu_set_blendenable(true);
