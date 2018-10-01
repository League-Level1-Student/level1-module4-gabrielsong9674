int frogX = 200;
int frogY = 370;
void setup(){
  size(400, 400);
}

void draw(){
  background(0, 255, 255);
  fill(0, 255, 0);
  ellipse(frogX, frogY, 30, 30);
  car1.moveRight();
  car1.display();
  if(car1.intersects(car1) == true){
    frogX = 200;
    frogY = 370;
  }
  car2.moveRight();
  car2.display();
  if(car2.intersects(car2) == true){
    frogX = 200;
    frogY = 370;
  }
  car3.moveLeft();
  car3.display();
  if(car3.intersects(car3) == true){
    frogX = 200;
    frogY = 370;
  }
  car4.moveLeft();
  car4.display();
  if(car4.intersects(car4) == true){
    frogX = 200;
    frogY = 370;
  }
}
Car car1 = new Car(360, 280, 80, 3);
Car car2 = new Car(30, 100, 100, 1);
Car car3 = new Car(300, 30, 60, 2);
Car car4 = new Car(30, 210, 120, 4); 
class Car {
  int carX, carY, carSize, carSpeed;
  Car (int carX, int carY, int carSize, int carSpeed){
    this.carX = carX;
    this.carY = carY;
    this.carSize = carSize;
    this.carSpeed = carSpeed;
  }
  boolean intersects(Car car) {
      if ((frogY > car.getY() && frogY < car.getY()+50) && (frogX > car.getX() && frogX < car.getX()+car.getSize()))
      {
             return true;
      }
      else 
      {
             return false;
      }
  }
  void display(){
    fill(0, 0, 0);
    rect(carX , carY, carSize, 50);
  }
  void moveLeft(){
    carX -= carSpeed;
    if(carX <= -120){
      carX = 390;
    }
  }
  void moveRight(){
    carX += carSpeed;
    if(carX >= 500){
      carX = -100;
    }
  }
  int getX(){
    return carX;
  }
  int getY(){
    return carY;
  }
  int getSize(){
    return carSize;
  }
}

void keyPressed(){
      if(key == CODED){
            if(keyCode == UP)
            {
                  //Frog Y position goes up
                  if(frogY >= 20){
                    frogY -=20;
                  }
                  
            }
            else if(keyCode == DOWN)
            {
                  //Frog Y position goes down 
                  if(frogY <= 380){
                  frogY +=20;
                  }
            }
            else if(keyCode == RIGHT)
            {
                  //Frog X position goes right
                  if(frogX <= 380){
                  frogX +=20;
                  }
            }
            else if(keyCode == LEFT)
            {
                  //Frog X position goes left
                  if(frogX >= 20){
                  frogX -=20;
                  }
            }
      }
}