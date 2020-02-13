import java.util.Map;

class Potato {
  private PVector pos;
  private PVector size;
  
  private HashMap<String, Eye> eyes = new HashMap<String, Eye>();
  private HashMap<String, Teeth> teeths = new HashMap<String, Teeth>();
  private HashMap<String, Nose> noses = new HashMap<String, Nose>();
  private HashMap<String, Hat> hats = new HashMap<String, Hat>();
  private HashMap<String, Feet> feets = new HashMap<String, Feet>();
  private HashMap<String, Arm> arms = new HashMap<String, Arm>();
  private HashMap<String, Accessory> accessories = new HashMap<String, Accessory>();

  private HashMap<String, PVector> holes = new HashMap<String, PVector>(); 
  
  private float speed = 3.3;
  
  Potato() {
    pos = new PVector(width / 2, height / 2);
    size = new PVector(width / 2, height / 2);
    setHoles();
  }
  
  Potato(int x, int y) {
    pos = new PVector(x, y);
    size = new PVector(width / 2, height / 2);
    setHoles();
  }
  
  Potato(int x, int y, int w, int h) {
    pos = new PVector(x, y);
    size = new PVector(w, h);
    setHoles();
  }
  
  void addToHole(String hole, Eye eye) {
    eyes.put(hole, eye);
  }
  
  void addToHole(String hole, Hat hat) {
    hats.put(hole, hat);
  }
  
  void addToHole(String hole, Feet feet) {
    feets.put(hole, feet);
  }
  
  void addToHole(String hole, Arm arm) {
    arms.put(hole, arm);
  }
  
  void addToHole(String hole, Teeth teeth) {
    teeths.put(hole, teeth);
  }
  
  void addToHole(String hole, Nose nose) {
    noses.put(hole, nose);
  }
  
  void addToHole(String hole, Accessory accessory) {
    accessories.put(hole, accessory);
  }
  
  void draw() {
    pushMatrix();
    noStroke();
    fill(200, 134, 67);
    ellipse(pos.x, pos.y, size.x, size.y);
    ellipse(pos.x, pos.y + (size.y / 4), size.x * 1.15, size.x * 1.3);
    fill(205, 139, 72);
    rotate(radians(20));
    arc(pos.x + size.x * .9, pos.y * .97, size.x * .3, size.y * .6, radians(-90), radians(120));
    popMatrix();

    attatchToHoles();
  }
  
  void setPosition() {
    if (keyCode == LEFT) {
      pos.add(-speed, 0);
    }
    
    if (keyCode == RIGHT) {
      pos.add(speed, 0);
    }
    
    setHoles();
  }
  
  private void attatchToHoles() {
    for (Map.Entry<String, PVector> hole : holes.entrySet()) {
      String ref = hole.getKey();
      float rotate = ref == "head" || ref == "feet" ? radians(90) : 0.;

      if (eyes.containsKey(ref)) {
        PVector pos = hole.getValue();
        Eye eye = eyes.get(ref);
        eye.setPosition(pos);
        eye.draw(rotate);
      }
      
      if (teeths.containsKey(ref)) {
        PVector pos = hole.getValue();
        Teeth teeth = teeths.get(ref);
        teeth.setPosition(pos);
        teeth.draw(rotate);
      }
      
      if (noses.containsKey(ref)) {
        PVector pos = hole.getValue();
        Nose nose = noses.get(ref);
        nose.setPosition(pos);
        nose.draw(rotate);
      }
      
      if (hats.containsKey(ref)) {
        PVector pos = hole.getValue();
        Hat hat = hats.get(ref);
        hat.setPosition(pos);
        hat.draw(rotate);
      }
      
      if (feets.containsKey(ref)) {
        PVector pos = hole.getValue();
        Feet feet = feets.get(ref);
        feet.setPosition(pos);
        feet.draw(rotate);
      }
      
      if (arms.containsKey(ref)) {
        PVector pos = hole.getValue();
        Arm arm = arms.get(ref);
        arm.setPosition(pos);
        arm.draw(rotate);
      }
      
      if (accessories.containsKey(ref)) {
        PVector pos = hole.getValue();
        Accessory accessory = accessories.get(ref);
        accessory.setPosition(pos);
        accessory.draw(rotate);
      }
    }
  }
  
  private void setHoles() {
    holes.put("feet", new PVector(pos.x, pos.y + size.y * .65));
    holes.put("mouth", new PVector(pos.x, pos.y * 1.15));

    holes.put("left eye", new PVector(pos.x - size.x / 6, pos.y - size.y / 6));
    holes.put("right eye", new PVector(pos.x + size.x / 6, pos.y - size.y / 6));

    holes.put("left arm", new PVector(pos.x - size.x / 2, pos.y * 1.1));
    holes.put("right arm", new PVector(pos.x + size.x / 2, pos.y * 1.1));
    
    holes.put("nose", new PVector(pos.x, pos.y));
    holes.put("head", new PVector(pos.x, pos.y - size.y / 2));
  }
}
