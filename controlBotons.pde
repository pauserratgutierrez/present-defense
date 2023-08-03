// ===================
// CLASSE PER CREAR BOTONS
// ===================

class crearBoto {

  // Definim variables
  float pos_x, pos_y, text_tamany, amplada, altura, radi;
  boolean clicked, amagat;
  String text;

  // Definim les entrades de la funció
  crearBoto(String text, float text_tamany, float x, float y, float w, float h, float r) {
    // Entrem les variables anteriors i les tornem a crear internament
    this.pos_x = x;
    this.pos_y = y;
    this.amplada = w;
    this.altura = h;
    this.radi = r;
    this.text = text;
    this.text_tamany = text_tamany;
    clicked = false;
    amagat = false;
  }

  // ===================
  // MOSTRAR EL BOTÓ
  // ===================

  // Funció per mostrar i dibuixar
  void mostrar() {
    amagat = false;
    // Pintar la forma del color
    fill(255, 255, 255);
    // Dibuixar el rectangle tenint en compte les variables
    rect(pos_x, pos_y, amplada, altura, radi);
    // Pintar de color
    fill(0);
    // Aliniem el text al centre i centre de la pantalla
    textAlign(CENTER, CENTER);
    // Color del contorn
    stroke(0);
    // Pes del contorn (amplada)
    strokeWeight(3);
    // Pintar les seguents formes del color text
    fill(0);
    // El tamany del text segons la variable
    textSize(text_tamany);
    // Dibuixem el text tenint en compte les posicions en pantalla
    text(text, (pos_x + amplada/2), (pos_y + altura/2)-3);
  }

  // Funció per amagar el botó. El fa de 0px x i y per tal que no es pugui clicar. A més, posa variable amagat.
  void amagar() {
    rect(pos_x - pos_x, pos_y - pos_y, amplada - amplada, altura - altura, 0);
    amagat = true;
  }

  // ===================
  // S'HA FET CLIC
  // ===================

  // Funció per detectar els clics en funció de les posicions del ratolí. A més, la funció executa el codi
  void btn_clicked(int mouse_x, int mouse_y, String execute) {
    // Detectar si el cursos és dins de la posició x i y de cada botó
    if (mouse_x > pos_x && mouse_x < pos_x + amplada && mouse_y > pos_y && mouse_y < pos_y + altura) {
      if (amagat == false) {
        if (!(execute == "")) {
          thread(execute);
        }
        clicked = !clicked;
        btn_click.play();
      }
    }
  }
}

// ===================
// CONFIGURACIÓ
// ===================

void btn_inici_bg_1() {
  inici_bg = loadImage(images_src + "inici/bg_1.png", "png");
}

void btn_inici_bg_2() {
  inici_bg = loadImage(images_src + "inici/bg_2.png", "png");
}

void musica_volum() {
  musica_volum = !musica_volum;
}

void sons_volum() {
  sons_volum = !sons_volum;
}

void dificultat1() {
  enemies = new Enemy[8]; // Generar 8 enemics
  vida_enemic_min = 20;
  vida_enemic_max = 120;
}

void dificultat2() {
  enemies = new Enemy[20]; // Generar 20 enemics
  vida_enemic_min = 120;
  vida_enemic_max = 1100;
}
