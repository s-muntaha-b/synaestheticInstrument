class Key {

  PVector position;
  float size;
  int life = 0;
  int lifetime = 13000;
  boolean alive = true;
  float delta;
  
  float r = random(255);
  float g = random(255);
  float b = random(255);
 // r g b referenced from https://happycoding.io/examples/processing/for-loops/random-colors

  
  Key(int _x, int _y, int _size) {
    position = new PVector(_x, _y);
    size = _size;
    delta = size / 100.0;    
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
    ellipse(position.x, position.y, size, size);
  }
  
  void run() {
    update();
    draw();
  }
  
}
