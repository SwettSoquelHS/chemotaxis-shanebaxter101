Bacteria test;
Bacteria[] group;
 void setup()  
 {     
 	test = new Bacteria(400, 400, 60, 170); 
   size(900, 900);
   background(0);
   frameRate(20);
   group = new Bacteria[100];
   for(int i=0; i < group.length; i++){
     int x = (int)(Math.random() * width);
     int y = (int)(Math.random() * height);
     group[i] = new Bacteria(x, y, 60, 170);
   }
 }   
 void draw()   
 {
  background(0);
 	//move and show the bacteria 
  test.move();
  test.show();
  
  for(int i=0; i<group.length; i++){
    group[i].move();
    group[i].show();
  }
 }  
 
 void mousePressed(){
   test.changeShade();
   for(int i=0; i<group.length; i++){
     group[i].changeShade();
   }
 }
 class Bacteria    
 {     
  int x_pos;
  int y_pos;
  int red;
  int green;
  int randX;
  int randY;
  int shade;
  
  Bacteria(int x, int y, int r, int g){
    x_pos = x;
    y_pos = y;
    red = r;
    green = g;
    
  }
  
  void move(){
    if(mouseX <= 450)
      randX = randX + (int)(10 * Math.random() - 5) - (mouseX - (mouseX - 10));
    else
      randX = randX + (int)(10 * Math.random() - 5) + (mouseX - (mouseX - 10));
    if(mouseY <= 450)
      randY = randY +  (int)(10 * Math.random() - 5) - (mouseY - (mouseY - 10));
     else
       randY = randY +  (int)(10 * Math.random() - 5) + (mouseY - (mouseY - 10));
    
  }
  
  void changeShade(){
    shade = (int)(255 * Math.random());
  }
  
  void show(){
    fill(red, green, shade);
    ellipse(x_pos + randX, y_pos + randY, 40, 40);
  }
 }
 
