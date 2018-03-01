class Balloon{
	//constructor
	int x, y/*, score = 0*/;
	color c;
	float inflation;
	boolean popped;

	Nozzle nz;
	PopAnimation pa;

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
						popSoundFile.play();
						//popLines();
						pa = new PopAnimation(x, y);
						pa.showPopAnimation();
						//ellipse(x, y, x+15, y+25);						
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

	void popLines(){
		stroke(0);						
		strokeWeight(2);
		line(x+10, y, x+50, y);
		line(x, y+10, x, y+10);
		line(x-10, y, x-50, y);
		line(x, y-10, x, y-10);

	}

}