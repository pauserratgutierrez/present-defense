// ===================
// CARREGAR ASSETS
// ===================

void loadAssets() {

  // ===================
  // CARREGAR IMATGES I SONS
  // ===================

  // Definim els fitxers de so
  intro_bg_music_1 = new SoundFile(this, sons_src + "intro_bg_music_1.mp3");
  intro_bg_music_2 = new SoundFile(this, sons_src + "intro_bg_music_2.mp3");
  joc_bg_music_1 = new SoundFile(this, sons_src + "joc_bg_music_1.mp3");

  // Definim el volum del so
  intro_bg_music_1.amp(0.25);
  intro_bg_music_2.amp(0.25);
  joc_bg_music_1.amp(0.5);

  joc_martell_anvil = new SoundFile(this, sons_src + "joc_martell_anvil.mp3");
  joc_martell_movement = new SoundFile(this, sons_src + "joc_martell_movement.mp3");

  btn_click = new SoundFile(this, sons_src + "btn_click.mp3");

  intro_bg_music_1.loop();

  // carregaInicial
  carregaInicial_bg = loadImage(images_src + "carregaInicial/bg.png", "png");

  // carregaInicial
  inici_bg = loadImage(images_src + "inici/bg_1.png", "png");

  // jugar
  jugar_bg = loadImage(images_src + "jugar/bg.png", "png");

  // joc
  joc_bg_1 = loadImage(images_src + "joc/bg_1.png", "png");
  joc_tree = loadImage(images_src + "joc/tree.png", "png");
  joc_regal_1 = loadImage(images_src + "joc/r_1.png", "png");
  joc_regal_2 = loadImage(images_src + "joc/r_2.png", "png");
  joc_regal_3 = loadImage(images_src + "joc/r_3.png", "png");

  // Carreguem els frames. Fem loop pel total de frames i els carreguem i canviem de mida.
  for (int i = 1; i <= sprite_1_frames; i++) {
    sprite_1[i-1] = loadImage(images_src + "joc/sprites/1/" + i + ".png", "png");
    sprite_1[i-1].resize(1667/8, 1834/8);
  }

  for (int i = 1; i <= sprite_2_frames; i++) {
    sprite_2[i-1] = loadImage(images_src + "joc/sprites/2/" + i + ".png", "png");
    sprite_2[i-1].resize(1667/9, 1834/9);
  }

  // configuracioAplicacio
  configuracioAplicacio_bg = loadImage(images_src + "configuracioAplicacio/bg.png", "png");

  // sortida
  sortida_bg = loadImage(images_src + "sortida/bg.png", "png");

  // ===================
  // CREAR BOTONS I TEXTS
  // ===================

  // Crear objectes texts. Tenim les propietats: (Text, true = center center / false = left top, tamany, ample, altura)
  text_carregaInicial_felicitacio = new crearText("Feliç Nadal 2022!", CENTER, CENTER, 60, width/2, height/3);
  text_carregaInicial_imatge = new crearText("Us desitgem que passeu unes molt bones festes amb la familia.", CENTER, CENTER, 24, width/2, height/2);

  text_inici_titol = new crearText("PRESENT DEFENSE", CENTER, CENTER, 40, width/2, (height*20)/100);
  text_inici_descripcio = new crearText("Protegeix els regals i elimina als enemics!", CENTER, CENTER, 20, width/2, ((height*20)/100)+60);
  text_inici_records = new crearText("Rècord temps: ", CENTER, CENTER, 16, width/2, ((height*20)/100)+120);

  text_configuracioAplicacio_titol = new crearText("Configuració inicial general", CENTER, CENTER, 30, width/2, 60);
  text_configuracioAplicacio_credits = new crearText("Joc fet per Pau Serrat Gutiérrez l'any 2022.", CENTER, CENTER, 12, width/2, 600);

  text_jugar_titol = new crearText("Configura la partida", CENTER, CENTER, 30, width/2, 60);

  text_joc_temporitzador = new crearText("Temps: ", LEFT, TOP, 16, 10, 13);
  text_joc_temps_record = new crearText("Temps rècord: " + temps_record, LEFT, TOP, 16, 10, 33);
  text_joc_enemics_matats = new crearText("Enemics matats: " + enemics_matats, LEFT, TOP, 16, 10, 53);
  text_joc_enemics_matats_record = new crearText("Enemics rècord: " + enemics_matats_record, LEFT, TOP, 16, 10, 73);

  text_sortida_felicitacio = new crearText("Feliç Nadal 2022!", CENTER, CENTER, 60, width/2, height/2);

  // Crear objectes botons. Tenim les propietats: (Text, tamany text, switch, posX, posY, ample, altura, radi)
  btn_inici_jugar = new crearBoto("Jugar", 18, (width/2) - 100, height/2, 200, 40, 30);
  btn_inici_configuracioAplicacio = new crearBoto("Configuració", 18, (width/2) - 100, (height/2) + 60, 200, 40, 30);
  btn_inici_sortida = new crearBoto("Sortir", 18, (width/2) - 100, height - 60, 200, 40, 30);

  btn_configuracioAplicacio_musica_1 = new crearBoto("Música 1: ", 18, (width/2) - 210, 390, 200, 40, 30);
  btn_configuracioAplicacio_musica_2 = new crearBoto("Música 2: ", 18, (width/2) + 10, 390, 200, 40, 30);
  btn_configuracioAplicacio_imatge1 = new crearBoto("Imatge 1", 18, (width/2) - 210, 450, 200, 40, 30);
  btn_configuracioAplicacio_imatge2 = new crearBoto("Imatge 2", 18, (width/2) + 10, 450, 200, 40, 30);
  btn_configuracioAplicacio_inici = new crearBoto("Tornar a Inici", 18, (width/2) - 100, height - 60, 200, 40, 30);

  btn_jugar_joc = new crearBoto("Jugar", 24, (width/2) - 100, 200, 200, 50, 30);
  btn_jugar_dificultat_1 = new crearBoto("Mode fàcil", 18, (width/2) - 210, 390, 200, 40, 30);
  btn_jugar_dificultat_2 = new crearBoto("Mode expert", 18, (width/2) + 10, 390, 200, 40, 30);
  btn_jugar_musica = new crearBoto("Música: ", 18, (width/2) - 210, 450, 200, 40, 30);
  btn_jugar_sons = new crearBoto("Sons ", 18, (width/2) + 10, 450, 200, 40, 30);
  btn_jugar_inici = new crearBoto("Tornar a Inici", 18, (width/2) - 100, height - 60, 200, 40, 30);

  btn_joc_reiniciar = new crearBoto("Reiniciar", 14, width - 90, 10, 80, 20, 30);
  btn_joc_atacar = new crearBoto("ATAC!", 20, 295, height - 55, 80, 30, 30);
}
