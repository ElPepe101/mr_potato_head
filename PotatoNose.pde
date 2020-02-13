class Nose {
  private PVector pos;
  private PVector size;

  Nose() {
    size = new PVector(40, 75);
  }
  
  Nose(int w, int h) {
    size = new PVector(constrain(w, 10, 40), constrain(h, 30, 75));
  }
  
  void setPosition(PVector _pos) {
    pos = _pos;
  }
  
  void draw(float deg) {
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(deg);

    fill(160, 94, 27);
    ellipse(0, 3, size.x, size.y * 1.1);
    ellipse(- size.x / 3, size.y / 4, size.x * .9, size.y * .7);
    ellipse(size.x / 3, size.y / 4, size.x * .9, size.y * .7);
    popMatrix();
  }
}
