// ===================
// CLASSE PER CREAR TEXT
// ===================

class crearText {

  // Definim les variables
  float tamany, pos_x, pos_y;
  String text;
  int align_x, align_y;

  // Definim entrades i paràmetres de la funció
  crearText(String text, int align_x, int align_y, float tamany, float x, float y) {
    // Entrem variables anteriors i les inicialitzem per la clase
    this.text = text;
    this.align_x = align_x;
    this.align_y = align_y;
    this.tamany = tamany;
    this.pos_x = x;
    this.pos_y = y;
  }

  // ===================
  // CLASSE PER CREAR TEXT
  // ===================

  // Funció per mostrar el botó i dibuixar-lo
  void mostrar() {
    // Pintem del color
    fill(255, 255, 255);
    // Aliniació del text en funció de les variables de posició x i y
    textAlign(align_x, align_y);
    // Tamany del text en funció de la variable de tamany
    textSize(tamany);
    // Dibuixem el text que toca, on toca
    text(text, pos_x, pos_y);
  }
}
