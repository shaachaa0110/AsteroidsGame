//initialize star array
Star [] nightSky = new Star[100];
//initialize universe array
Universe[] myUniverse;
//initialize spaceship object
Spaceship mySpaceship;
//initalize asteroid arraylist
ArrayList <Asteroid> asteroidList;
//new bullet
Bullet myFirstBullet;

public void setup() 
{
  size(600, 600);
  background(0);
  mySpaceship = new Spaceship();
  for(int i = 0; i < nightSky.length; i++){
  	nightSky[i] = new Star();
  }
  //make new array of universes which are arrays of particles
  myUniverse = new Universe[1];
	for(int i = 0; i < myUniverse.length; i++){
		myUniverse[i] = new Universe();
	}
  //make a new arraylist of asteroids
  asteroidList = new ArrayList <Asteroid>();
  for(int i = 0; i < 15; i++){
  	asteroidList.add(new Asteroid());
  }
  myFirstBullet = new Bullet(mySpaceship);
}
public void draw() 
{
  background(0);
  mySpaceship.move();
  mySpaceship.show();
  stroke(0);
  for(int i = 0; i < nightSky.length; i++){
  	nightSky[i].show();
  }
  for(int i = 0; i < myUniverse.length; i++){
		myUniverse[i].show();
  }
  //draws asteroids and removes them if they are hit by spaceship, maybe add an explosion class?
  for(int i = 0; i < asteroidList.size(); i++){
  	if(dist((int)(asteroidList.get(i).getCenterX()), (int)(asteroidList.get(i).getCenterY()), (int)(mySpaceship.getCenterX()), (int)(mySpaceship.getCenterY())) > 20){
  		asteroidList.get(i).show();
  		asteroidList.get(i).move();
  	}else{
  		asteroidList.remove(i);
  	}
  	//add a "you win, congrats!" at the end when asteroidsList.size() == 0, if that's the goal of our game
  }
  myFirstBullet.show();
}
public void keyPressed(){
	//should be a key listener
	if(key == 'c'){
		//turn right
		mySpaceship.turn(10);
	}
	if(key == 'v'){
		//turn left
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

