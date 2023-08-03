// ===================
// PANTALLA DE CÀRREGA (FELICITACIÓ)
// ===================

// Funció carregaInicial
void carregaInicial() {
  // Definim l'estat de l'aplicació
  mode = "carregaInicial";
  // Definim la imatge de fons
  background(carregaInicial_bg);

  // ===================
  // MOSTRAR TEXTS
  // ===================

  // Mostrem els texts que toquen amb la funció personalitzada mostrar()
  text_carregaInicial_felicitacio.mostrar();
  text_carregaInicial_imatge.mostrar();

  // ===================
  // TEMPORITZADOR
  // ===================

  // Com que és la pantalla de càrrega i necessita una espera de 5s cal resetejar el comptador i començar a comptar.
  // Només hem de fer-ho una vegada, i com que aquí tot s'actualitza ja que estem dins del loop del draw
  // cal que controlem les vegades que es resetejarà el comptador. Ho fem amb la variable boolean temp_reset.
  if (temp_reset) {
    // Cridem la funció que resetejarà el temporitzador
    resetTemp();
    // Alternem el valor de la variable per tal que no es torni a fer un reset innecessàri
    temp_reset = !temp_reset;
  }

  // Actualitzar temporitzador
  currentTime = millis() - startTime;
  // Si han passat els segons establerts per la càrrega de la pantalla inicial...
  if (currentTime >= espera_carregaInicial) {
    // Canviem variable per tal que a la pròxima vegada que s'inici una pantalla es faci un reset
    temp_reset = !temp_reset;
    // Canviar a pantalla d'inici
    inici();
  }
}

// Afegir barra de càrrega que mostri el progrés respecte el temps total.
