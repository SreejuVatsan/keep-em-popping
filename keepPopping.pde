import processing.sound.*;


Balloon b[] = new Balloon[5];
PFont f;
Boolean flying = true;
int score;
SoundFile popSoundFile;

void setup() {
	size(500,500);
	frameRate(21);
	f = createFont("Silom-48.vlw",32,true);
	textFont(f);
	reset();
}

void reset(){
	//b = new Balloon(int(random(70, (width - (width/20)))), #6c57ff);	
	//b.init();
	for (int i = 0; i < 5; i++) {
		b[i] = new Balloon(int(random(70, (width - (width/20)))), color(random(255),random(255),random(255)));	
		b[i].init();
		score = 0;
		popSoundFile = new SoundFile(this,"balloon-pop.wav");
	}
}	

void draw() {
	background(#fec141);
	
	if (flying == false) {
		fill(100);
		text("You Loose!!! :D :D :D",100,100);
		text("Your score : " + score,100,150);
		text("Hit r / R key to replay",100,200);
		fill(255);
		text("You Loose!!! :D :D :D",100-2,100-2);
		text("Your score : " + score,100-2,150-2);
		text("Hit r / R key to replay",100-2,200-2);
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
	

	//println("flying" + flying);
}