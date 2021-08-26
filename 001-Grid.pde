int xNum = 10;
int yNum = 10;
int rSeed = 100;

void setup(){
  size(800, 800);
}

void draw(){
  colorMode(HSB, 360, 100, 100);
  background(320);
  randomSeed(rSeed);
  
  float xStep = float(width) / float(xNum);
  float yStep = float(height) / float(yNum);
  
  for (int i = 0; i < xNum; i++){
    for (int j = 0; j < yNum; j++){
      float xPos = i * xStep;
      float yPos = j * yStep;
      pushMatrix();
      
      float hue = 170 + random(150);
      float sat = 50 + random(30);
      float bri = 70 + random(30);
      float alpha = 50 + random(50);
      
      color fillColor = color(hue, sat, bri);
      fill(fillColor, alpha);
      noStroke();
      translate(xPos, yPos);
      shearX(random(1) * PI / 10 - PI / 20);
      shearY(random(1) * PI / 10 - PI / 20);
      rect(0, 0, xStep, yStep, 10 + random(10));
      
      fill(320);
      shearX(random(1) * PI / 8 - PI / 16);
      shearY(random(1) * PI / 8 - PI / 16);
      rect(xStep/4, yStep/4, xStep/2, yStep/2, 5 + random(5));
      popMatrix();
    }
  }
}

void mouseWheel(){
  rSeed = int(random(1000));
}
