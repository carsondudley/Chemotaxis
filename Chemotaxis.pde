Bacteria[] colony;

 void setup()   
 {     
   size(600, 600);
   background(0);
   colony = new Bacteria[1];
   
   for(int i = 0; i< colony.length; i++){
    colony[i] = new Bacteria(300,300); 
   }
 }   
 void draw()   
 {    
   for(int i = 0; i< colony.length; i++){
   colony[i].walk();
   colony[i].show();
   }
 
 }  
 void mousePressed() {
   background(0);
 }
 class Bacteria    
 {     
   int myX;
   int myY; 
   
   Bacteria(int x, int y){
     myX = x;
    myY = y;
   }
   
   void show(){
    ellipse(myX, myY, 20, 20); 
   }
                                                                
   void walk(){
    myY = myY + (int)(Math.random()*3)-1 + ((mouseY-myY)/50);
    myX = myX + (int)(Math.random()*3)-1 + ((mouseX-myX)/50);
   }
   
 }    
