/// @description Progress the transition

if (mode != TRANS_MODE.OFF)
{
	if (mode == TRANS_MODE.INTRO)
	{
		percent = max(0, percent - max((percent/10), 0.005)); // Shrinking the percentage of blackbars with percent/10 until it is equal or smaller than 0.005 and the shrinking it by 0.005 until it hits 0.
	}
	
	else
	{
		percent = min(1, percent + max(((1-percent)/10), 0.005)); // Similar code but for growing the borders instead.
	}
	
	
	//Code for different actions when borders are completely full or completely empty depending on which TRANS_MODE is active.
	//Using a switch statement to go trough all TRANS_MODEs except "OFF" since it is being handled in line 3.
	if (percent == 1 || percent == 0)
	{
		switch (mode)
		{
			case TRANS_MODE.INTRO:
			{
				mode = TRANS_MODE.OFF;
				break;
			}
			
			case TRANS_MODE.NEXT:
			{
				mode = TRANS_MODE.INTRO;
				room_goto_next();
				break;
			}
			
			case TRANS_MODE.GOTO:
			{
				mode = TRANS_MODE.INTRO;
				room_goto(target);
				break;
			}
			
			case TRANS_MODE.RESTART:
			{
				game_restart();
				break;
			}
		}	
	}	
}
