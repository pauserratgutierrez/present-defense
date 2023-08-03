// ===================
// LLIBRERIES
// ===================

// Sons
import processing.sound.*;

// ===================
// VARIABLES GLOBALS
// ===================

// Navegació: 'carregaInicial', 'inici', 'configuracioAplicacio', 'jugar', 'joc', 'sortida', 'error'.
String mode;

// Definim esperes d'algunes pantalles (en milisegons)
int espera_carregaInicial = 11000;
int espera_sortida = 5000;

// Definim el temporitzador per poder resetejar i trobar el temps
int startTime = millis();
int currentTime = 0;
// Si s'ha de fer un reset
boolean temp_reset = false;

// Variable per guardar el valor de la posició del ratolí arrastrant la pantalla
int dragged;

// Definim les variables del guerrer i enemics
int vida_guerrer;
int vida_guerrer_actual;

int vida_enemic_min = 60;
int vida_enemic_max = 200;

// Creem els primers enemics (En la configuració del joc es creen més, sinó així per defecte, per no generar error d'arrays)
Enemy[] enemies = new Enemy[4];

// Estadístiques
int last_time = 0;
int temps_record = 0;
int enemics_matats_record = 0;
int enemics_matats = 0;

// ===================
// CARREGAR IMATGES I SONS
// ===================

// Variable true/false control botons
boolean musica_volum, sons_volum = true;

// Definim la direcció per poder canviar-ho fàcilment
String images_src = "Media/Imatges/";
String sons_src = "Media/Sons/";

// Definir els fitxers de so
SoundFile intro_bg_music_1, intro_bg_music_2, btn_click, joc_bg_music_1, joc_martell_anvil, joc_martell_movement;

// Definir les imatges
// carregaInicial
PImage carregaInicial_bg;

// inici
PImage inici_bg;

// jugar
PImage jugar_bg;

// joc
PImage joc_bg_1, joc_tree, joc_regal_1, joc_regal_2, joc_regal_3;

// Per animar els personatges creem array de totes les imatges.
// Definim els frames (coincideixen amb número fotos)
// Definim frame actual per saber quin ha de ser el seguent.
int sprite_1_frames = 5;
int sprite_1_frame_actual = 1;
PImage [] sprite_1 = new PImage[sprite_1_frames];

int sprite_2_frames = 10;
int sprite_2_frame_actual = 1;
PImage [] sprite_2 = new PImage[sprite_2_frames];

// configuracioAplicacio
PImage configuracioAplicacio_bg;

// sortida
PImage sortida_bg;

// ===================
// TEXTS I BOTONS
// ===================

// Definir tots els botons del joc amb variables per poder modificar-los
crearBoto btn_inici_jugar, btn_inici_configuracioAplicacio, btn_inici_sortida;
crearBoto btn_configuracioAplicacio_musica_1, btn_configuracioAplicacio_musica_2, btn_configuracioAplicacio_imatge1, btn_configuracioAplicacio_imatge2, btn_configuracioAplicacio_inici;
crearBoto btn_jugar_joc, btn_jugar_dificultat_1, btn_jugar_dificultat_2, btn_jugar_musica, btn_jugar_sons, btn_jugar_inici;
crearBoto btn_joc_reiniciar, btn_joc_atacar;

// Definir tots els texts del joc  també amb variables.
crearText text_carregaInicial_felicitacio, text_carregaInicial_imatge;
crearText text_inici_titol, text_inici_descripcio, text_inici_records;
crearText text_configuracioAplicacio_titol, text_configuracioAplicacio_musica, text_configuracioAplicacio_imatge, text_configuracioAplicacio_credits;
crearText text_jugar_titol;
crearText text_joc_temporitzador, text_joc_enemics_matats, text_joc_enemics_matats_record, text_joc_temps_record;
crearText text_sortida_felicitacio;

// ===================
// SETUP
// ===================

// Funció executada únicament una vegada al començar l'aplicació
void setup() {
  // Tamany x, y de l'aplicació
  size(1200, 800);
  frameRate(60);
  // El mode per defecte de l'aplicació
  mode = "carregaInicial";

  // Per no carregar de coses, la funció fa load d'altres coses fora d'aquí
  loadAssets();
}

// ===================
// DRAW
// ===================

// Funció executada en bucle per anar dibuixant i actualitzant tot el programa en cada instant
void draw() {
  // Fem sonar el que toca
  sons();
  // Detectem en quin estat es troba el joc per tal d'executar la funció que toca.
  if (mode == "carregaInicial") {
    carregaInicial();
  } else if (mode == "inici") {
    inici();
  } else if (mode == "configuracioAplicacio") {
    configuracioAplicacio();
  } else if (mode == "jugar") {
    jugar();
  } else if (mode == "joc") {
    joc();
  } else if (mode == "sortida") {
    sortida();
  } else {
    error();
  }
}
