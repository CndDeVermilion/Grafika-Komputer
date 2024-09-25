import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

AudioPlayer lagu;
Minim minim;

void setup(){
  size(500, 500); 
  minim = new Minim(this);
  lagu = minim.loadFile("LATHI (R3HAB Remix).mp3");
  lagu.play();
}

void draw(){
  background(#A20000);
  stroke(#FFF303);
  strokeWeight(5);
  noFill();
  
  float[] buffer = lagu.mix.toArray();
  float radius = min(width, height) / 2 - 50;  // membuat bentuk lingkaran
  float centerX = width / 2;
  float centerY = height / 2;
  
  // bentuk lingkaran
  beginShape();
  for (int i = 0; i < buffer.length; i++){
    float angle = map(i, 0, buffer.length, 0, TWO_PI);
    float x = centerX + cos(angle) * (radius + buffer[i] * 100);
    float y = centerY + sin(angle) * (radius + buffer[i] * 100);
    vertex(x, y);
  }
  endShape(CLOSE);
}

void stop(){
  lagu.close();
  minim.stop();
  super.stop();
}
