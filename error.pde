// ===================
// PANTALLA ERROR
// ===================

// Funció error
void error() {
  // Canviar el mode a error
  mode = "error";
  // Canviar el color de fons
  background(255, 0, 0);

  btn_joc_reiniciar.mostrar();
}
