
public void setup() {
  size(800,800);
  background(0);
  sierpinski(2,width/2, height/2);
}

void draw() {
  
}


public void sierpinski(int n, float cX, float cY) {
  stroke(255);
  noFill();
  strokeWeight(5/n);
  if (n <= 1) {
    ellipse(cX,cY,500,500);
    triangle(
      cX+cos(3*PI/2)*n,cY+sin(3*PI/2)*n,
      cX+cos(PI/6)*n,cY+sin(PI/6)*n,
      cX+cos(5*PI/6)*n,cY+sin(5*PI/6)*n
      );
      System.out.println(sin(PI/2));
  } else {
    sierpinski(n-1, cX+cos(3*PI/2)*125/n,cY+sin(3*PI/2)*125/n);
    sierpinski(n-1, cX+cos(PI/6)*125/n,cY+sin(PI/6)*125/n);
    sierpinski(n-1, cX+cos(5*PI/6)*125/n,cY+sin(5*PI/6)*125/n);    
  }
}
