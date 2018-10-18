var boba1 = new Array(9);

function setup(){
  createCanvas(900,600);
  for(var i = 0; i < boba1.length; i++){
  boba1[i]= new BOBA(i*random(-38,220), i*random(-25,300));
  }
}

function draw(){
  frameRate(8);
  background(194, 220, 237);
  rotate(mouseX / 115.0);
  for(var i = 0; i < boba1.length; i++){
  boba1[i].display();
  boba1[i].moveDownward(random(-9,28));
  }
  
}




function BOBA(tempA, tempB){
	
  this.A = tempA;
  this.B = tempB;
  
  
  this.display = function(){
   
    strokeWeight(4.5);
    
   // Set CENTER mode
    ellipseMode(CENTER);
    rectMode(CENTER);
    
    //Draw boba's body
    stroke(229, 86, 150);
    fill(225, 134, 152);
    ellipse(300 + this.A, 428 + this.B, 150, 165);
    
    //Draw boba's head
    stroke(229, 86, 150);
    fill(225, 134, 152);
    ellipse(300 + this.A, 300 + this.B, 280, 280);
    
    //Draw boba's left ear 
    stroke(225, 182, 30);
    this.earR = random (255);
    this.earG = random (255);
    this.earB = random (255);
    fill(this.earR, this.earG, this.earB, 120);
    triangle(260 + this.A, 200 + this.B, 150 + this.A, 120 + this.B, 175 + this.A, 270 + this.B);
    //Draw boba's right ear
    triangle(340 + this.A, 200 + this.B, 450 + this.A, 120 + this.B, 425 + this.A, 270 + this.B);
    
    //Draw boba's eyes
    //white
    noStroke();
    this.eyeR = random (180,255);
    this.eyeG = random (180,255);
    this.eyeB = random (180,255);
    fill(this.eyeR, this.eyeG, this.eyeB);
    ellipse(225 + this.A, 320 + this.B, 30, 100);
    ellipse(375 + this.A, 320 + this.B, 30, 100);
    
    //left black
    noStroke();
    fill(20, 22, 23);
    ellipse(225 + this.A, 340 + this.B, 17, 50);
    //right black
    noStroke();
    fill(20, 22, 23);
    ellipse(375 + this.A, 340 + this.B, 17, 50);
    
    //Draw boba's nose
    noStroke();
    fill(225, 230, 177);
    ellipse(300 + this.A, 390 + this.B, 20, 20);
    
    //Draw boba's month
    stroke(225, 230, 177);
    line(280 + this.A, 410 + this.B, 320 + this.A, 410 + this.B);
    
    //Draw boba's hands
    stroke(229, 86, 150);
    fill(247, 177, 205);
    ellipse(225 + this.A, 443 + this.B, 35, 35);
    ellipse(375 + this.A, 443 + this.B, 35, 35);
    
    //Draw boba's legs
    stroke(229, 86, 150);
    fill(this.earR, this.earG, this.earB);
    ellipse(235 + this.A, 500 + this.B, 60, 60);
    ellipse(365 + this.A, 500 + this.B, 60, 60);
  }
  
  
  this.moveDownward = function(speed){ 
    this.B = this.B + speed;
    if(this.B>height){
      this.B = 0;
    }
  }

}