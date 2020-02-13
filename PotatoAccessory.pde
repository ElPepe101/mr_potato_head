class Accessory {
  PVector pos;
  PVector size;

  Accessory() {
  
  }
  
  void setPosition(PVector _pos) {
    pos = _pos;
  }

  void draw(float deg) {
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(deg);
    // aquí va tu código
    
    
    
    // aquí termina tu código
    popMatrix();
  }
}
