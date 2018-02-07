Balloon b[] = new Balloon[5];
PFont f;
Boolean flying = true;
int score;

void setup() {
	size(500,500);
	frameRate(21);
	f = createFont("Arial",48,true);
	textFont(f,16);
	reset();
}

void reset(){
	//b = new Balloon(int(random(70, (width - (width/20)))), #6c57ff);	
	//b.init();
	for (int i = 0; i < 5; i++) {
		b[i] = new Balloon(int(random(70, (width - (width/20)))), #6c57ff);	
		b[i].init();
		score = 0;
	}
}	

void draw() {
	background(#fec141);
	
	if (flying == false) {
		fill(0);
		text("You Loose!!! :D :D :D",100,100);
		text("Your score : " + score,100,150);
		text("Hit r / R key to replay",100,170);
	}
	else {
		//b.init();
		for (int i = 0; i < 5; i++) {
			b[i].show();
			b[i].inflate();
			b[i].fly();
		}
	}

	if (keyPressed) {
		if ((key == 'r' ) || (key == 'R')) {
			flying = true;
			reset();
		}
	}
	

	println("flying" + flying);
}