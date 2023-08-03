// ===================
// FUNCIO ENSENYAR VIDA COLOR
// ===================

// Definim posicions X i Y, tamany i extres com vida max i actual. Es mostra la vida verda, vermella i graduat entre el color en funció de la vida
void vidaMostrar(float x, float y, float t_size, float w, float h, float actual, float inicial) {
  float c1 = 255 - (actual / inicial) * 255; // Color vermell (Pot ser de 0 a 255)
  float c2 = 255 - c1; // Color verd (Pot ser de 0 a 255)
  rectMode(CENTER);
  fill(255, 255, 255);
  stroke(255);
  rect(x, y+3, w, h, 20); // Dibuixem rectangle sota el text
  rectMode(CORNER);
  fill(int(c1), int(c2), 0); // Pintem del color que toca
  textSize(t_size);
  text((int(actual) + "/" + int(inicial)), x, y); // Escribim el text
  stroke(0);
}
