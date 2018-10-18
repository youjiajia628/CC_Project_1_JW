int circleX = 0;
int circleY = 400;
int circleX1 = 0;
int circleY1 = 200;

int circleXblue = 0;
int circleYblue = 300;
int circleXpink = 0;
int circleYpink = 100;

int rectX1 = 300;
int rectY1 = 600;

float earR; float earG; float earB;

void setup(){
  // Set the size of the window 
  size(600,600);
}

void draw(){
  
  //Draw a background
  background(194, 220, 237);
  
  translate(mouseX, mouseY);
  
  //Rectangle 1
  noStroke();
  fill(11, 189, 155, 115);
  if (rectY1 >= 600){
    rectY1 = 0;
  }
  rect(rectX1, rectY1, 400, 360);
  rectY1 = rectY1 + 5;
  
  //Circle 
   noStroke();
   fill(229, 232, 130);
   if (circleX >= 600){
    circleX = 0;
   }
   ellipse (circleX, circleY, 80, 80);
   circleX = circleX + 2;
   
  //Circle 1
   noStroke();
   fill(229, 232, 130);
   if (circleX1 >= 600){
     circleX1 = 0;
   }
   ellipse (circleX1, circleY1, 60, 60);
   circleX1 = circleX1 + 3;
   
   //Circle Blue
   noStroke();
   fill(107, 204, 247);
   if (circleXblue >= 600){
      circleXblue = 0; 
    }
   ellipse(circleXblue, circleYblue, 50,50);
   circleXblue = circleXblue + 4;
   
   //Circle Pink
   noStroke();
   fill(247, 67, 169);
   if (circleXpink >= 600){
     circleXpink = 0;
   }
   ellipse(circleXpink, circleYpink, 70, 70);
   circleXpink = circleXpink + 5;
  
   
  strokeWeight(4.5);
  
  //stroke(229, 232, 130);
  //line(pmouseX, pmouseY, mouseX, mouseY);
  
  //Set CENTER mode
  ellipseMode(CENTER);
  rectMode(CENTER);
  
  //Draw boba's body
  stroke(229, 86, 150);
  fill(225, 134, 152);
  ellipse(300, 428, 150, 165);
  
  //Draw boba's head
  stroke(229, 86, 150);
  fill(225, 134, 152);
  ellipse(300, 300, 280, 280);
  
  //Draw boba's left ear 
  stroke(225, 182, 30);
  earR = random (255);
  earG = random (255);
  earB = random (255);
  fill(earR, earG, earB, 120);
  triangle(260, 200, 150, 120, 175, 270);
  //Draw boba's right ear
  triangle(340, 200, 450, 120, 425, 270);
  
  //Draw boba's eyes
  //white
  noStroke();
  fill(225);
  ellipse(225, 320, 30, 100);
  ellipse(375, 320, 30, 100);
  //left black
  noStroke();
  fill(20, 22, 23);
  ellipse(225, 340, 17, 50);
  //right black
  noStroke();
  fill(20, 22, 23);
  ellipse(375, 340, 17, 50);
  
  //Draw boba's nose
  noStroke();
  fill(225, 230, 177);
  ellipse(300, 390, 20, 20);
  
  //Draw boba's month
  stroke(225, 230, 177);
  line(280, 410, 320, 410);
  
  //Draw boba's hands
  stroke(229, 86, 150);
  fill(247, 177, 205);
  ellipse(225, 443, 35, 35);
  ellipse(375, 443, 35, 35);
  
  //Draw boba's legs
  stroke(229, 86, 150);
  fill(earR, earG, earB);
  ellipse(235, 500, 60, 60);
  ellipse(365, 500, 60, 60);
  
  
}