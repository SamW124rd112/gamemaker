//adjusts any movement code based on input x and y values
function Movement(xSpeed, ySpeed){
	if not place_meeting(x+xSpeed, y, obj_wall)
	{
		x += xSpeed;
	}
	
	if not place_meeting(x, y+ySpeed, obj_wall)
	{
		y += ySpeed;
	}
}