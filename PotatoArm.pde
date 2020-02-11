class Arm {
  private PVector pos;
  private PVector start;
  private PVector end;
  
  Arm(String side) {
    if (side == "left") {
      start = new PVector(0, 0);
      end = new PVector(-50, 100);
    }
    
    if (side == "right") {
      start = new PVector(0, 0);
      end = new PVector(50, 100);
    }
  }
  
  void setPosition(PVector _pos) {
    pos = _pos;
  }

  void draw() {
    pushMatrix();
    translate(pos.x, pos.y);
    stroke(230);
    strokeWeight(16);
    line(start.x, start.y, end.x, end.y);
    line(end.x, end.y, start.x, end.y * 2);
    
    stroke(250);
    strokeWeight(13);
    line(start.x, start.y, end.x, end.y);
    line(end.x, end.y, start.x, end.y * 2);
    popMatrix();
  }
}
