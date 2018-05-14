class Balloon{
	//constructor
	int x, y/*, score = 0*/;
	color c;
	float inflation, speed;
	boolean popped;
	Nozzle nz;
	Balloon(int ix, color col){
		c = col;
		x = ix;
		nz = new Nozzle(col);		
		nz = new Nozzle(col);
		speed = random(3, 6);
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
			inputCheck(inputType);
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

	void inputCheck(String inputType){
		if(inputType == "mouse"){
		    if (mousePressed && (mouseButton == LEFT)) {
				if ((mouseX > (x-inflation*75)) && (mouseX < (x+inflation*75))) {
					if ((mouseY > (y-inflation*100)) && (mouseY < (y+inflation*100))) {
						popped = true;
						popSoundFile.play();						
					}
				}
			}
		}
		else if (inputType == "tap") {
			if (arduino.analogRead(0) > 10) {
				popped = true;
				popSoundFile.play();
			}
		}
		else if (inputType == "shout") {
			if((amp.analyze()*100) > 1.5){
			    popped = true;
				popSoundFile.play();
			}
		}
	}
	void inflate(){
		if (inflation < 1) {
			inflation += 0.1;
		}
	}
	Boolean fly(){		
		if (flying == true) {
			y -= speed;		
			if (y < -100) {
				flying = false;
				//init();				
			}
		}
		return flying;
	}
}