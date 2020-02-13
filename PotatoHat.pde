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

  void draw(float deg) {
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(radians(-90));
    rotate(deg);

    fill(40);
    arc(0, 0, size.x * .65, size.y * 1.5, radians(-180), radians(0));
    rect(-size.x / 2, 0, size.x, size.y * .4, size.x * .1);
    popMatrix();
  }
}
