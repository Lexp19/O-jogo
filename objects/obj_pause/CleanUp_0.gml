

if (buffer_exists(pauseSuperfBuffer)) {
	buffer_delete(pauseSuperfBuffer);
}

if (surface_exists(pauseSuperf)) {
	surface_free(pauseSuperf);
}
