class Hat {
  private PVector pos;
  private PVector size;

  Hat() {
    size = new PVector(160, 40);
  }
  
  Hat(int w, int h) {
    size = new PVector(constrain(w, 100, 160), constrain(h, 10, 40));
  }
  
  void setPosition(PVector _pos) {
    pos = _pos;
  }

  void draw() {
    fill(40);
    arc(pos.x, pos.y, size.x * .65, size.y * 1.5, radians(-180), radians(0));
    rect(pos.x - size.x / 2, pos.y, size.x, size.y * .4, size.x * .1);
  }
}
