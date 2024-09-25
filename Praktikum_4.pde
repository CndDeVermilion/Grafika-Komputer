void setup(){
  size(1000,500);
  //background(0);
}
void draw(){
  smooth();
  stroke(0);
  
  //lingkaran biru
  strokeWeight(10);
  fill(0, 139, 215);
  ellipse(500,500,900,900);
  
  //lingkaran putih
  noStroke();
  fill(225);
  ellipse(500,500,680,680);
  
  //mata kiri
  stroke(1);
  ellipse(400,230,180,220);
  
  //bola mata kiri
  noStroke();
  fill(0);
  ellipse(450,230,60,70);
  
  //bola mata warna putih kiri
  noStroke();
  fill(  #FFFAF0);
  ellipse(455,230,10,15);
  
  //mata kanan
  stroke(1);
  ellipse(580,230,180,220);
  
  //bola mata kanan
  noStroke();
  fill(0);
  ellipse(533,230,60,70);
  
  //bola mata warna putih kanan
  noStroke();
  fill(  #FFFAF0);
  ellipse(525,230,10,15);
  
  //hidung
  stroke(1);
  fill(220, 20, 60);
  ellipse(490,370,100,120);
  
  //garis hidung
  line(490,500,490,440);
  line(100,420,450,460);
  line(100,480,450,510);
  line(900,420,530,458);
  line(900,480,530,508);
  
}
