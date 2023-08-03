// ===================
// CLASE ENEMICS
// ===================

class Enemy {
  float vida_inicial;
  float vida_actual;
  float dany;
  float velocitat;
  float mov;
  float recorregut;
  float xpos;
  float x;
  float ypos;

  Enemy(float vida_inicial_, float dany_, float velocitat_, float xpos_, float ypos_) {
    this.vida_inicial = vida_inicial_;
    vida_actual = vida_inicial;
    this.dany = dany_;
    this.velocitat = velocitat_;
    recorregut = 0;
    mov = 0;
    x = 0;
    this.xpos = xpos_;
    this.ypos = ypos_;
  }

  // enemic[i].display()
  // Serveix per mostrar enemic. Si la vida és 0 o menys, vol dir que està mort.
  void display() {
    if (!(vida_actual <= 0)) { // Si està viu
      x = (-dragged + (xpos - 1667/9)) - recorregut; // Cal fer operacions amb la variable dragged per tal que funcioni correctament, sinó no es mou bé
      image(sprite_2[sprite_2_frame_actual-1], x, ypos);
      vidaMostrar(x + 110, ypos, 17, 76, 15, this.vida_actual, this.vida_inicial);
    }
  }

  // Per moure enemic
  void move() {
    mov++;
    recorregut = mov*velocitat;
    x = (-dragged + (xpos - 1667/9)) - recorregut;
  }

  // Per baixar la vida. Es comprova que estigui viu
  void baixar_vida() {
    if (!(vida_actual <= 0)) {
      vida_actual = vida_actual - 1.4; // Restem 1.4, en una futura versió es pot modificar i comprar més dany per diners
    } else {
      xpos = 2500 + (1667/9);
      x = 0;
      ypos = 460;
      recorregut = 0;
      mov = 0;
      this.vida_actual = this.vida_inicial;
      enemics_matats++;
    }
  }

  // Baixem vida al nostre guerrer. Comprovem que no hagi mort. si ha mort canviem pantalla
  void baixar_vida_guerrer() {
    if (!(vida_guerrer_actual <= 0)) {
      vida_guerrer_actual = vida_guerrer_actual - int(this.dany);
    } else {
      mode = "inici";
      intro_bg_music_1.loop();
    }
  }
}
