// ===================
// PANTALLA DEL JOC
// ===================

// Funció joc
void joc() {
  // Definim el mode que toca
  mode = "joc";
  // Pintem el fons de color
  background(0);

  bg_drag();

  // Inserim les imatges que toca
  image(joc_bg_1, -dragged, 0); // Desplaçar background amb drag de ratolí
  image(joc_tree, -dragged, 260, joc_tree.width/3, joc_tree.height/2);

  image(joc_regal_1, -dragged + 22, 460, joc_regal_1.width/4, joc_regal_1.height/4);
  image(joc_regal_2, -dragged + 130, 590, joc_regal_2.width/4, joc_regal_2.height/4);
  image(joc_regal_3, -dragged + 75, 610, joc_regal_3.width/4, joc_regal_3.height/4);

  sprites();

  // Mostrem la vida actualitzada amb el color en funció del nivell
  vidaMostrar(-dragged + 335, 460, 20, 130, 26, vida_guerrer_actual, vida_guerrer);
  image(sprite_1[sprite_1_frame_actual-1], -dragged + 260, 445); // Guerrer quiet

  // Fem un loop per tots els enemics
  for (int i = 0; i < enemies.length; i++) {
    if (!(enemies[i].recorregut > 2160)) { // Està a menys distància que guerrer
      enemies[i].move();
    } else { // Està a distància guerrer
      if (btn_joc_atacar.clicked) { // S'ha fet clic al botó atacar
        enemies[i].baixar_vida();
      }
      enemies[i].baixar_vida_guerrer();
    }
    enemies[i].display();
  }

  // ===================
  // TEMPORITZADOR
  // ===================

  // Detectar si cal fer un reset de temps
  if (temp_reset) {
    last_time = currentTime;
    resetTemp();
    temp_reset = !temp_reset;
  }

  // Actualitzar temporitzador
  currentTime = (millis() - startTime);

  // Si s'està fent un rècord de temps
  if (currentTime > last_time) {
    temps_record = currentTime;
  }

  // Si s'està fent un rècord d'assesinats
  if (enemics_matats > enemics_matats_record) {
    enemics_matats_record = enemics_matats;
  }

  // ===================
  // MOSTRAR TEXTS
  // ===================

  fill(0);
  stroke(255);
  rect(0, 0, 200, 110);
  stroke(0);
  fill(255, 255, 255);

  // Mostrem els texts emprant la funció perosnalitzada mostrar()
  // A més, cal actualitzar el text del temporitzador. Dividim variable entre 1000 per passar de milisegons a segons
  text_joc_temporitzador.text = "Temps: " + (currentTime/1000) + "s";
  text_joc_temporitzador.mostrar();

  text_joc_temps_record.text = "Temps rècord: " + (temps_record/1000) + "s";
  text_joc_temps_record.mostrar();

  text_joc_enemics_matats.text = "Enemics matats: " + enemics_matats;
  text_joc_enemics_matats.mostrar();

  text_joc_enemics_matats_record.text = "Enemics matats rècord: " + enemics_matats_record;
  text_joc_enemics_matats_record.mostrar();

  // ===================
  // MOSTRAR BOTONS
  // ===================

  // Mostrar els botons emprant la funció personalitzada mostrar()
  btn_joc_reiniciar.mostrar();

  if (!btn_joc_atacar.clicked) {
    btn_joc_atacar.mostrar();
  }
}
