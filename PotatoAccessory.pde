class Accessory {
  PVector pos;
  PVector size;

  Accessory() {
  
  }
  
  void setPosition(PVector _pos) {
    pos = _pos;
  }

  void draw() {
    pushMatrix();
    translate(pos.x, pos.y);
    // aquí va tu código
    
    
    
    // aquí termina tu código
    popMatrix();
  }
}
