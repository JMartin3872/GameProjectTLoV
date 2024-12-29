/// @description Destroy timer

destroy_timer = time_source_create(time_source_game,3,time_source_units_seconds, function(){
	if(instance_exists(self)){
		instance_destroy(self);
	}
}
);

time_source_start(destroy_timer);