// ===================
// PANTALLA CONFIGURACIO APLICACIÓ (FELICITACIÓ CÀRREGA)
// ===================

// Funció configuracioAplicacio
void configuracioAplicacio() {
  // Definim l'estat de l'aplicació
  mode = "configuracioAplicacio";
  // Canviem el fons de color
  background(configuracioAplicacio_bg);

  // ===================
  // MOSTRAR TEXTS
  // ===================

  // Usem la funció personalitzada mostrar()
  text_configuracioAplicacio_titol.mostrar();
  text_configuracioAplicacio_credits.mostrar();

  // ===================
  // MOSTRAR BOTONS
  // ===================

  // Usem la funció personalitzada mostrar()
  btn_configuracioAplicacio_musica_1.mostrar();
  btn_configuracioAplicacio_musica_1.text = "Música 1: " + (!btn_configuracioAplicacio_musica_1.clicked);
  btn_configuracioAplicacio_musica_2.mostrar();
  btn_configuracioAplicacio_musica_2.text = "Música 2: " + (!btn_configuracioAplicacio_musica_2.clicked);
  btn_configuracioAplicacio_imatge1.mostrar();
  btn_configuracioAplicacio_imatge2.mostrar();
  btn_configuracioAplicacio_inici.mostrar();
}
