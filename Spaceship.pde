class Spaceship extends Floater  
{   
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
}
