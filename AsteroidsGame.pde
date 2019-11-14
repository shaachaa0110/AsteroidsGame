Star [] nightSky = new Star[100];
Spaceship mySpaceship;
public void setup() 
{
  size(600, 600);
  background(0);
  mySpaceship = new Spaceship();
  for(int i = 0; i < nightSky.length; i++){
  	nightSky[i] = new Star();
  }
}
public void draw() 
{
  background(255);
  mySpaceship.move();
  mySpaceship.show();
  for(int i = 0; i < nightSky.length; i++){
  	nightSky[i].show();
  }
}
public void keyPressed(){
	//should be a key listener
	if(key == 'c'){
		//turn left
		mySpaceship.turn(10);
	}
	if(key == 'v'){
		//turn right
		mySpaceship.turn(-10);
	}
	if(key == 'b'){
		//accelerate by a double
		mySpaceship.accelerate(0.5);
	}
	if(key == 'n'){
		//stop
		mySpaceship.setDirectionX(0);
		mySpaceship.setDirectionY(0);
	}
	if(key == 'm'){
		//hyperspace
		double centerDX = Math.random()*600;
		double centerDY = Math.random()*600;
		mySpaceship.setDirectionX(0);
		mySpaceship.setDirectionY(0);
		mySpaceship.setCenterX(centerDX);
		mySpaceship.setCenterY(centerDY);
	}
}

