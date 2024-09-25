import ddf.minim.*;

PImage foto;
Minim minim;
AudioPlayer player;

String[] lyrics;
String[] times;
int currentIndex = 0;

void setup() {
  size(480, 600);
  textSize(14);
  textAlign(CENTER, CENTER);
  foto = loadImage("2.jpg");
  
  minim = new Minim(this);
  player = minim.loadFile("lagu.mpeg");

//timestamp lagunye
  times = new String[]{
    "00:00",
    "00:08",
    "00:16",
    "00:24",
    "00:31",
    "00:38",
    "00:41",
    "00:43",
    "00:46",
    "00:53",
    "00:58",
    "01:02",
    "01:07",
    "01:13",
  };

//masukan lirik lagu drunk text
  lyrics = new String[]{
    "Fifth of November, when I walked you homes",
    "That′s when I nearly said it,but then said Forget it, and froze",
    "Do you remember? You probably don't",
    "Cause the sparks in the sky took a hold of your eyes while we spoke",
    "Yesterday, drank way too much and stayed up too late",
    "Started to write what I wanna say",
    "Deleted the message",
    "But I still remember it said",
    "I wish I was who you drunk-texted at midnight",
    "Wish I was the reason you stay up 'til three, and you can't fall asleep",
    "Waiting for me to reply",
    "I wish I was more than just someone you walk by",
    "Wish I wasn't scared to be honest and open, instead of just hoping",
    "You'd feel what I'm feeling inside",
  };

  player.play();
}

void draw() {
  image (foto, 0,0);
  fill(255);
  int currentMillis = player.position();
  if (currentIndex < times.length - 1 && timeToMillis(times[currentIndex + 1]) <= currentMillis) {
    currentIndex++;
  }
  text(lyrics[currentIndex], width / 2, height / 2);
}
int timeToMillis(String time) {
  String[] parts = split(time, ':');
  int minutes = int(parts[0]);
  int seconds = int(parts[1]);
  return (minutes * 60 + seconds) * 1000;
}

void stop() {
  player.close();
  minim.stop();
  super.stop();
}
