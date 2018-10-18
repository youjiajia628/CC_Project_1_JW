int option = 0;


void setup() {
  size(900, 900);
  background(209, 186, 190);
}

void draw() {
   frameRate(10);
   strokeWeight(2.5); 
}




 
void mousePressed() {
  if(option == 0){
    pushMatrix();
    translate(mouseX, mouseY);

  for ( float pattern1 = 0; pattern1 < 10; pattern1++) { 
      rotate(radians(68)); 
    
          for (float centerY = 20; centerY <= 135 ; centerY+= 90) {
                          for (float centerX= 20; centerX <= centerY; centerX += 9) {
                              stroke(203, 209, 170, random(35,90));
                              fill(181, 55, random(160), random(77));
                              ellipse(centerX, centerY, centerX-3, centerY+6);
                              line(centerX, centerY, centerX+80, centerY+60);
                              line(centerX, centerY, centerX+80, centerY+120);
                              line(centerX, centerY, centerX+80, centerY+180);
                             } 
                           } 
      
        for (int pointA = 15; pointA <= 80; pointA +=5){
          beginShape(TRIANGLE_FAN);
          stroke(172, 201, 113, 60);
          strokeWeight(1.5);
          vertex(pointA, 50);
          vertex(pointA, 15);
          vertex(92, 45);
          vertex(pointA, 85);
          vertex(22, 45);
          vertex(pointA, 15);
          endShape();
         }
      }
    popMatrix();
   }//pattern1
   
   
   if(option == 1){
      pushMatrix();
      translate(mouseX, mouseY);
        for ( float pattern2 = 0; pattern2 < 10; pattern2 ++) { 
            rotate(radians(68)); 
                    for (int pointA = 5; pointA <= 300; pointA += 40){
                        beginShape(TRIANGLE_STRIP);
                        stroke(172, 201, 113, 60);
                        strokeWeight(1.5);
                        vertex(30, pointA);
                        vertex(40, 20);
                        vertex(50, pointA);
                        vertex(60, 20);
                        vertex(70, pointA);
                        vertex(80, 20);
                        vertex(90, pointA);
                        endShape();
                         }
                      }
          popMatrix();
        }//pattern2
        
        
   if(option == 2){
      pushMatrix();
      translate(mouseX, mouseY);
            for (int i = 3; i< 42; i ++){
                       fill(156,58,89,random(30));
                       stroke (172, 201, 113, 60);
                       ellipse(30, 30, i*15, i*15);
                     }
      popMatrix();
    }  //pattern3   
        
}
      

 
 
 void keyPressed(){
      option += 1; 
        if(option > 2){  
         option =0; 
      }  
   }