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



/**
 * Resources:
 *
 * - Mr. Potato Head Is WHAT?! 20 Things You Didn’t Know About the Classic Toy
 *   22 WORDS STAFF
 *   twentytwowords.com
 *   https://twentytwowords.com/mr-potato-head-is-what-20-things-you-didnt-know-about-your-favorite-toy-tuber/
 *
 * - Paws for Thought - Paedomorphism
 *   Emma'jane
 *   https://emmajanedogs.blogspot.com/2012/10/paedomorphism.html
 *
 * - Use Potato Head Toys to teach classes, objects, methods, and properties so that students develop hands on experience with abstract topics.
 *   Stephanie Hoeppner
 *   csteachingtips.org
 *   http://csteachingtips.org/tip/use-potato-head-toys-teach-classes-objects-methods-and-properties-so-students-develop-hands
 *
 * - Mr. Potato Head: Thinking like a Good Industrial Engineer
 *   Kevin Little
 *   Informing Ecological Design
 *   https://www.iecodesign.com/blog/2016/10/11/mr-potato-head-thinking-like-a-good-industrial-engineer
 *
 * - Didactic System for Object-oriented Modelling
 *   Torsten Brinda and Sigrid E. Schubert
 *   Didactics of Informatics, University of Dortmund, D-44221 Dortmund, Germany
 *   brinda@)sl2. es. uni-dortmund.de 
 *   https://link.springer.com/content/pdf/10.1007%2F978-0-387-35596-2_47.pdf
 *
 * - How to explain object-oriented programming concepts to a 6-year-old
 *   Alexander Petkov
 *   freecodecamp.org
 *   https://www.freecodecamp.org/news/object-oriented-programming-concepts-21bb035f7260/
 *
 */
