class Explosion{
	color myColorInside;
	color myColorOutside;
	double xOneOut, xTwoOut, xThreeOut, yOneOut, yTwoOut, yThreeOut;
	double xOneIn, xTwoIn, xThreeIn, yOneIn, yTwoIn, yThreeIn;
	public Explosion(int size, double x, double y){
		myColorOutside = color(255, 102, 0);
		myColorInside = color(255, 212, 124);
		xOneOut = x - 3*size;
		xTwoOut = x;
		xThreeOut = x + 3*size;
		yOneOut = y + 3*size;
		yTwoOut = y - 3*size;
		yThreeOut = y + 3*size;
		xOneIn = x - 2*size;
		xTwoIn = x;
		xThreeIn = x + 2*size;
		yOneIn = y + 2*size;
		yTwoIn = y - 2*size;
		yThreeIn = y + 2*size;
	}
	public void show(){
		fill(myColorOutside);
		triangle((int)xOneOut, (int)yOneOut, (int)xTwoOut, (int)yTwoOut, (int)xThreeOut, (int)yThreeOut);
		fill(myColorInside);
		triangle((int)xOneIn, (int)yOneIn, (int)xTwoIn, (int)yTwoIn, (int)xThreeIn, (int)yThreeIn);
	}
}