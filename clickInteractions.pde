// ===================
// CLICS DEL RATOLÍ
// ===================

// Funció nativa que detecta els clics.
// Cal comprovar en quina pantalla ens trobem (mode) i detectar si el ratolí és dins d'un botó.
void mouseClicked() {
  // Si el mode és inici, per tant, som dins la pantalla inici. D'aquesta manera els clics d'altres botons s'eviten
  if (mode == "inici") {

    // ===================
    // BOTONS INICI
    // ===================

    // Detectem si el botó en concret es clica emprant la funció personalitzada btn_clicked.
    // Passem les variables del ratolí i la funció case sensitive sense () que executarem
    btn_inici_jugar.btn_clicked(mouseX, mouseY, "jugar");
    btn_inici_configuracioAplicacio.btn_clicked(mouseX, mouseY, "configuracioAplicacio");
    btn_inici_sortida.btn_clicked(mouseX, mouseY, "sortida");
  } else if (mode == "configuracioAplicacio") {

    // ===================
    // BOTONS CONFIGURACIÓ APLICACIÓ
    // ===================

    btn_configuracioAplicacio_musica_1.btn_clicked(mouseX, mouseY, "");
    btn_configuracioAplicacio_musica_2.btn_clicked(mouseX, mouseY, "");
    btn_configuracioAplicacio_imatge1.btn_clicked(mouseX, mouseY, "btn_inici_bg_1");
    btn_configuracioAplicacio_imatge2.btn_clicked(mouseX, mouseY, "btn_inici_bg_2");
    btn_configuracioAplicacio_inici.btn_clicked(mouseX, mouseY, "inici");
  } else if (mode == "jugar") {

    // ===================
    // BOTONS JUGAR
    // ===================

    btn_jugar_joc.btn_clicked(mouseX, mouseY, "joc");
    btn_jugar_dificultat_1.btn_clicked(mouseX, mouseY, "dificultat1");
    btn_jugar_dificultat_2.btn_clicked(mouseX, mouseY, "dificultat2");
    btn_jugar_musica.btn_clicked(mouseX, mouseY, "musica_volum");
    btn_jugar_sons.btn_clicked(mouseX, mouseY, "sons_volum");
    btn_jugar_inici.btn_clicked(mouseX, mouseY, "inici");
  } else if (mode == "joc") {

    // ===================
    // BOTONS JOC
    // ===================

    btn_joc_reiniciar.btn_clicked(mouseX, mouseY, "reiniciarJoc");
    btn_joc_atacar.btn_clicked(mouseX, mouseY, "atacar");
  }
}

// ===================
// RATOLI DRAGGED
// ===================

// Detectar si s'arrastra el ratolí fent click.
void mouseDragged() {
  // Definim la variable dragged com a + 1 multiplicat per posició x ratolí i trobem el signe (- o +) per saber el sentit
  dragged = dragged + 1 * (mouseX - pmouseX);
}

// Funció per detectar els marges dreta i esquerra
void bg_drag() {
  if (dragged >= 2600 - width) { // Màxim dreta
    dragged = 2600 - width;
  } else if (dragged <= 0) { // Màxim esquerra
    dragged = 0;
  }
}
