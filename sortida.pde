// ===================
// PANTALLA SORTIDA
// ===================

// Funció sortida
void sortida() {
  // Establim el mode de l'aplicació
  mode = "sortida";
  // Pintem el color de fons
  background(sortida_bg);

  // ===================
  // MOSTRAR TEXTS
  // ===================

  text_sortida_felicitacio.mostrar();

  // ===================
  // TEMPORITZADOR
  // ===================

  // Detectem si cal fer un reset de temps
  if (temp_reset) {
    resetTemp();
    temp_reset = !temp_reset;
  }

  // Actualitzar temporitzador
  currentTime = millis() - startTime;
  // Si han passat els segons definits
  if (currentTime >= espera_sortida) {
    temp_reset = !temp_reset;
    // Tancar programa
    System.exit(0);
  }
}
