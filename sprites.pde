// ===================
// FUNCIO CONTROL AMINACIONS PERSONATGES (SPRITES)
// ===================

void sprites() {

  if (btn_joc_atacar.clicked) { // Si es clica el botó atacar
    if (frameCount % 7 == 0) { // Canviem els frames per tal que l'animació sigui diferent als fps definits al programa general
      if (sprite_1_frame_actual == sprite_1_frames) { // Si estem al final dels frames (final animació)
        sprite_1_frame_actual = 1; // Definir frame seguent a principi
        btn_joc_atacar.clicked = false;
      } else { // No estem a l'últim frame
        sprite_1_frame_actual++; // Avançar frame
        btn_joc_atacar.amagar(); // Amagar botó, es mostrarà quan es pugui tornar a clicar (final animació sprite)
      }
    }
  }

  if (frameCount % 7 == 0) {
    if (sprite_2_frame_actual == sprite_2_frames) {
      sprite_2_frame_actual = 1;
    } else {
      sprite_2_frame_actual++;
    }
  }
}

void atacar() { // Funció per fer sonar els sons personatge martell
  so_martell_personatge_1();
}
