//particle and universe class from starfield assignment
class Particle
{
	double myX, myY, mySpeed, myAngle;
	int myColor, mySize;
	Particle(int x, int y, int mySizePara, int myColorPara){
		mySize = mySizePara; //(int)(Math.random()*5);
		myX = x;
		myY = y;
		myAngle = Math.random()*2*Math.PI;
		mySpeed = Math.random()*1.5;
		myColor = myColorPara;
	}
	Particle(){
		mySize = (int)(Math.random()*5);
		myX = 100;
		myY = 100;
		myAngle = Math.random()*2*Math.PI;
		mySpeed = Math.random()*1.5;
		myColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
	}
	void show(){
		fill(myColor);
		ellipse((float)myX, (float)myY, mySize, mySize);
	}
	void move(){
		myX = myX + mySpeed*Math.cos(myAngle);
		myY = myY + mySpeed*Math.sin(myAngle);
	}
}

class Universe{
	Particle[] myParticles;
	Universe(){
		myParticles = new Particle[1000];
		int x = (int)(Math.random()*600);
		int y = (int)(Math.random()*600);
		for(int i = 0; i < myParticles.length; i++){
			myParticles[i] = new Particle(x, y, (int)(Math.random()*5), color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255)));
		}
	}
	void show(){
		for(int i = 0; i < myParticles.length; i++){
			myParticles[i].show();
			myParticles[i].move();
		}
	}
}

class OddballUniverse extends Universe
{
	OddballUniverse(){
		myParticles = new Particle[100];
		int x = (int)(Math.random()*600);
		int y = (int)(Math.random()*600);
		int myColorOddball = color(255, 204, 0);
		for(int i = 0; i < myParticles.length; i++){
			myParticles[i] = new Particle(x, y, (int)(Math.random()*10), myColorOddball);
		}
	}
	void show(){
		for(int i = 0; i < myParticles.length; i++){
			myParticles[i].show();
			myParticles[i].move();
		}	
	}
}