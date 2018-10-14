int birdX = 450;
int birdY = 250;
float birdVelocity = .1;
float gravity = .1;
int pipeX = 0;
int upperPipeY = 0;
int lowerPipeY;
int upperPipeHeight = (int) random(100, 200);
int lowerPipeHeight = 5000;
int pipeGap = 200;
int pipeWidth = 50;
boolean intersectsPipes = false;
int score= 0;
void setup(){
  size(500, 500);
  lowerPipeY = upperPipeHeight + pipeGap;
}
void draw(){
  background(0, 255, 255);
  textSize(20);
  fill(0, 0, 0);
  text(score, 20, 20);
  fill(255, 0, 255);
  stroke(0, 0, 255);
  ellipse(birdX, birdY, 20, 20);
  birdY+=birdVelocity;
  birdVelocity+= gravity;
  teleportPipes();
  //ground
  fill(165, 113, 78);
  rect(0, 480, 500, 20);
   if(intersectsPipes == true || birdY >= 480){
    background(0, 0, 0);
    fill(255, 255, 255);
    textSize(32);
    text("Your score is " +score+ ".", 150, 250);
    pipeX = 0;
  }
}

void mousePressed(){
  birdVelocity = -5;
}

void teleportPipes(){
  fill(0, 250, 0);
  rect(pipeX, upperPipeY, pipeWidth, upperPipeHeight);
  pipeX+=5;
  if(pipeX == 500){
    pipeX = 20;
    score ++;
    upperPipeHeight = (int) random(100, 200);
    //lowerPipeHeight = 5000;
    lowerPipeY = upperPipeHeight + pipeGap;
  }
  rect(pipeX, lowerPipeY, pipeWidth, lowerPipeHeight);
  if(intersectsPipes() == true){
    intersectsPipes = true;
  }
 
}
boolean intersectsPipes() { 
     if (birdY < upperPipeHeight && birdX > pipeX && birdX < (pipeX+pipeWidth)){
          return true;
        }
     else if (birdY>lowerPipeY && birdX > pipeX && birdX < (pipeX+pipeWidth)) {
          return true;
        }
     else { 
       return false; 
   }
}