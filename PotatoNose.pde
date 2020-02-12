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
  
  void draw() {
    println("nose");
    fill(160, 94, 27);
    ellipse(pos.x, pos.y + 3, size.x, size.y * 1.1);
    ellipse(pos.x - size.x / 3, pos.y + size.y / 4, size.x * .9, size.y * .7);
    ellipse(pos.x + size.x / 3, pos.y + size.y / 4, size.x * .9, size.y * .7);
  }
}
