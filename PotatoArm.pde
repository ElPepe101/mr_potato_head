class Arm {
  private PVector pos;
  private PVector start;
  private PVector end;
  
  Arm(String side) {
    if (side == "left") {
      start = new PVector(0, 0);
      end = new PVector(-50, 80);
    }
    
    if (side == "right") {
      start = new PVector(0, 0);
      end = new PVector(50, 80);
    }
  }
  
  void setPosition(PVector _pos) {
    pos = _pos;
  }

  void draw(float deg) {
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(deg);

    stroke(220);
    strokeWeight(16);
    line(start.x, start.y, end.x, end.y);
    stroke(235);
    line(end.x, end.y, start.x, end.y * 2);
    
    stroke(250);
    strokeWeight(13);
    line(start.x, start.y, end.x, end.y);
    line(end.x, end.y, start.x, end.y * 2);
    
    fill(250);
    stroke(235);
    strokeWeight(2);
    translate(start.x, end.y * 2);
    ellipse(0, 0, 40, 50);
    stroke(225);
    noFill();
    arc(-5, 10, 10, 25, radians(-30), radians(120));
    arc(3, 10, 10, 25, radians(-30), radians(120));
    arc(11, 10, 10, 25, radians(-30), radians(120));
    popMatrix();
  }
}
