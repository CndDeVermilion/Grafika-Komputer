PFont teks;
PImage foto;

void setup(){
  size(1000,500);
  smooth();
  teks = loadFont ("MongolianBaiti-48.vlw");
  textFont(teks);
  foto = loadImage("5.jpg");
}
void draw(){
  background(#B22222);
  textSize(30);
  text("Biodata",460,80);
  text("Nama               : Yudi Candra",50,150);
  text("Nim                 : 232210028",50,190);
  text("Kelas/Semester : B / IV",50,230);
  text("TTL                : 05 Desember 2003",50,270);
  text("Hobby              : Baca Komik",50,310);
  image (foto, 680,120);
  
  
}
