import themidibus.*;

MidiBus myBus;

int channel = 0;
int pitch, velocity;

ArrayList<Key> keys;

void setup() {
  size(1280, 700, P2D);

  MidiBus.list();
  myBus = new MidiBus(this, -1, 1); // Create a new MidiBus with no input device and the default Java Sound Synthesizer as the output device.
  keys = new ArrayList<Key>();
}

void draw() {
  background(0);
  
  for (int i=keys.size()-1; i>=0; i--) {
    Key dot = keys.get(i);
    if (dot.alive) {
      dot.run();
    } else {
      keys.remove(i);
    }
  }
}
