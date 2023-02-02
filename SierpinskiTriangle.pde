public void setup(){
  size (600,600);
  background(112, 88, 107);
}


public void draw(){
 sierpinski(0,600,600);
}


public void sierpinski(int x, int y, int len){
if (len <= 20){
    fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256)); 
    frameRate(5); 
     triangle(x, y, x+len, y, x+len/2, y-len*(float)(Math.sqrt(3)/2)); //top left right 
 }
  
  else {//more than one recursive call 
   sierpinski(x,y,len/2); 
   sierpinski(x+len/2, y, len/2); 
   sierpinski(x+len/4, y-len/2, len/2); 
  }
}
