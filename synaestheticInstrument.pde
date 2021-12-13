import themidibus.*;

MidiBus myBus;

int velocity, pitch;
int channel = 0;


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
    Key key = keys.get(i);
    if (key.alive) {
      key.run();
    } else {
      keys.remove(i);
    }
  }
}
