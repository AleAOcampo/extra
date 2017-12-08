PImage img;
int smallPoint, largePoint;

void setup() {
  size(1080, 720);
  img = loadImage("raiver.jpg");
  img.resize(0,700);
  smallPoint = 20;
  largePoint = 40;
  imageMode(CENTER);
  noStroke();
  background(255); 
  colorMode(HSB, width, height,100);
  noStroke();
}

void draw() { 
  float pointillize = map(mouseX, 0, width, smallPoint, largePoint);
  int x = int(random(img.width));
  int y = int(random(img.height));
  color pix = img.get(x, y);
  fill(pix, 150);
  ellipse(x,y,pointillize,pointillize);
  
  textSize(15);
  fill(0);
  noStroke();
  text("mueve el mouse a la izquierda y a la derecha para cambiar el tamaño de los puntos", 50, 700);
  
  textSize(10);
  text("adiós mundo cruel",900,710);
}