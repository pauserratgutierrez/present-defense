// ===================
// FUNCIO DE SONS
// ===================

void sons() {

  if (mode != "joc") { // Qualsevol mode que no sigui joc
    joc_bg_music_1.stop();
    if (btn_configuracioAplicacio_musica_1.clicked) { // Si s'ha clicat el botó musica 1
      intro_bg_music_2.stop();
      intro_bg_music_1.loop();
    } else if (btn_configuracioAplicacio_musica_2.clicked) { // Click al botó musica 2
      intro_bg_music_1.stop();
      intro_bg_music_2.loop();
    }
  } else if (mode == "joc") { // Mode joc
    intro_bg_music_2.stop();
    intro_bg_music_1.stop();

    if (musica_volum) { // Si el volum és activat
      if (!joc_bg_music_1.isPlaying()) { // Si música no sona
        joc_bg_music_1.loop();
      }
    }
  }
}

// Funció per controlar el so del personatge guerrer
void so_martell_personatge_1() {
  if (sons_volum) { // Si tenim volums activats
    joc_martell_movement.play();
    joc_martell_anvil.play();
  }
}
