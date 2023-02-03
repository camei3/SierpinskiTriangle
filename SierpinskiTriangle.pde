int iterations = 7;
float timer = 0;
public void setup() {
  size(800,800);
  background(0);
}

float anchorX = 800/2;
float anchorY = 400;

float mult = 1;
void draw() {
  background(0);
  strokeWeight(5);
  point(anchorX,anchorY);
  point(width/2,height/2);
  
  mult = 1*pow(2,1-0);
  
  
  anchorY = height-400 + 400*pow(2,timer) - 200;
  mult = 2*pow(2,timer-1);
  System.out.println(anchorY + "\n" + mult + "\n" + timer + "\n");
  stroke(255,255,255,100);  
  sierpinskii(iterations,anchorX,anchorY,mult); 

  //sierpinskii(iterations-1,400,400, 1);
  
  
  //stroke(255,0,0);
  //sierpinskii(iterations+1,400,3400,4);
  //stroke(205,50,0);
  //sierpinskii(iterations,400,1000,2);
  //stroke(155,100,0);
  //sierpinskii(iterations-1,400,400,1);  
  //stroke(100,155,0);
  //sierpinskii(iterations-2,400,250,0.5);
  //stroke(50,205,0);
  //sierpinskii(iterations-3,400,212.5,0.25);
  //stroke(0,255,0);
  //sierpinskii(iterations-4,400,203.375,0.125);
  timer = (timer+0.01)%1;
}


public void sierpinskii(int n, float cX, float cY, float scalar) {
  float r = width/pow(2,iterations-n+1)*scalar;
  noFill();
  strokeWeight(r/5); 
  stroke(255,255,255, 255-50*n);
  if (n <= 1) {     
    triangle(
      cX+cos(3*PI/2)*r,cY+sin(3*PI/2)*r,
      cX+cos(PI/6)*r,cY+sin(PI/6)*r,
      cX+cos(5*PI/6)*r,cY+sin(5*PI/6)*r
      );
  } else {
    sierpinskii(n-1, cX+cos(3*PI/2)*r/2,cY+sin(3*PI/2)*r/2, scalar);  
    sierpinskii(n-1, cX+cos(PI/6)*r/2,cY+sin(PI/6)*r/2, scalar);   
    sierpinskii(n-1, cX+cos(5*PI/6)*r/2,cY+sin(5*PI/6)*r/2, scalar);       
  }
}
