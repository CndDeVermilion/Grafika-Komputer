import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer player;

float x, y;
float speed;
PFont teks;
PVector[] stars;

void setup() {
  size(800, 600);
  x = 0;
  //ketinggian UFO
  y = height / 4;
  //kecepatan UFO
  speed = 2;
  //teks
  teks = loadFont("Cambria-Bold-48.vlw");
  textFont(teks);
  
  // Membuat bintang
  stars = new PVector[100];
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new PVector(random(width), random(height / 2));
  }
  
  //menambahkan musik
  minim = new Minim(this);
  player = minim.loadFile("Distant Echoes.mp3");
  player.loop();
}

void draw() {
  background(0); 
  
  // Menggambar bintang
  fill(255);
  for (int i = 0; i < stars.length; i++) {
    ellipse(stars[i].x, stars[i].y, 2, 2);
  }
  
  // Gedung 1
  fill(100);
  rect(50, 400, 100, 200); // Sisi depan
  fill(70);
  rect(130, 400, 20, 200); // Sisi samping
  fill(255, 204, 0);
  // Jendela gedung 1 sisi depan
  rect(60, 410, 20, 20);
  rect(100, 410, 20, 20);
  rect(60, 450, 20, 20);
  rect(100, 450, 20, 20);
  rect(60, 490, 20, 20);
  rect(100, 490, 20, 20);
  rect(60, 530, 20, 20);
  rect(100, 530, 20, 20);

  // Gedung 2
  fill(100);
  rect(200, 350, 100, 250); // Sisi depan
  fill(70);
  rect(280, 350, 20, 250); // Sisi samping
  fill(255, 204, 0);
  // Jendela gedung 2 sisi depan
  rect(210, 360, 20, 20);
  rect(250, 360, 20, 20);
  rect(210, 400, 20, 20);
  rect(250, 400, 20, 20);
  rect(210, 440, 20, 20);
  rect(250, 440, 20, 20);
  rect(210, 480, 20, 20);
  rect(250, 480, 20, 20);
  rect(210, 520, 20, 20);
  rect(250, 520, 20, 20);

  // Gedung 3
  fill(100);
  rect(350, 300, 100, 300); // Sisi depan
  fill(70);
  rect(430, 300, 20, 300); // Sisi samping
  fill(255, 204, 0);
  // Jendela gedung 3 sisi depan
  rect(360, 310, 20, 20);
  rect(400, 310, 20, 20);
  rect(360, 350, 20, 20);
  rect(400, 350, 20, 20);
  rect(360, 390, 20, 20);
  rect(400, 390, 20, 20);
  rect(360, 430, 20, 20);
  rect(400, 430, 20, 20);
  rect(360, 470, 20, 20);
  rect(400, 470, 20, 20);
  rect(360, 510, 20, 20);
  rect(400, 510, 20, 20);
  rect(360, 550, 20, 20);
  rect(400, 550, 20, 20);

  // Gedung 4
  fill(100);
  rect(500, 450, 100, 150); // Sisi depan
  fill(70);
  rect(580, 450, 20, 150); // Sisi samping
  fill(255, 204, 0);
  // Jendela gedung 4 sisi depan
  rect(510, 460, 20, 20);
  rect(550, 460, 20, 20);
  rect(510, 500, 20, 20);
  rect(550, 500, 20, 20);
  rect(510, 540, 20, 20);
  rect(550, 540, 20, 20);

  // Gedung 5
  fill(100);
  rect(650, 400, 100, 200); // Sisi depan
  fill(70);
  rect(730, 400, 20, 200); // Sisi samping
  fill(255, 204, 0);
  // Jendela gedung 5 sisi depan
  rect(660, 410, 20, 20);
  rect(700, 410, 20, 20);
  rect(660, 450, 20, 20);
  rect(700, 450, 20, 20);
  rect(660, 490, 20, 20);
  rect(700, 490, 20, 20);
  rect(660, 530, 20, 20);
  rect(700, 530, 20, 20);

  // Tulisan 
  fill(255, 0, 0);
  textSize(30);
  text("UFO, Misteri Luar Angkasa atau Teknologi Canggih?", 45, 100);

  // Animasi UFO
  drawUFO(x, y);
  x += speed;
  if (x > width) {
    x = -100;
  }
}

void drawUFO(float x, float y) {
  fill(0, 0, 255);
  noStroke();
  
  // Badan UFO
  ellipse(x, y, 60, 20);
  
  // Kubah UFO
  fill(100);
  ellipse(x, y - 10, 40, 20);
}

void stop() {
  player.close();
  minim.stop();
  super.stop();
}
