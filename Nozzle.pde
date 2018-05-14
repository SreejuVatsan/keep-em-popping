class Nozzle{
	
	color c;

	Nozzle(color col){
		c = col;
	}

	void show(int a, int b){
		fill(c);
		stroke(c);
		triangle(a, b, a+5, b+10, a-5, b+10);
	}//s

	
}