class Balloon{
	//constructor
	int x, y/*, score = 0*/;
	color c;
	float inflation;
	boolean popped;

	Nozzle nz;

	Balloon(int ix, color col){
		c = col;
		x = ix;
		nz = new Nozzle(col);
	}

	//methods
	void init(){
		inflation = 0.1;
		//flying = true;
		popped = false;
		y = int(random(height/2, height));	
	}

	void show(){

		if (popped == false) {
			if (mousePressed && (mouseButton == LEFT)) {
				if ((mouseX > (x-inflation*75)) && (mouseX < (x+inflation*75))) {
					if ((mouseY > (y-inflation*100)) && (mouseY < (y+inflation*100))) {
						popped = true;
					}
				}
			}
			fill(c);
			stroke(c);
			ellipse(x, y, inflation*80, inflation*100);
			nz.show(x, y+int(inflation*50));	
		}
		else{
			popped = false;
			score++;
			x = int(random(70, (width - (width/20))));
			init();			
		}
	}

	void inflate(){
		if (inflation < 1) {
			inflation += 0.1;
		}
	}

	Boolean fly(){		
		if (flying == true) {
			y -= int(random(5, 10));		
			if (y < -100) {
				flying = false;
				//init();				
			}
		}
		return flying;
	}

}