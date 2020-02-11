class Feet {
  private PVector pos = new PVector();
  private PVector prev = new PVector();
  private PVector size;
  
  private boolean up = false;

  Feet() {
    size = new PVector(100, 80);
  }
  
  Feet(int w, int h) {
    size = new PVector(constrain(w, 100, 160), constrain(h, 10, 40));
  }
  
  void setPosition(PVector _pos) {
    pos = _pos;
  }

  void draw() {    
    if (prev.dist(pos) > 0) {
      prev = pos;
      up = !up;
    }

    fill(76, 149, 254);
    arc(pos.x + size.x / 2, pos.y + size.y / (up ? 3 : 4), size.x, size.y, radians(-180), radians(0));
    arc(pos.x - size.x / 2, pos.y + size.y / (up ? 4 : 3), size.x, size.y, radians(-180), radians(0));
  }
}
