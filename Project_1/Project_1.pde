//set a variable
int option = 0;
int[] xpos = new int[500];
int[] ypos = new int[500];


void setup() {
  size(900, 900);
  background(115, 193, 222);
  for (int i=0; i < xpos.length; i++ ){
            xpos[i] = 0;
            ypos[i] = 0;
            }
}

void draw() {
   frameRate(25);
   strokeWeight(2.5); 
   if (option == 3){
   for (int i = 0; i< xpos.length-1; i++ ){
              xpos[i] = xpos[i + 1];
              ypos[i] = ypos[i + 1]; 
            } 
         
           xpos[xpos.length-1] = mouseX;
           ypos[ypos.length-1] = mouseY;
           
           for (int i=0; i < xpos.length; i++ ){
           noStroke();
           fill(67, 165, random(227));
           ellipse(xpos[i], ypos[i], 10, 10);
           
           }
      }

}


 
void mousePressed() {
  if(option == 0){
    pushMatrix();
    translate(mouseX, mouseY);
        for ( float pattern1 = 0; pattern1 < 10; pattern1 ++) { 
            rotate(radians(68)); 
              for (int i = 3; i<15; i ++){
                       fill(115,152,235,random(15));
                       stroke (66, 107, 204, 60);
                       ellipse(30, 30, i*15, i*15);      
         }
      }
    popMatrix();
   }//pattern1
   
   
   
   
   if(option == 1){
      pushMatrix();
      translate(mouseX, mouseY);
        for ( float pattern2 = 0; pattern2 < 10; pattern2 ++) { 
            rotate(radians(68)); 
                    for (int i = 3; i< 25; i ++){
                       fill(104,157,205,random(20));
                       stroke (76, 110, 205, 5);
                       ellipse(30, 30, i*15, i*15);   
                         }
                      }
          popMatrix();
        }//pattern2
        
    
        
        
        
   if(option == 2){
      pushMatrix();
      translate(mouseX, mouseY);
            for (int i = 3; i< 35; i ++){
                       fill(134,225,227,random(30));
                       stroke (56, 16, 166, 60);
                       ellipse(30, 30, i*15, i*15);
                     }
      popMatrix();
    }  //pattern3   
  
 if(option == 3){
      pushMatrix();
      translate(mouseX, mouseY);
      draw();
            
            
            
              
           
        
            
      popMatrix();
    }  //pattern4  
                
}
      

 
 
 void keyPressed(){
      option += 1; 
        if(option > 3){  
         option =0; 
      }  
   }
  
 
