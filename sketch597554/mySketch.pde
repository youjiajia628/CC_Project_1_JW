int option = 0;
float a;
float b;
float c;
float d;

void setup(){
  size (800, 800); 
}

void draw(){
  frameRate(3);
  background(157, 201, 211);
  
  a = width/2;
  b = height/2;
  c = 85;
  d = 85;
  
  if (option == 0){
    drawCircle(a, b, c, d);  
   }
   
   
   if (option == 1){
    for (int a = 100; a < 800; a += 100){
      for (int b = 100; b < 800; b += 100){
        drawCircle (a, b, c, d);
      }
    }
  }
  
  
   if (option == 2){
    c = 100;
    d = 100;
    for (int a = 100; a < 800; a += 50){
      for (int b = 100; b < 800; b += 45){
        drawCircle (a, b, c, d);
      }
    }
  }
  
  if (option == 3){
    c = 135;
    d = 135;
    for (int a = 100; a < 800; a += 50){
      for (int b = 150; b < 800; b += 25){
        drawCircle (a, b, c, d);
      }
    }
  }
  
   if (option == 4){
    c = 150;
    d = 180;
    for (int a = 200; a < 800; a += 46){
      for (int b = 180; b < 800; b += 68){
        drawCircle (a, b, c, d);
      }
    }
  }
  
    if (option == 5){
    c = 200;
    d = 200;
    for (int a = 50; a < 800; a += 50){
      for (int b = 66; b < 800; b += 100){
        drawCircle (a, b, c, d);
      }
    }
  }
  
  if (option == 6){
    c = 25;
    d = 25;
    for (int a = 100; a < 800; a += 80){
      for (int b = 100; b < 800; b += 80){
        drawCircle (a, b, c, d);
      }
    }
  }
  
   
}

void keyPressed(){
  option += 1; 
  if(option > 7){
    option =1; 
  } 
}

void drawCircle(float a, float b, float c, float d){

  strokeWeight(1.5);
  stroke (15, 70, 140, 100);
  fill(92, 150, 239, random(98));
  ellipse(a, b, c, d);
  
}