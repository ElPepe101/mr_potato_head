Potato mr_potato;

void setup() {
  size(500, 720);
  frameRate(60);
  mr_potato = new Potato(); 
  
  mr_potato.addToHole("left arm", new Arm("left"));
  mr_potato.addToHole("right arm", new Arm("right"));
  mr_potato.addToHole("right eye", new Eye());
  mr_potato.addToHole("left eye", new Eye());
  mr_potato.addToHole("feet", new Feet());
  mr_potato.addToHole("mouth", new Teeth());
  mr_potato.addToHole("nose", new Nose());
  mr_potato.addToHole("head", new Hat());
}

void draw() {
  background(255);
  mr_potato.draw();
}

void keyPressed() {
  mr_potato.setPosition();
}
