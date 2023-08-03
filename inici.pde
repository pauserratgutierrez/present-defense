// ===================
// PANTALLA D'INICI
// ===================

// Funció inici
void inici() {
  // Definim el mode que toca
  mode = "inici";
  // Definim el color del fons
  background(inici_bg);

  // ===================
  // MOSTRAR TEXTS
  // ===================

  // Mostrem els texts que toquen fent servir la funció personalitzada mostrar()
  text_inici_titol.mostrar();
  text_inici_descripcio.mostrar();
  text_inici_records.mostrar();
  text_inici_records.text = "Rècord temps: " + (temps_record/1000) + "s. Récord enemics morts: " + enemics_matats_record;

  // ===================
  // MOSTRAR BOTONS
  // ===================

  // De la mateixa manera, mostrem els botons que toquen amb la funció personalitzada mostrar()
  btn_inici_jugar.mostrar();
  btn_inici_configuracioAplicacio.mostrar();
  btn_inici_sortida.mostrar();
}
