
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

void setup() {
  size(430, 470);
  noLoop();
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
  text("sum = " + sum, 190, 450);
}

void mousePressed() {
  redraw();
}
