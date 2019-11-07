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
  mySpaceship.show();
}
public void keyPressed(){
	if(key == 'v'){
		mySpaceship.turn(10);
		mySpaceship.move();
	}
	if(key == 'b'){
		mySpaceship.turn(-10);
	}
	if(key == 'n'){
		mySpaceship.accelerate(0.5);
	}
	if(key == 'm'){

	}
}

