int iterations = 7;
float timer = 0;
float anchorX = 800/2;
float anchorY = 400;
public void setup() {
  size(800, 800);
  background(0);
  noFill();
}
float mult = 1;
public void draw() {
  background(0);

  anchorY = height-400 + 400*pow(2, timer) - 200;
  mult = 2*pow(2, timer-1);
  sierpinskii(iterations, anchorX, anchorY); 

  timer = (timer+0.03)%1;
}

public void sierpinskii(int n, float cX, float cY) {
  float r = width/pow(2, iterations-n+1)*mult;
  strokeWeight(iterations/4); 
  stroke(cX, (cY-200), width-cX, r*10);
  triangle(
    cX+cos(3*PI/2)*r, cY+sin(3*PI/2)*r, 
    cX+cos(PI/6)*r, cY+sin(PI/6)*r, 
    cX+cos(5*PI/6)*r, cY+sin(5*PI/6)*r
    );  
  if (n > 1) {
    sierpinskii(n-1, cX+cos(3*PI/2)*r/2, cY+sin(3*PI/2)*r/2);  
    sierpinskii(n-1, cX+cos(PI/6)*r/2, cY+sin(PI/6)*r/2);   
    sierpinskii(n-1, cX+cos(5*PI/6)*r/2, cY+sin(5*PI/6)*r/2);
  }
}
