<<<<<<< HEAD
import processing.sound.*;


=======
>>>>>>> 1c28a3a71067e7b356875b005445e9fc4f3fe96b
Balloon b[] = new Balloon[5];
PFont f;
Boolean flying = true;
int score;
<<<<<<< HEAD
SoundFile popSoundFile;
=======
>>>>>>> 1c28a3a71067e7b356875b005445e9fc4f3fe96b

void setup() {
	size(500,500);
	frameRate(21);
<<<<<<< HEAD
	f = createFont("Silom-48.vlw",32,true);
	textFont(f);
=======
	f = createFont("Arial",48,true);
	textFont(f,16);
>>>>>>> 1c28a3a71067e7b356875b005445e9fc4f3fe96b
	reset();
}

void reset(){
	//b = new Balloon(int(random(70, (width - (width/20)))), #6c57ff);	
	//b.init();
	for (int i = 0; i < 5; i++) {
<<<<<<< HEAD
		b[i] = new Balloon(int(random(70, (width - (width/20)))), color(random(255),random(255),random(255)));	
		b[i].init();
		score = 0;
		popSoundFile = new SoundFile(this,"balloon-pop.wav");
=======
		b[i] = new Balloon(int(random(70, (width - (width/20)))), #6c57ff);	
		b[i].init();
		score = 0;
>>>>>>> 1c28a3a71067e7b356875b005445e9fc4f3fe96b
	}
}	

void draw() {
	background(#fec141);
	
	if (flying == false) {
<<<<<<< HEAD
		fill(100);
		text("You Loose!!! :D :D :D",100,100);
		text("Your score : " + score,100,150);
		text("Hit r / R key to replay",100,200);
		fill(255);
		text("You Loose!!! :D :D :D",100-2,100-2);
		text("Your score : " + score,100-2,150-2);
		text("Hit r / R key to replay",100-2,200-2);
=======
		fill(0);
		text("You Loose!!! :D :D :D",100,100);
		text("Your score : " + score,100,150);
		text("Hit r / R key to replay",100,170);
>>>>>>> 1c28a3a71067e7b356875b005445e9fc4f3fe96b
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
	

<<<<<<< HEAD
	//println("flying" + flying);
=======
	println("flying" + flying);
>>>>>>> 1c28a3a71067e7b356875b005445e9fc4f3fe96b
}