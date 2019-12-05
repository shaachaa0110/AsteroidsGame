class AsteroidTwo extends Floater{
	private int rotSpeed;
	public AsteroidTwo(double x, double y){
		//initialize all member variables of floater
		rotSpeed = (int)(Math.random()*10+1);
		corners = 6;
		xCorners = new int[corners];
		yCorners = new int[corners];
		xCorners[0] = -7;
		yCorners[0] = -4;
		xCorners[1] = 5;
		yCorners[1] = -5;
		xCorners[2] = 7;
		yCorners[2] = 0;
		xCorners[3] = 2;
		yCorners[3] = 5;
		xCorners[4] = -7;
		yCorners[4] = 4;
		xCorners[5] = -8;
		yCorners[5] = 0;
		myColor = 200;
		myCenterX = x;
		myCenterY = y;
		myDirectionX = (Math.random()*6-3);
		myDirectionY = (Math.random()*6-3);
		myPointDirection = (Math.random()*5-3);
	}
	public void move(){
		turn(rotSpeed);
		super.move();
		//this will override floaters move, so use super()
		//make this turn at it's own speed, each astreroid
	}
	//other getters and setters
	public double getCenterX(){
		return myCenterX;
	}
	public double getCenterY(){
		return myCenterY;
	}
	public void setMyColor(int c){
		myColor = c;
	}
	public void setCenterX(int x){
		myCenterX = x;
	}
	public void setCenterY(int y){
		myCenterY = y;
	}
}