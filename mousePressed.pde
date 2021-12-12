void mouseDragged() {
  pitch = int(map(pmouseY, height, 0, 0, 127));
  velocity = int(map(pmouseX, 0, width, 0, 127));
  myBus.sendNoteOn(channel, pitch, velocity); // Send a Midi noteOn
  
  keys.add(new Key(pmouseX, pmouseY, velocity + 10));
  }
 
 void mouseClicked() {
  pitch = int(map(pmouseY, height, 0, 0, 127));
  velocity = int(map(pmouseX, 0, width, 0, 127));
  myBus.sendNoteOn(channel, pitch, velocity); // Send a Midi noteOn
  
  keys.add(new Key(pmouseX, pmouseY, velocity + 10));
  }


void mouseReleased() {
  myBus.sendNoteOff(channel, pitch, velocity); // Send a Midi nodeOff
}
