PImage gambar1;
PImage gambar2;
PImage gambar3;
PImage gambar4;

void setup(){
  size (440,440);
  gambar1 = loadImage("1.jpg");
  gambar2 = loadImage("2.jpg");
  gambar3 = loadImage("3.jpg");
  gambar4 = loadImage("4.jpg");
}
void draw(){
  background(0);
  image(gambar1, 10,10);
  image(gambar2, 220,10);
  image(gambar3, 10,220);
  image(gambar4, 220,220);
}
