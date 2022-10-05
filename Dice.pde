
class Dice {
  int rand = (int)(Math.random()*6)+1;
  int ex, why;
  Dice(int x, int y) {
    roll();
    ex = x;
    why = y;
  }
  void roll() {
    
  }
  void show() {
    fill(130, (int)(Math.random()*100)+100, 180);
    stroke(1);
    rect(ex, why, 50, 50, 10);
    fill(100, (int)(Math.random()*100)+50, 150);
    if(rand == 1)
      ellipse(ex+25, why+25, 10, 10);
    else if(rand == 2){
      ellipse(ex+12, why+12, 10, 10);
      ellipse(ex+38, why+38, 10, 10);
    }
    else if(rand == 3){
      ellipse(ex+25, why+25, 10, 10);
      ellipse(ex+38, why+12, 10, 10);
      ellipse(ex+12, why+38, 10, 10);
    }
    else if(rand == 4){
      ellipse(ex+38, why+12, 10, 10);
      ellipse(ex+12, why+38, 10, 10);
      ellipse(ex+12, why+12, 10, 10);
      ellipse(ex+38, why+38, 10, 10);
    }
    else if(rand == 5){
      ellipse(ex+25, why+25, 10, 10);
      ellipse(ex+38, why+12, 10, 10);
      ellipse(ex+12, why+38, 10, 10);
      ellipse(ex+12, why+12, 10, 10);
      ellipse(ex+38, why+38, 10, 10);
    }
    else{
      ellipse(ex+12, why+25, 10, 10);
      ellipse(ex+38, why+25, 10, 10);
      ellipse(ex+38, why+12, 10, 10);
      ellipse(ex+12, why+38, 10, 10);
      ellipse(ex+12, why+12, 10, 10);
      ellipse(ex+38, why+38, 10, 10);
    }
  }
}
PImage img;
void setup() {
  size(430, 470);
  noLoop();
  img = loadImage("entwurf.png");
}
Dice yay;

void draw() {
  background(145, 190, 230);
  int sum = 0;
  for(int y = 10; y<430; y+= 60){
    for(int x = 10; x<430; x+= 60){
      yay = new Dice(x, y);
      yay.show();
      sum = sum + yay.rand;
    }
  }
  fill(0);
  textSize(13);
  text("sum = " + sum, 180, 450);
  if(sum >= 185){
    image(img, 82, 35, width/1.6, height/1.3);
    fill(145, 190, 230);
    noStroke();
    rect(50, 430, 300, 460);
    fill(0);
    textSize(15);
    text("BOO I promise the song in the footer is good", 45, 450);
  }
}

void mousePressed() {
  redraw();
}
