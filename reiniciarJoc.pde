// ===================
// REINICIAR JOC
// ===================

// Funció reiniciarJoc
void reiniciarJoc() {
  // Canviem estat de variable temp_reset a true per tal que quan es torni a inici es reinicii el temporitzador
  temp_reset = true;

  enemics_matats = 0;
  dragged = 0;
  intro_bg_music_1.loop();

  // Canviem pantalla a inici
  inici();
}
