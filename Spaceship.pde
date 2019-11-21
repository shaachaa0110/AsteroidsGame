class Spaceship extends Floater  
{   //initialize variables
	public Spaceship(){
		myCenterX = 300;
    	myCenterY = 300;
    	myDirectionX = 0;
    	myDirectionY = 0;
   		myPointDirection = 0;
   		myColor = color(143, 134, 209);
    	corners = 13;
    	xCorners = new int[corners];
    	yCorners = new int[corners];
    	xCorners[0] = -20;
    	yCorners[0] = 0;
    	xCorners[1] = -14;
    	yCorners[1] = -6;
    	xCorners[2] = -8;
    	yCorners[2] = -12;
    	xCorners[3] = 2;
    	yCorners[3] = -14;
    	xCorners[4] = 6;
    	yCorners[4] = -8;
	    xCorners[5] = 10;
	    yCorners[5] = -12;
	    xCorners[6] = 35;
	    yCorners[6] = 0;
	    xCorners[7] = 10;
	    yCorners[7] = 12;
	    xCorners[8] = 6;
	    yCorners[8] = 8;
	    xCorners[9] = 2;
	    yCorners[9] = 14;
	    xCorners[10] = -8;
	    yCorners[10] = 12;
	    xCorners[11] = -14;
	    yCorners[11] = 6;
	    xCorners[12] = -20;
	    yCorners[12] = 0;
	}
	//write getters and setters here
	public void setDirectionX(double x){
		myDirectionX = x;
	}
	public void setDirectionY(double y){
		myDirectionY = y;
	}
	public void setPointDirection(double d){
		myPointDirection = d;
	}
	public void setmyColor(int a, int b, int c){
		myColor = color(a, b, c);
	}
	public void setCenterX(double x){
		myCenterX = x;
	}
	public void setCenterY(double y){
		myCenterY = y;
	}
    public double getCenterX(){
        return myCenterX;
    }
    public double getCenterY(){
        return myCenterY;
    }

	public void show ()  //Draws the floater at the current position  
    {             
    	//overrides floater show function
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
    	//rocket shape overrides regular floater show function
    	if(/*rocketsfiring when accelerating, not just moving*/ key == 'b' || key == 'c' || key == 'v'){
    		//make fire rockets
    		fill(204, 102, 0);
    		beginShape();
    		vertex(-20, 10);
    		vertex(-20, -10);
    		vertex(-50, 0);
    		endShape(CLOSE);
    	}

    	//"unrotate" and "untranslate" in reverse order
    	rotate(-1*dRadians);
    	translate(-1*(float)myCenterX, -1*(float)myCenterY);
    } 
}
