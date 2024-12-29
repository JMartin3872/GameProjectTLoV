/// @description Timer for destroying projectile

destroy_timer = time_source_create(time_source_game,2,time_source_units_seconds, function(){
	if(instance_exists(self)){
		instance_destroy(self);
	}
}
);

time_source_start(destroy_timer);