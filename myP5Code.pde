void setup() {
  size(400, 400);
  noLoop(); // Ensures draw is only called once
}

void draw() {
  // Background gradient
  for (int y = 0; y < height; y++) {
    stroke(lerpColor(color(135, 206, 235), color(240, 248, 255), map(y, 0, height, 0, 1)));
    line(0, y, width, y);
  }

  // Frog body
  noStroke();
  fill(34, 139, 34); // Green body
  ellipse(200, 250, 150, 80); // Body

  // Eyes
  fill(255);
  ellipse(150, 200, 50, 50); // Left eye
  ellipse(250, 200, 50, 50); // Right eye

  // Pupils
  fill(0);
  ellipse(150, 200, 20, 20); // Left pupil
  ellipse(250, 200, 20, 20); // Right pupil

  // Mouth
  stroke(0);
  strokeWeight(2);
  noFill();
  arc(200, 270, 50, 20, 0, PI); // Smiling mouth

  // Decorative shapes
  fill(34, 139, 34, 150);
  ellipse(180, 310, 30, 10); // Left shadow
  ellipse(220, 310, 30, 10); // Right shadow
}

void mousePressed() {
  // Draws colorful circles wherever the mouse is clicked
  fill(random(100, 255), random(100, 255), random(100, 255));
  noStroke();
  ellipse(mouseX, mouseY, 15, 15);
}

void keyPressed() {
  // Clear canvas on 'C'
  if (key == 'c' || key == 'C') {
    redraw();
  }
  // Change background gradient on 'G'
  if (key == 'g' || key == 'G') {
    for (int y = 0; y < height; y++) {
      stroke(lerpColor(color(random(100, 255), random(100, 255), random(100, 255)), color(240, 248, 255), map(y, 0, height, 0, 1)));
      line(0, y, width, y);
    }
  }
}
