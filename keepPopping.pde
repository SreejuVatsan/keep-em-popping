import g4p_controls.*;
import processing.serial.*;
import cc.arduino.*;
import processing.sound.*;

Arduino arduino;

Balloon b[] = new Balloon[5];
PFont f;
Boolean flying = true;
int score;
String inputType = "";

SoundFile popSoundFile;
AudioIn in;
Amplitude amp;

void setup() {
	in = new AudioIn(this, 0);
    amp = new Amplitude(this);
    in.start();
    amp.input(in);

	arduino = new Arduino(this, Arduino.list()[0], 57600);
	size(500,500);
	frameRate(21);

	f = createFont("Silom-48.vlw",32,true);
	textFont(f);

	// f = createFont("Arial",48,true);
	// textFont(f,16);

	//reset();
	createGUI();
}

void inputSelect(){
	inputType = "";
	panel1.setVisible(true);
	
}

void reset(){
	for (int i = 0; i < 5; i++) {
		popSoundFile = new SoundFile(this,"balloon-pop.wav");
		b[i] = new Balloon(int(random(70, (width - (width/20)))), color(random(255),random(255),random(255)));	
		//b[i] = new Balloon(int(random(70, (width - (width/20)))), #6c57ff);	
		b[i].init();
		score = 0;
	}
}

void draw() {

  background(#fec141);

	if (inputType != "") {
	  	if (flying == false) {
	  		fill(100);
	  		text("You Loose!!! :D :D :D",85,200);
	  		text("Your score : " + score,140,250);
	  		text("Hit r / R key to try again",60,300);
	  		fill(255);
	  		text("You Loose!!! :D :D :D",85-2,200-2);
	  		text("Your score : " + score,140-2,250-2);
	  		text("Hit r / R key to try again",60-2,300-2);
	  		/*fill(0);
	  		text("You Loose!!! :D :D :D",100,100);
	  		text("Your score : " + score,100,150);
	  		text("Hit r / R key to replay",100,170);*/
	  	}
	  	else {
			//b.init();
			for (int i = 0; i < 5; i++) {
				b[i].show();
				b[i].inflate();
				b[i].fly();
			}
		}
	}


if (keyPressed) {
	if ((key == 'r' ) || (key == 'R')) {
		flying = true;
			//reset();
			inputSelect();
		}
	}
	
	//println("input type - " + inputType);

	//println("flying" + flying);
}