void keyTyped() {
  int keyIndex = -1;
  if (key >= 'A' && key <= 'Z') {
    keyIndex = key - 'A';
     pitch = int(map(pmouseX, height, 0, 0, 127));
  velocity = int(map(pmouseX, 0, width, 0, 127));
  myBus.sendNoteOn(channel, pitch, velocity); // Send a Midi noteOn
  keys.add(new Key(pmouseX, pmouseY, velocity + 10)); 
  } else if (key >= 'a' && key <= 'z') {
    keyIndex = key - 'a';
  }
  if (keyIndex == -1) {
    // If it's not a letter key, clear the screen
    background(0);
  }
}
