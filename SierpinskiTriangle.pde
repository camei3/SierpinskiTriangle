int iterations = 10;
public void setup() {
  size(800,800);
  background(0);
  sierpinski(iterations,width/2, height/2);
}

void draw() {
  
}


public void sierpinski(int n, float cX, float cY) {
  float r = width/pow(2,iterations-n+1);
  stroke(255);
  noFill();
  strokeWeight(r/5);
  if (n <= 1) {     
    triangle(
      cX+cos(3*PI/2)*r,cY+sin(3*PI/2)*r,
      cX+cos(PI/6)*r,cY+sin(PI/6)*r,
      cX+cos(5*PI/6)*r,cY+sin(5*PI/6)*r
      );
  } else {
    sierpinski(n-1, cX+cos(3*PI/2)*r/2,cY+sin(3*PI/2)*r/2);  
    sierpinski(n-1, cX+cos(PI/6)*r/2,cY+sin(PI/6)*r/2);   
    sierpinski(n-1, cX+cos(5*PI/6)*r/2,cY+sin(5*PI/6)*r/2);       
  }
}
