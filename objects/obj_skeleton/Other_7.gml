//Resets state to idle after the roll
//This is dependent on the state and the state changing is dependent on this. this should be changed later
if state == "Roll" or state == "Attack" or state == "AttackTwo" or state == "AttackThree"
{
	state = "Idle";	
	image_index = 0;
}
