int nilaiX = 40;
int nilaiY = 40;
int arahX = 3;
int arahY = 3;

void setup(){
  size(500,500);
}
void draw(){
  background(0);
  fill(0,255,0);
  noStroke();
  rect(nilaiX,nilaiY,40,40);
  nilaiX = nilaiX + arahX;
  if (nilaiX>width-20 || nilaiX <20){
    arahX = arahX*-1;
  } nilaiY = nilaiY + arahY;
  if (nilaiY>height-40 || nilaiY<40){
    arahY = arahY*-1;
  }
}
