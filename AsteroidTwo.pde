class AsteroidTwo extends Floater{
	private int rotSpeed;
	private boolean isExploding;
	private int explodeTimer;
	public AsteroidTwo(){
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
		myCenterX = Math.random()*600;
		myCenterY = Math.random()*600;
		myDirectionX = (Math.random()*6-3);
		myDirectionY = (Math.random()*6-3);
		myPointDirection = (Math.random()*5-3);
	}
	public void show ()  //Draws the floater at the current position  
  	{             
    	fill(myColor);   
    	stroke(myColor);    
    
    	//translate the (x,y) center of the ship to the correct position
    	translate((float)myCenterX, (float)myCenterY);

    	//convert degrees to radians for rotate()     
    	float dRadians = (float)(myPointDirection*(Math.PI/180));
    
    	//rotate so that the polygon will be drawn in the correct direction
    	rotate(dRadians);
    
    	//draw the polygon
    	beginShape();
    	for (int nI = 0; nI < corners; nI++)
    	{
      		vertex(xCorners[nI], yCorners[nI]);
    	}
    	endShape(CLOSE);

    	//"unrotate" and "untranslate" in reverse order
    	rotate(-1*dRadians);
    	translate(-1*(float)myCenterX, -1*(float)myCenterY);
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