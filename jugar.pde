// ===================
// PANTALLA CONFIGURACIÓ DE LA PARTIDA
// ===================

// Funció jugar
void jugar() {
  // Definim el mode de l'aplicació
  mode = "jugar";
  // Pintem el color de fons
  background(jugar_bg);

  temp_reset = true;

  dragged = 0;

  vida_guerrer = 50000;
  vida_guerrer_actual = vida_guerrer;

  // Fem loop pel número d'enemics
  for (int i = 0; i < enemies.length; i++) {
    // Enemy(vida, dany, velocitat, posX, posY)
    enemies[i] = new Enemy(random(vida_enemic_min, vida_enemic_max), random(0.2, 5), random(0.8, 4), 2500 + (1667/9), 460); // Definim els valors de cada enemic
  }

  // ===================
  // MOSTRAR TEXTS
  // ===================

  text_jugar_titol.mostrar();

  // ===================
  // MOSTRAR BOTONS
  // ===================

  btn_jugar_joc.mostrar();
  // Els botons que son switch cal vincular-los i que automàticament si es pulsa un, es desmarqui l'altre
  btn_jugar_dificultat_1.mostrar();
  btn_jugar_dificultat_2.mostrar();
  btn_jugar_musica.mostrar();
  btn_jugar_musica.text = "Música: " + btn_jugar_musica.clicked;
  btn_jugar_sons.mostrar();
  btn_jugar_sons.text = "Sons: " + (!btn_jugar_sons.clicked);
  btn_jugar_inici.mostrar();
}
