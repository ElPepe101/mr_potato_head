class Eye {
  private PVector pos;
  private PVector size;
  
  private color pupil = color(0);
  private color retina = color(70);
  private color sclera = color(255);
  
  private float angle = 0.;
  
  Eye() {
    setSize(70, 110);
  }
  
  Eye(int w, int h) {
    setSize(w, h);
  }
  
  Eye(int w, int h, color _pupil) {
    setSize(w, h);
    pupil = _pupil;
  }
  
  Eye(int w, int h, color _pupil, color _retina) {
    setSize(w, h);
    pupil = _pupil;
    retina = _retina;
  }
  
  Eye(int w, int h, color _pupil, color _retina, color _sclera) {
    setSize(w, h);
    pupil = _pupil;
    retina = _retina;
    sclera = _sclera;
  }
  
  void setPosition(PVector _pos) {
    pos = _pos;
  }
  
  void draw(float deg) {
    angle = atan2(mouseY - pos.y, mouseX - pos.x);
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(deg);

    noStroke();
    fill(sclera);
    ellipse(0, 0, size.x, size.y);

    rotate(angle);
    fill(retina);
    ellipse(size.x / 4, 0, size.x / 4, size.y / 4);

    fill(pupil);
    ellipse(size.x / 4, 0, size.x / 6, size.y / 6);
    popMatrix();
  }
  
  private void setSize(int w, int h) {
    size = new PVector(constrain(w, 30, 75), constrain(h, 55, 115));
  }
}
