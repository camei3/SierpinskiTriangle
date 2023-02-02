int iterations = 4;
public void setup() {
  size(800,800);
  background(0);
}

int anchorX = 800/2;
int anchorY = 800;
float mult = 1;
void draw() {
  background(0);
  strokeWeight(5);
  point(anchorX,anchorY);
  point(width/2,height/2);
  
  
  if (anchorY != height/2) {
    anchorY--;
  } else {
    anchorY = height;
  }
  mult = 200 + 50 * pow(4,1-(height-anchorY)/(height/2.0));
  System.out.println(mult + "\n" + anchorY);
  System.out.println(pow(4,1-(height-anchorY)/(height/2.0)));  
  sierpinskii(iterations,anchorX,anchorY,mult); 

  
  
  stroke(255,0,0);
  sierpinskii(iterations+1,400,3400,4);
  stroke(205,50,0);
  sierpinskii(iterations,400,1000,2);
  stroke(155,100,0);
  sierpinskii(iterations-1,400,400,1);  
  stroke(100,155,0);
  sierpinskii(iterations-2,400,250,0.5);
  stroke(50,205,0);
  sierpinskii(iterations-3,400,212.5,0.25);
  stroke(0,255,0);
  sierpinskii(iterations-4,400,203.375,0.125);  
  // i + 1 ; 9.125, 37.5,150,600,2400
  // i + 2 ; + 150 * 4 
}


public void sierpinskii(int n, float cX, float cY, float scalar) {
  float r = width/pow(2,iterations-n+1)*scalar;
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
    sierpinskii(n-1, cX+cos(3*PI/2)*r/2,cY+sin(3*PI/2)*r/2, scalar);  
    sierpinskii(n-1, cX+cos(PI/6)*r/2,cY+sin(PI/6)*r/2, scalar);   
    sierpinskii(n-1, cX+cos(5*PI/6)*r/2,cY+sin(5*PI/6)*r/2, scalar);       
  }
}
