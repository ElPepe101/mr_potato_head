class Teeth {
  private PVector pos;
  private PVector size;
  
  Teeth() {
    size = new PVector(200, 100);
  }
  
  Teeth(int w, int h) {
    size = new PVector(constrain(w, 140, 200), constrain(h, 60, 100));
  }
  
  void setPosition(PVector _pos) {
    pos = _pos;
  }
  
  void draw() {
    pushMatrix();
    translate(pos.x, pos.y);
    noStroke();

    fill(0);
    rect(-size.x / 2, 0, size.x, size.y / 2, size.x * .1);
    
    fill(255);
    arc(0, 0, size.x, size.y / 2, radians(-20), radians(200));

    fill(0);
    rect(-size.x / 14, 3, size.x / 7, size.y / 2 - 3);
    popMatrix();
  }
}
