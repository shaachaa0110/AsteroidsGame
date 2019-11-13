//should we write new functions?
Spaceship mySpaceship;
public void setup() 
{
  size(600, 600);
  background(0);
  mySpaceship = new Spaceship();
}
public void draw() 
{
  mySpaceship.move();
  mySpaceship.show();
}
public void keyPressed(){
	//should be a key listener
	if(key == 'v'){
		//turn left
		mySpaceship.turn(10);
	}
	if(key == 'b'){
		//turn right
		mySpaceship.turn(-10);
	}
	if(key == 'n'){
		//accelerate by a double
		mySpaceship.accelerate(0.5);
	}
	if(key == 'm'){
		//hyperspace
		mySpaceship.setDirectionX(0);
		mySpaceship.setDirectionY(0);
	}
}

