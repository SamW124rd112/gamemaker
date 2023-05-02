//Checks code every frame
//Note: I feel like the sprite index could be optimized using a switch statment - Felipe
//Basic movement system & collision system
switch (state)
{
	case "Idle":
		#region  Idle State
		if inputs.left
		{
			Movement(-2, 0);
			image_xscale = -1;
			sprite_index = spr_skeleton_run;
			image_speed = 0.4;
		}

		else if inputs.right
		{
			Movement(2, 0);
			image_xscale = 1;
			sprite_index = spr_skeleton_run;
			image_speed = 0.4;
		}

		else{
			image_speed = 0.2;
			sprite_index = spr_skeleton_idle
		}
	
		if inputs.roll
		{
			state = "Roll";
		}
		
		if inputs.attack
		{
			state = "Attack"
		}
		#endregion 
		break;
		
	case "Roll":
		#region Roll State
	SpriteStates(spr_skeleton_roll, 0.4, 0);
	
	if image_xscale == 1
	{
		Movement(4, 0);
	}
	
	if image_xscale == -1
	{
		Movement(-4, 0);
	}
	#endregion
		break;
		
	case "Attack":
		#region Attack State
		SpriteStates(spr_skeleton_attack_one, 0.4, 0);

		if inputs.attack and Combat(2, 4)
		{
			state = "AttackTwo"
		}
		#endregion
		break;
		
	case "AttackTwo":
		#region Attack State Two
		SpriteStates(spr_skeleton_attack_two, 0.4, 0);
		
		if inputs.attack and Combat(2, 4)
		{
			state = "AttackThree"
		}
		#endregion
		break;
		
	case "AttackThree":
		#region Attack State Three
		SpriteStates(spr_skeleton_attack_three, 0.4,0);
		#endregion
		break;
	

	
}
