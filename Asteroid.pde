class Asteroid extends Floater{
	private int rotSpeed;
	public Asteroid(){
		//initialize all member variables of floater
		rotSpeed = (int)(Math.random()*10+1);
		corners = 6;
		xCorners = new int[corners];
		yCorners = new int[corners];
		xCorners[0] = -14;
		yCorners[0] = -7;
		xCorners[1] = 10;
		yCorners[1] = -10;
		xCorners[2] = 14;
		yCorners[2] = 0;
		xCorners[3] = 4;
		yCorners[3] = 10;
		xCorners[4] = -14;
		yCorners[4] = 7;
		xCorners[5] = -16;
		yCorners[5] = 0;
		myColor = 200;
		myCenterX = (int)(Math.random()*600);
		myCenterY = (int)(Math.random()*600);
		myDirectionX = (int)(Math.random()*6-3);
		myDirectionY = (int)(Math.random()*6-3);
		myPointDirection = (int)(Math.random()*5-3);
	}
	public void move(){
		turn(rotSpeed);
		super.move();
		//this will override floaters move, so use super()
		//make this turn at it's own speed, each astreroid
	}
	//other getters and setters
}