class Key {

  PVector position, gif;
  
  float size;
  float delta;
  float r = random(255);
  float g = random(255);
  float b = random(255);
 // r g b referenced from https://happycoding.io/examples/processing/for-loops/random-colors
  
  int life = 0;
  int lifetime = 50000;
  
  boolean alive = true;

  Key(int _x, int _y, int _size) {
    position = new PVector(_x, _y);
    size = _size;
    delta = size / 75.0;    
    life = millis();
  }
  
  void update() {
    
    if (alive) {
      position.y += delta;
      if (millis() > life + lifetime) alive = false;
    }
  }
  
  void draw() {
    stroke(r, g, b);
    fill(r, g, b);
    arc(position.x, position.y, size, size, PI, TWO_PI); // Referenced from Processing Website (https://processing.org/examples/shapeprimitives.html)
  }
  
  void run() {
    update();
    draw();
  }
  
}
