class Dot {

  PVector position;
  float size;
  int birthtime = 0;
  int lifetime = 1000;
  boolean alive = true;
  float delta;
  float colours = random(255);
  
  Dot(int _x, int _y, int _size) {
    position = new PVector(_x, _y);
    size = _size;
    delta = size / 100.0;    
    birthtime = millis();
  }
  
  void update() {
    
    if (alive) {
      position.y += delta;
      if (millis() > birthtime + lifetime) alive = false;
    }
  }
  
  void draw() {
    noStroke();
    fill(colours);
    ellipse(position.x, position.y, size, size);
  }
  
  void run() {
    update();
    draw();
  }
  
}
