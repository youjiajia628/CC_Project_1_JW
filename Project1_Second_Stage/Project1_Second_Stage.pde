//This is a drawing tool with 5 different patterns, and in the end you can erase 
//everything and re-start :D


//set a variable
int option = 0;
int[] xpos = new int[500];
int[] ypos = new int[500];


void setup() {
  size(1000, 1000);
  background(0, 11, 84);
  for (int i=0; i < xpos.length; i++ ){
            xpos[i] = 0;
            ypos[i] = 0;
  }
}


void draw() {
   //frameRate(25);
   strokeWeight(2.5); 
         if (option == 3){
               for (int i = 0; i< xpos.length-1; i++){
                          xpos[i] = xpos[i + 1];
                          ypos[i] = ypos[i + 1]; 
                        } 
                     
                 xpos[xpos.length-1] = mouseX;
                 ypos[ypos.length-1] = mouseY;
                 
                 for (int i=0; i < xpos.length; i++ ){
                 noStroke();
                 fill(19, 92, random(173), random(30));
                 ellipse(xpos[i], ypos[i], random(90), random(90));
                         }
            }
     
      
            if(option == 4){
                   pushMatrix();
                   stroke(255);
                   for(int i = 0; i<50; i += 2){
                   point(mouseX+i, mouseY+i);
                    } 
               popMatrix(); 
            }  //pattern 5  
            
            
            //Erasing and restart
            if(option == 5){
              pushMatrix();
              translate(mouseX, mouseY);
              for (float erase = 0; erase < 10; erase ++){
                     noStroke();
                     fill(0, 11, 84);
                     ellipse(mouseX, mouseY, 200, 200);
                      } 
               popMatrix(); 
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
            rotate(radians(150)); 
                    for (int i = 3; i< 25; i ++){
                       fill(104,157,205,random(20));
                       stroke (74, 78, 87,70);
                       ellipse(80, 80, i*10, i*10);   
                         }
                      }
          popMatrix();
        }//pattern2
        
       
   if(option == 2){
      pushMatrix();
      translate(mouseX, mouseY);
            for (int i = 3; i< 25; i ++){
                       fill(134,225,227,random(30));
                       stroke (56, 16, 166, 50);
                       ellipse(30, 30, i*15, i*15);
                     }
      popMatrix();
    }  //pattern3   
} 


//  pattern4 is in the draw //
 
//  pattern5 is in the draw // 
 
//Erasing and restart are in the draw //

      

void keyPressed(){
      option += 1; 
        if(option > 5){  
         option =0; 
      }  
   }
  
 
