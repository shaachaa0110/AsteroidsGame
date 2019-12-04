class Bullet extends Floater{
	public Bullet(Spaceship mySpaceship){
		myCenterX = mySpaceship.getCenterX();
		myCenterY = mySpaceship.getCenterY();
		System.out.println(myCenterX + ", " + myCenterY);
		myPointDirection = mySpaceship.getPointDirection();
		double dRadians = myPointDirection*(Math.PI/180);
		myDirectionX = 5*Math.cos(dRadians) + mySpaceship.getDirectionX();
		myDirectionY = 5*Math.sin(dRadians) + mySpaceship.getDirectionY();
		myColor = 255;
	}
	public double getCenterX(){
		return myCenterX;
	}
	public double getCenterY(){
		return myCenterY;
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
    
    //draw the circle
    ellipse(0, 0, 5, 5);

    //"unrotate" and "untranslate" in reverse order
   	rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }   
  public void move ()   //move the floater in the current direction of travel
  {      
    //change the x and y coordinates by myDirectionX and myDirectionY       
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;     
   }
}