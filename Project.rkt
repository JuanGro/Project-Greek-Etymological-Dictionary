#lang racket

#| ########### |#
#| Main method |#
#| ########### |#

#| Join prefixes and suffixes search |#
(define (meaning word)
  (printf "Possible meanings for a word\n\n")
  (get_roots_meaning word)
  (get_prefixes_meaning word)
  (get_suffixes_meaning word))

#| See all the dictionary |#
(define (complete-dictionary)
  (fill_root_dictionary roots)
  (fill_prefix_dictionary prefixes)
  (fill_suffix_dictionary suffixes)
  (print_dictionary_in_friendly_format roots)
  (print_dictionary_in_friendly_format prefixes)
  (print_dictionary_in_friendly_format suffixes))

#| ##### |#
#| Roots |#
#| ##### |#

#| Define the rules for the roots |#
;; Create the dictionary
(define roots (make-hash))

(define (fill_root_dictionary dictionary_name)
  (dict-set! dictionary_name "acro-"
             #hash(("greek-root" . "ἄκρος")
                   ("meaning" . ("Altura" "Extremo"))
                   ("spanish-patrons" . ("acro" "acró"))))
  (dict-set! dictionary_name "adeno"
             #hash(("greek-root" . "ἀδένος")
                   ("meaning" . ("Glándula"))
                   ("spanish-patrons" . ("adeno" "adeni"))))
  (dict-set! dictionary_name "aero"
             #hash(("greek-root" . "ἀερο")
                   ("meaning" . ("Aire"))
                   ("spanish-patrons" . ("aire" "aero" "aeró"))))
  (dict-set! dictionary_name "agogia"
             #hash(("greek-root" . "ἄγω + -ια")
                   ("meaning" . ("Conductor" "Seductor"))
                   ("spanish-patrons" . ("agogia"))))
  (dict-set! dictionary_name "agón"
             #hash(("greek-root" . "ἀγών")
                   ("meaning" . ("Lucha" "Disputa" "Certamen"))
                   ("spanish-patrons" . ("agon" "agón"))))
  (dict-set! dictionary_name "ágora"
             #hash(("greek-root" . "ἀγορά")
                   ("meaning" . ("Asamblea" "Plaza pública" "Mercado" "Discurso"))
                   ("spanish-patrons" . ("agora" "ágora"))))
  (dict-set! dictionary_name "agro-"
             #hash(("greek-root" . "αγρός")
                   ("meaning" . ("Campo como medio natural"))
                   ("spanish-patrons" . ("agro" "agró"))))
  (dict-set! dictionary_name "-algia"
             #hash(("greek-root" . "ἂλγος + - ια")
                   ("meaning" . ("Dolor" "Tristeza"))
                   ("spanish-patrons" . ("algia" "algesia"))))
  (dict-set! dictionary_name "andro"
             #hash(("greek-root" . "ἀνδρός")
                   ("meaning" . ("Varón"))
                   ("spanish-patrons" . ("andra" "andro" "andró" "andria"))))
  (dict-set! dictionary_name "anemo"
             #hash(("greek-root" . "ἄνεμος")
                   ("meaning" . ("Viento"))
                   ("spanish-patrons" . ("anemo" "anémo" "anemó" "anima" "ánima" "animo" "ánimo"))))
  (dict-set! dictionary_name "angio"
             #hash(("greek-root" . "ἀγγεῖον")
                   ("meaning" . ("Vaso"))
                   ("spanish-patrons" . ("angio"))))
  (dict-set! dictionary_name "ántropo"
             #hash(("greek-root" . "ἀνθρωπος")
                   ("meaning" . ("Hombre"))
                   ("spanish-patrons" . ("antropo" "ántropo" "antrópo" "antropó"))))
  (dict-set! dictionary_name "archi-"
             #hash(("greek-root" . "ἀρχι-")
                   ("meaning" . ("El primero" "Denota preeminencia y autoridad"))
                   ("spanish-patrons" . ("archi"))))
  (dict-set! dictionary_name "arqui-"
             #hash(("greek-root" . "ἀρχι-")
                   ("meaning" . ("El primero" "Denota preeminencia y autoridad"))
                   ("spanish-patrons" . ("arqui"))))
  (dict-set! dictionary_name "arque-"
             #hash(("greek-root" . "ἀρχι-")
                   ("meaning" . ("El primero" "Denota preeminencia y autoridad"))
                   ("spanish-patrons" . ("arque"))))
  (dict-set! dictionary_name "-arquía"
             #hash(("greek-root" . "ἀρχι-")
                   ("meaning" . ("El primero" "Denota preeminencia y autoridad"))
                   ("spanish-patrons" . ("arquía"))))
  (dict-set! dictionary_name "aristos"
             #hash(("greek-root" . "ἀριστοι")
                   ("meaning" . ("Los mejores"))
                   ("spanish-patrons" . ("aristo"))))
  (dict-set! dictionary_name "áster-"
             #hash(("greek-root" . "ἀστηρ")
                   ("meaning" . ("Estrella"))
                   ("spanish-patrons" . ("aster" "áster"))))
  (dict-set! dictionary_name "astro"
             #hash(("greek-root" . "ἀστρον")
                   ("meaning" . ("Astro"))
                   ("spanish-patrons" . ("astro" "astró"))))
  (dict-set! dictionary_name "atoms"
             #hash(("greek-root" . "ἀτμός")
                   ("meaning" . ("Vapor"))
                   ("spanish-patrons" . ("atmos" "atmós"))))
  (dict-set! dictionary_name "-atra"
             #hash(("greek-root" . "ἰατρός")
                   ("meaning" . ("El que cura"))
                   ("spanish-patrons" . ("atra"))))
  (dict-set! dictionary_name "auto-"
             #hash(("greek-root" . "αὐτος")
                   ("meaning" . ("Por sí mismo"))
                   ("spanish-patrons" . ("auto" "autó"))))
  (dict-set! dictionary_name "auto-"
             #hash(("greek-root" . "αὐτος")
                   ("meaning" . ("Por sí mismo"))
                   ("spanish-patrons" . ("auto" "autó"))))
  (dict-set! dictionary_name "axio"
             #hash(("greek-root" . "ἄξιος")
                   ("meaning" . ("Valor" "Dignidad"))
                   ("spanish-patrons" . ("auto" "autó"))))
  (dict-set! dictionary_name "baino"
             #hash(("greek-root" . "βαίνω")
                   ("meaning" . ("Ir" "Dar paso"))
                   ("spanish-patrons" . ("base" "bena" "bático"))))
  (dict-set! dictionary_name "baro"
             #hash(("greek-root" . "βάρoς")
                   ("meaning" . ("Pesadez" "Peso" "Carga" "Mole" "Gravedad"))
                   ("spanish-patrons" . ("baró"))))
  (dict-set! dictionary_name "biblio-"
             #hash(("greek-root" . "βιβλίον")
                   ("meaning" . ("Papiro" "Libro"))
                   ("spanish-patrons" . ("biblia" "biblio" "biblió"))))
  (dict-set! dictionary_name "bio"
             #hash(("greek-root" . "βιο")
                   ("meaning" . ("Vida"))
                   ("spanish-patrons" . ("bio" "bió"))))
  (dict-set! dictionary_name "bouele"
             #hash(("greek-root" . "βουλή")
                   ("meaning" . ("Voluntad"))
                   ("spanish-patrons" . ("abu"))))
  (dict-set! dictionary_name "braqui-"
             #hash(("greek-root" . "βραχύς")
                   ("meaning" . ("Pequeño" "Corto breve"))
                   ("spanish-patrons" . ("braqui"))))
  (dict-set! dictionary_name "braquio-"
             #hash(("greek-root" . "βραχιον")
                   ("meaning" . ("Brazo" "Hombro"))
                   ("spanish-patrons" . ("braquio" "braquió" "braquia"))))
  (dict-set! dictionary_name "bromato"
             #hash(("greek-root" . "βρῶματος")
                   ("meaning" . ("De alimento"))
                   ("spanish-patrons" . ("bromato"))))
  (dict-set! dictionary_name "caco-"
             #hash(("greek-root" . "κακός")
                   ("meaning" . ("Mal" "Malo"))
                   ("spanish-patrons" . ("caco"))))
  (dict-set! dictionary_name "cali-"
             #hash(("greek-root" . "καλός")
                   ("meaning" . ("Bello"))
                   ("spanish-patrons" . ("cali"))))
  (dict-set! dictionary_name "cardia"
             #hash(("greek-root" . "καρδία")
                   ("meaning" . ("Corazón"))
                   ("spanish-patrons" . ("cardio" "cardió"))))
  (dict-set! dictionary_name "-carpio"
             #hash(("greek-root" . "κάρπιον")
                   ("meaning" . ("Fruto"))
                   ("spanish-patrons" . ("carpio"))))
  (dict-set! dictionary_name "cefalo"
             #hash(("greek-root" . "κεφαλή")
                   ("meaning" . ("Cabeza"))
                   ("spanish-patrons" . ("cefalo" "céfalo" "cefala" "cefalia"))))
  (dict-set! dictionary_name "cine"
             #hash(("greek-root" . "kiνη")
                   ("meaning" . ("Movimiento"))
                   ("spanish-patrons" . ("cine"))))
  (dict-set! dictionary_name "cino"
             #hash(("greek-root" . "κυνος")
                   ("meaning" . ("Perro"))
                   ("spanish-patrons" . ("cino" "cíni"))))
  (dict-set! dictionary_name "cito"
             #hash(("greek-root" . "κύτος")
                   ("meaning" . ("Célula"))
                   ("spanish-patrons" . ("cito"))))
  (dict-set! dictionary_name "clepto"
             #hash(("greek-root" . "κλέπτω")
                   ("meaning" . ("Robar" "Esconder"))
                   ("spanish-patrons" . ("clepto" "clepsi"))))
  (dict-set! dictionary_name "copro"
             #hash(("greek-root" . "κόπρος")
                   ("meaning" . ("Excremento"))
                   ("spanish-patrons" . ("copro" "copró"))))
  (dict-set! dictionary_name "cosmo-"
             #hash(("greek-root" . "κόσμος")
                   ("meaning" . ("Belleza" "Ornamento" "Orden" "Equilibrio" "Cielo"))
                   ("spanish-patrons" . ("cosmo" "cosmé"))))
  (dict-set! dictionary_name "cope"
             #hash(("greek-root" . "κοπή")
                   ("meaning" . ("Golpear" "Pegar" "Romper"))
                   ("spanish-patrons" . ("cope" "copa"))))
  (dict-set! dictionary_name "-cracia"
             #hash(("greek-root" . "κράτος + - ία")
                   ("meaning" . ("Gobierno"))
                   ("spanish-patrons" . ("cracia"))))
  (dict-set! dictionary_name "crato"
             #hash(("greek-root" . "κράτος")
                   ("meaning" . ("Poder" "Autoridad" "Dominio" "Soberanía"))
                   ("spanish-patrons" . ("crato" "cracio"))))
  (dict-set! dictionary_name "cripto-"
             #hash(("greek-root" . "κρυπτικος")
                   ("meaning" . ("Escondido"))
                   ("spanish-patrons" . ("cripto" "crípti" "criptó"))))
  (dict-set! dictionary_name "criso"
             #hash(("greek-root" . "χρυσός")
                   ("meaning" . ("Oro"))
                   ("spanish-patrons" . ("criso" "crisó"))))
  (dict-set! dictionary_name "crono"
             #hash(("greek-root" . "χρόνος")
                   ("meaning" . ("Tiempo"))
                   ("spanish-patrons" . ("crono" "cronó" "croni" "croní"))))
  (dict-set! dictionary_name "dactilo-"
             #hash(("greek-root" . "δακτυλος")
                   ("meaning" . ("Dedos"))
                   ("spanish-patrons" . ("dactilo"))))
  (dict-set! dictionary_name "deca-"
             #hash(("greek-root" . "δεκα")
                   ("meaning" . ("Diez"))
                   ("spanish-patrons" . ("deca" "decá"))))
  (dict-set! dictionary_name "demo"
             #hash(("greek-root" . "δῆμος")
                   ("meaning" . ("Comarca" "País" "Habitantes de un pueblo" "Ciudadanos"))
                   ("spanish-patrons" . ("demo" "dema" "demia" "dermia"))))
  (dict-set! dictionary_name "derma"
             #hash(("greek-root" . "δέρμα")
                   ("meaning" . ("Piel"))
                   ("spanish-patrons" . ("dermo" "derma" "dérmico"))))
  (dict-set! dictionary_name "-doja"
             #hash(("greek-root" . "δοξα")
                   ("meaning" . ("Opinión"))
                   ("spanish-patrons" . ("doja" "doxo"))))
  (dict-set! dictionary_name "domo"
             #hash(("greek-root" . "δῶμος")
                   ("meaning" . ("Casa" "Edificio"))
                   ("spanish-patrons" . ("domo" "domó" "dome" "domé" "doma"))))
  (dict-set! dictionary_name "-dromo"
             #hash(("greek-root" . "δρομος")
                   ("meaning" . ("Carrera" "Recorrido" "Pista"))
                   ("spanish-patrons" . ("dromo"))))
  (dict-set! dictionary_name "dinami"
             #hash(("greek-root" . "δύναμις")
                   ("meaning" . ("Fuerza" "Poder" "Capacidad"))
                   ("spanish-patrons" . ("dinami" "dinámi" "dinamia" "dinamo"))))
  (dict-set! dictionary_name "edro"
             #hash(("greek-root" . "εδρος")
                   ("meaning" . ("Cara"))
                   ("spanish-patrons" . ("edro"))))
  (dict-set! dictionary_name "endo"
             #hash(("greek-root" . "ἒνδον")
                   ("meaning" . ("Dentro"))
                   ("spanish-patrons" . ("endo" "endó"))))
  (dict-set! dictionary_name "entomo"
             #hash(("greek-root" . "ἔντομον")
                   ("meaning" . ("Insecto"))
                   ("spanish-patrons" . ("ento"))))
  (dict-set! dictionary_name "ergo"
             #hash(("greek-root" . "ἒργον")
                   ("meaning" . ("Trabajo" "Empresa"))
                   ("spanish-patrons" . ("ergo" "ergía" "urgo"))))
  (dict-set! dictionary_name "ero-"
             #hash(("greek-root" . "ἐρως")
                   ("meaning" . ("Amor" "Deseo"))
                   ("spanish-patrons" . ("ero" "eró"))))
  (dict-set! dictionary_name "etno-"
             #hash(("greek-root" . "ἔθνος")
                   ("meaning" . ("Pueblo" "Raza" "Nación"))
                   ("spanish-patrons" . ("etno" "etnó" "etni" "étni"))))
  (dict-set! dictionary_name "eto"
             #hash(("greek-root" . "ἔθος")
                   ("meaning" . ("Costumbre" "Hábito"))
                   ("spanish-patrons" . ("eto" "éti"))))
  (dict-set! dictionary_name "-fago"
             #hash(("greek-root" . "φάγος")
                   ("meaning" . ("Que come"))
                   ("spanish-patrons" . ("fago"))))
  (dict-set! dictionary_name "femi"
             #hash(("greek-root" . "φημί")
                   ("meaning" . ("Decir"))
                   ("spanish-patrons" . ("femi" "fame" "fama" "feta" "femia" "fasia" "fante"))))
  (dict-set! dictionary_name "-filia"
             #hash(("greek-root" . "φίλος + -ία")
                   ("meaning" . ("Amistad" "Afecto" "Amor" "Benevolencia"))
                   ("spanish-patrons" . ("filia"))))
  (dict-set! dictionary_name "filo-"
             #hash(("greek-root" . "φίλος")
                   ("meaning" . ("Amistad" "Afecto" "Amor" "Benevolencia"))
                   ("spanish-patrons" . ("filo" "filó" "filá"))))
  (dict-set! dictionary_name "fito"
             #hash(("greek-root" . "φυτόν")
                   ("meaning" . ("Planta" "Vegetal"))
                   ("spanish-patrons" . ("fito" "fitó"))))
  (dict-set! dictionary_name "fisi"
             #hash(("greek-root" . "φύσις")
                   ("meaning" . ("Naturaleza"))
                   ("spanish-patrons" . ("fisi" "físi"))))
  (dict-set! dictionary_name "-fobia"
             #hash(("greek-root" . "φοβος + ία")
                   ("meaning" . ("Miedo" "Terror" "Huída"))
                   ("spanish-patrons" . ("fobia"))))
  (dict-set! dictionary_name "foné"
             #hash(("greek-root" . "φωνη")
                   ("meaning" . ("Sonido" "Voz"))
                   ("spanish-patrons" . ("fonía" "fonó"))))
  (dict-set! dictionary_name "-fono"
             #hash(("greek-root" . "φωνος")
                   ("meaning" . ("Sonido"))
                   ("spanish-patrons" . ("fono"))))
  (dict-set! dictionary_name "foto-"
             #hash(("greek-root" . "φωνος")
                   ("meaning" . ("Luz"))
                   ("spanish-patrons" . ("foto" "fotó"))))
  (dict-set! dictionary_name "gameo"
             #hash(("greek-root" . "γαμέω")
                   ("meaning" . ("Tomar marido o mujer"))
                   ("spanish-patrons" . ("game" "gama"))))
  (dict-set! dictionary_name "-gamia"
             #hash(("greek-root" . "γαμέω + ία")
                   ("meaning" . ("Tomar marido o mujer"))
                   ("spanish-patrons" . ("gamia"))))
  (dict-set! dictionary_name "-geno"
             #hash(("greek-root" . "γενος")
                   ("meaning" . ("Nacimiento" "Origen" "Linaje"))
                   ("spanish-patrons" . ("geno"))))
  (dict-set! dictionary_name "génea"
             #hash(("greek-root" . "γενεά")
                   ("meaning" . ("Nacimiento" "Origen" "Linaje"))
                   ("spanish-patrons" . ("genea" "genia" "geno"))))
  (dict-set! dictionary_name "geo"
             #hash(("greek-root" . "γεως")
                   ("meaning" . ("Tierra"))
                   ("spanish-patrons" . ("geo"))))
  (dict-set! dictionary_name "geron"
             #hash(("greek-root" . "γέρων")
                   ("meaning" . ("Viejo" "Anciano"))
                   ("spanish-patrons" . ("geria" "geriá" "geron"))))
  (dict-set! dictionary_name "giné"
             #hash(("greek-root" . "γυνή")
                   ("meaning" . ("Mujer"))
                   ("spanish-patrons" . ("gine" "gino" "ginia"))))
  (dict-set! dictionary_name "glifo"
             #hash(("greek-root" . "γλύφω")
                   ("meaning" . ("Esculpir" "Grabar" "Cincelar"))
                   ("spanish-patrons" . ("glifo" "glífi" "glipto"))))
  (dict-set! dictionary_name "gnosis"
             #hash(("greek-root" . "γνῶσις")
                   ("meaning" . ("Conocimiento" "Ciencia"))
                   ("spanish-patrons" . ("gnos" "gnós" "gnom"))))
  (dict-set! dictionary_name "-gono"
             #hash(("greek-root" . "γωνος")
                   ("meaning" . ("Ángulo"))
                   ("spanish-patrons" . ("gono"))))
  (dict-set! dictionary_name "-grafía"
             #hash(("greek-root" . "γράφος + -ία")
                   ("meaning" . ("Grabar" "Escribir"))
                   ("spanish-patrons" . ("grafia" "grafía"))))
  (dict-set! dictionary_name "-grafo"
             #hash(("greek-root" . "γράφος")
                   ("meaning" . ("Grabar" "Escribir"))
                   ("spanish-patrons" . ("grafo"))))
  (dict-set! dictionary_name "-grama"
             #hash(("greek-root" . "γράμμα")
                   ("meaning" . ("Escrito" "Letra" "Carta"))
                   ("spanish-patrons" . ("grama"))))
  (dict-set! dictionary_name "hágios"
             #hash(("greek-root" . "ἅγιος")
                   ("meaning" . ("Santo"))
                   ("spanish-patrons" . ("hagio"))))
  (dict-set! dictionary_name "hecto-"
             #hash(("greek-root" . "εκατον")
                   ("meaning" . ("Cien"))
                   ("spanish-patrons" . ("hecto" "hectó"))))
  (dict-set! dictionary_name "helio-"
             #hash(("greek-root" . "ηλιος")
                   ("meaning" . ("Sol"))
                   ("spanish-patrons" . ("helio" "helió"))))
  (dict-set! dictionary_name "hema-"
             #hash(("greek-root" . "αἷμα")
                   ("meaning" . ("Sangre"))
                   ("spanish-patrons" . ("hemo" "hema" "emia"))))
  (dict-set! dictionary_name "hemato-"
             #hash(("greek-root" . "αιματος")
                   ("meaning" . ("Sangre"))
                   ("spanish-patrons" . ("hemato"))))
  (dict-set! dictionary_name "hemera"
             #hash(("greek-root" . "ἐφήμερος")
                   ("meaning" . ("Día"))
                   ("spanish-patrons" . ("hemera" "hemero"))))
  (dict-set! dictionary_name "hemi-"
             #hash(("greek-root" . "ημι")
                   ("meaning" . ("Semi" "Medio"))
                   ("spanish-patrons" . ("hemi"))))
  (dict-set! dictionary_name "hepato-"
             #hash(("greek-root" . "ἥπατος")
                   ("meaning" . ("Hígado"))
                   ("spanish-patrons" . ("hepato" "hepati"))))
  (dict-set! dictionary_name "hepta-"
             #hash(("greek-root" . "επτα")
                   ("meaning" . ("Siete"))
                   ("spanish-patrons" . ("hepta" "heptá"))))
  (dict-set! dictionary_name "hetero-"
             #hash(("greek-root" . "ετερος")
                   ("meaning" . ("El otro" "Distinto"))
                   ("spanish-patrons" . ("hetero"))))
  (dict-set! dictionary_name "hexa-"
             #hash(("greek-root" . "εξα")
                   ("meaning" . ("Seis"))
                   ("spanish-patrons" . ("hexa" "hexá"))))
  (dict-set! dictionary_name "hidro-"
             #hash(("greek-root" . "υδρος")
                   ("meaning" . ("Agua"))
                   ("spanish-patrons" . ("hidro" "hidró" "hídri"))))
  (dict-set! dictionary_name "hiper"
             #hash(("greek-root" . "")
                   ("meaning" . ("Sobre" "Por encima de"))
                   ("spanish-patrons" . ("hiper" "hipér"))))
  (dict-set! dictionary_name "hipo-"
             #hash(("greek-root" . "ιἳππος")
                   ("meaning" . ("Caballo"))
                   ("spanish-patrons" . ("hipo" "hipó"))))
  (dict-set! dictionary_name "higro-"
             #hash(("greek-root" . "υγρός")
                   ("meaning" . ("Húmedo"))
                   ("spanish-patrons" . ("higro"))))
  (dict-set! dictionary_name "homo-"
             #hash(("greek-root" . "ομος")
                   ("meaning" . ("Igual" "Semejante"))
                   ("spanish-patrons" . ("homo" "homó"))))
  (dict-set! dictionary_name "icon-"
             #hash(("greek-root" . "εικον")
                   ("meaning" . ("Imagen" "Representación"))
                   ("spanish-patrons" . ("icono"))))
  (dict-set! dictionary_name "iso-"
             #hash(("greek-root" . "ισος")
                   ("meaning" . ("Igual"))
                   ("spanish-patrons" . ("iso" "isó"))))
  (dict-set! dictionary_name "icti-"
             #hash(("greek-root" . "ἰχθύς")
                   ("meaning" . ("Pez" "Pescado"))
                   ("spanish-patrons" . ("icti"))))
  (dict-set! dictionary_name "kilo-"
             #hash(("greek-root" . "χιλιοι-")
                   ("meaning" . ("Mil"))
                   ("spanish-patrons" . ("kilo" "kiló" "kilio"))))
  (dict-set! dictionary_name "laringe-"
             #hash(("greek-root" . "λάρυγγας")
                   ("meaning" . ("Laringe"))
                   ("spanish-patrons" . ("laringe" "laringo" "laringó" "laringi"))))
  (dict-set! dictionary_name "-latría"
             #hash(("greek-root" . "λατρεία")
                   ("meaning" . ("Adoración" "Culto" "Servicio"))
                   ("spanish-patrons" . ("latría" "latra"))))
  (dict-set! dictionary_name "leuco-"
             #hash(("greek-root" . "λευκός")
                   ("meaning" . ("Blanco" "Reluciente"))
                   ("spanish-patrons" . ("leuco" "leuce"))))
  (dict-set! dictionary_name "-lisis"
             #hash(("greek-root" . "λυσις")
                   ("meaning" . ("Separación" "Disolución"))
                   ("spanish-patrons" . ("lisis"))))
  (dict-set! dictionary_name "lito"
             #hash(("greek-root" . "λίθος")
                   ("meaning" . ("Piedra"))
                   ("spanish-patrons" . ("lito" "lítico"))))
  (dict-set! dictionary_name "-logo"
             #hash(("greek-root" . "λόγο")
                   ("meaning" . ("Experto"))
                   ("spanish-patrons" . ("logo"))))
  (dict-set! dictionary_name "logos"
             #hash(("greek-root" . "λόγος")
                   ("meaning" . ("Palabra" "Tratado" "Estudio"))
                   ("spanish-patrons" . ("logía" "logismo"))))
  (dict-set! dictionary_name "macro-"
             #hash(("greek-root" . "μακρος")
                   ("meaning" . ("Grande" "Mucho"))
                   ("spanish-patrons" . ("macro"))))
  (dict-set! dictionary_name "-mancia"
             #hash(("greek-root" . "-μαντεία")
                   ("meaning" . ("Adivinación"))
                   ("spanish-patrons" . ("mancia"))))
  (dict-set! dictionary_name "manía"
             #hash(("greek-root" . "μανία")
                   ("meaning" . ("Locura" "Entusiasmo"))
                   ("spanish-patrons" . ("manía" "mani"))))
  (dict-set! dictionary_name "-maquia"
             #hash(("greek-root" . "μάχη + -ία")
                   ("meaning" . ("Lucha" "Combate"))
                   ("spanish-patrons" . ("maquia"))))
  (dict-set! dictionary_name "mega-"
             #hash(("greek-root" . "μεγας")
                   ("meaning" . ("Grande" "Importante"))
                   ("spanish-patrons" . ("mega"))))
  (dict-set! dictionary_name "melo-"
             #hash(("greek-root" . "μέλος")
                   ("meaning" . ("Canto" "Poesía"))
                   ("spanish-patrons" . ("melo" "meló"))))
  (dict-set! dictionary_name "méla-"
             #hash(("greek-root" . "μέλας")
                   ("meaning" . ("Negro"))
                   ("spanish-patrons" . ("mela"))))
  (dict-set! dictionary_name "menós"
             #hash(("greek-root" . "μηνός")
                   ("meaning" . ("Mes" "Luna"))
                   ("spanish-patrons" . ("meno" "meni"))))
  (dict-set! dictionary_name "meso-"
             #hash(("greek-root" . "μεσος")
                   ("meaning" . ("En medio" "Entre"))
                   ("spanish-patrons" . ("meso"))))
  (dict-set! dictionary_name "-metro"
             #hash(("greek-root" . "μέτρον")
                   ("meaning" . ("Medida" "Instrumento para medir"))
                   ("spanish-patrons" . ("metro"))))
  (dict-set! dictionary_name "micro-"
             #hash(("greek-root" . "μικρος")
                   ("meaning" . ("Pequeño"))
                   ("spanish-patrons" . ("micro"))))
  (dict-set! dictionary_name "miria-"
             #hash(("greek-root" . "μυριος")
                   ("meaning" . ("Diez mil" "Innumerable"))
                   ("spanish-patrons" . ("miriá" "miría"))))
  (dict-set! dictionary_name "mitos"
             #hash(("greek-root" . "μίτος")
                   ("meaning" . ("Hilo"))
                   ("spanish-patrons" . ("mito"))))
  (dict-set! dictionary_name "mis-"
             #hash(("greek-root" . "μισαν")
                   ("meaning" . ("Odiar" "Aborrecer"))
                   ("spanish-patrons" . ("misá" "misó"))))
  (dict-set! dictionary_name "mis-"
             #hash(("greek-root" . "μισαν")
                   ("meaning" . ("Odiar" "Aborrecer"))
                   ("spanish-patrons" . ("misá" "misó"))))
  (dict-set! dictionary_name "mnéme"
             #hash(("greek-root" . "μνήμη")
                   ("meaning" . ("Recuerdo" "Memoria"))
                   ("spanish-patrons" . ("mne"))))
  (dict-set! dictionary_name "mono-"
             #hash(("greek-root" . "μονος")
                   ("meaning" . ("Solo" "Único" "Singular"))
                   ("spanish-patrons" . ("mono"))))
  (dict-set! dictionary_name "morfé"
             #hash(("greek-root" . "μορφή")
                   ("meaning" . ("Forma" "Figura"))
                   ("spanish-patrons" . ("morfo" "morfe"))))
  (dict-set! dictionary_name "necro-"
             #hash(("greek-root" . "νεκρος")
                   ("meaning" . ("Muerto"))
                   ("spanish-patrons" . ("necro" "necró"))))
  (dict-set! dictionary_name "nefrós"
             #hash(("greek-root" . "νεφρος")
                   ("meaning" . ("Riñón"))
                   ("spanish-patrons" . ("nefro" "nefrí"))))
  (dict-set! dictionary_name "néo-"
             #hash(("greek-root" . "νέος")
                   ("meaning" . ("Nuevo"))
                   ("spanish-patrons" . ("neo" "neó"))))
  (dict-set! dictionary_name "neuma"
             #hash(("greek-root" . "πνεῦμα")
                   ("meaning" . ("Viento" "Aliento" "Soplo" "Vida" "Alma" "Espíritu"))
                   ("spanish-patrons" . ("neuma" "neumo" "pnea"))))
  (dict-set! dictionary_name "neuro-"
             #hash(("greek-root" . "νευρο")
                   ("meaning" . ("Nervio"))
                   ("spanish-patrons" . ("nuero" "neuró" "nuera"))))
  (dict-set! dictionary_name "ninfo"
             #hash(("greek-root" . "νύμφη")
                   ("meaning" . ("Novia recién casada"))
                   ("spanish-patrons" . ("ninfo"))))
  (dict-set! dictionary_name "-nomia"
             #hash(("greek-root" . "νόμος + -ία")
                   ("meaning" . ("Regla" "Norma" "Orden"))
                   ("spanish-patrons" . ("nomia" "nomía"))))
  (dict-set! dictionary_name "octo-"
             #hash(("greek-root" . "οκτω")
                   ("meaning" . ("Ocho"))
                   ("spanish-patrons" . ("octó"))))
  (dict-set! dictionary_name "odonto"
             #hash(("greek-root" . "ὀδών")
                   ("meaning" . ("Diente"))
                   ("spanish-patrons" . ("odonto" "odonte"))))
  (dict-set! dictionary_name "-oide"
             #hash(("greek-root" . "ειδής")
                   ("meaning" . ("Imagen" "Representación"))
                   ("spanish-patrons" . ("oide"))))
  (dict-set! dictionary_name "oligo-"
             #hash(("greek-root" . "ολιγος")
                   ("meaning" . ("Poco" "Pequeño" "Escaso"))
                   ("spanish-patrons" . ("oligo"))))
  (dict-set! dictionary_name "oicós"
             #hash(("greek-root" . "οἶκος")
                   ("meaning" . ("Casa"))
                   ("spanish-patrons" . ("eco" "ecu"))))
  (dict-set! dictionary_name "oltalmos"
             #hash(("greek-root" . "ὀφθαλμός")
                   ("meaning" . ("Ojo"))
                   ("spanish-patrons" . ("oftalmia" "oftalmo" "oftalmó"))))
  (dict-set! dictionary_name "-oma"
             #hash(("greek-root" . "ωμα")
                   ("meaning" . ("Tumor"))
                   ("spanish-patrons" . ("oma"))))
  (dict-set! dictionary_name "ónoma"
             #hash(("greek-root" . "ὀνομα")
                   ("meaning" . ("Nombre" "Palabra"))
                   ("spanish-patrons" . ("ónimo" "onimia" "onoma" "onomá"))))
  (dict-set! dictionary_name "onto"
             #hash(("greek-root" . "ὄντος")
                   ("meaning" . ("El ser"))
                   ("spanish-patrons" . ("onto"))))
  (dict-set! dictionary_name "oplo"
             #hash(("greek-root" . "ὅπλον")
                   ("meaning" . ("Arma"))
                   ("spanish-patrons" . ("oplo"))))
  (dict-set! dictionary_name "opsis"
             #hash(("greek-root" . "ὄψις")
                   ("meaning" . ("Vista" "Ojos" "Mirada"))
                   ("spanish-patrons" . ("opsia" "óptica" "óptico"))))
  (dict-set! dictionary_name "-orama"
             #hash(("greek-root" . "ὅραμα")
                   ("meaning" . ("Vista" "Espectáculo"))
                   ("spanish-patrons" . ("orama"))))
  (dict-set! dictionary_name "ornis"
             #hash(("greek-root" . "ορνις")
                   ("meaning" . ("Pájaro"))
                   ("spanish-patrons" . ("ornito"))))
  (dict-set! dictionary_name "orto-"
             #hash(("greek-root" . "ορθως")
                   ("meaning" . ("Bien" "Recto"))
                   ("spanish-patrons" . ("orto"))))
  (dict-set! dictionary_name "-osis"
             #hash(("greek-root" . "ωσις")
                   ("meaning" . ("Enfermedad"))
                   ("spanish-patrons" . ("osis"))))
  (dict-set! dictionary_name "ósteon"
             #hash(("greek-root" . "ὀστέον")
                   ("meaning" . ("Hueso"))
                   ("spanish-patrons" . ("osteo" "ósteo"))))
  (dict-set! dictionary_name "oto"
             #hash(("greek-root" . "ὠτός")
                   ("meaning" . ("Oído"))
                   ("spanish-patrons" . ("oto" "oti"))))
  (dict-set! dictionary_name "paido"
             #hash(("greek-root" . "παιδίον")
                   ("meaning" . ("Niño"))
                   ("spanish-patrons" . ("peda" "pedo" "paleon"))))
  (dict-set! dictionary_name "paleo"
             #hash(("greek-root" . "παλαιός")
                   ("meaning" . ("Antiguo" "Viejo"))
                   ("spanish-patrons" . ("paleo"))))
  (dict-set! dictionary_name "pan-"
             #hash(("greek-root" . "παν")
                   ("meaning" . ("Todo" "Entero" "Completo"))
                   ("spanish-patrons" . ("pan"))))
  (dict-set! dictionary_name "para"
             #hash(("greek-root" . "παρα")
                   ("meaning" . ("Junto a" "A lo largo de" "Contra"))
                   ("spanish-patrons" . ("para" "pará"))))
  (dict-set! dictionary_name "parténos"
             #hash(("greek-root" . "παρθένος")
                   ("meaning" . ("Virgen" "Doncella" "Célibe"))
                   ("spanish-patrons" . ("parteno"))))
  (dict-set! dictionary_name "patos"
             #hash(("greek-root" . "πάθος")
                   ("meaning" . ("Sentimiento" "Desgracia" "Sufrimiento"))
                   ("spanish-patrons" . ("patía" "pato" "pató" "paté"))))
  (dict-set! dictionary_name "pedon"
             #hash(("greek-root" . "πέδον")
                   ("meaning" . ("Plano" "Suelo"))
                   ("spanish-patrons" . ("pedol"))))
  (dict-set! dictionary_name "-pedia"
             #hash(("greek-root" . "παιδεία")
                   ("meaning" . ("Instrucción" "Niñez"))
                   ("spanish-patrons" . ("pedia"))))
  (dict-set! dictionary_name "penta"
             #hash(("greek-root" . "πεντα")
                   ("meaning" . ("Cinco"))
                   ("spanish-patrons" . ("penta"))))
  (dict-set! dictionary_name "piro-"
             #hash(("greek-root" . "πυρος")
                   ("meaning" . ("Fuego" "Ardor" "Pasión"))
                   ("spanish-patrons" . ("piro" "piró"))))
  (dict-set! dictionary_name "plastós"
             #hash(("greek-root" . "πλαστός")
                   ("meaning" . ("Modelado"))
                   ("spanish-patrons" . ("plastia" "plásti" "plasma"))))
  (dict-set! dictionary_name "podo"
             #hash(("greek-root" . "ποδός")
                   ("meaning" . ("Pie"))
                   ("spanish-patrons" . ("podo" "podó" "poda"))))
  (dict-set! dictionary_name "polemos"
             #hash(("greek-root" . "πόλεμος")
                   ("meaning" . ("Lucha"))
                   ("spanish-patrons" . ("polé"))))
  (dict-set! dictionary_name "poli-"
             #hash(("greek-root" . "πολύς")
                   ("meaning" . ("Mucho" "Numeroso"))
                   ("spanish-patrons" . ("poli" "polí"))))
  (dict-set! dictionary_name "pólis"
             #hash(("greek-root" . "πόλις")
                   ("meaning" . ("Ciudad" "Patria" "Estado"))
                   ("spanish-patrons" . ("poli" "polí"))))
  (dict-set! dictionary_name "pornéia"
             #hash(("greek-root" . "πορνεία")
                   ("meaning" . ("Prostitución" "Adulterio"))
                   ("spanish-patrons" . ("porno"))))
  (dict-set! dictionary_name "potamo"
             #hash(("greek-root" . "πόταμος")
                   ("meaning" . ("Río"))
                   ("spanish-patrons" . ("potamo" "pótamo"))))
  (dict-set! dictionary_name "présbis"
             #hash(("greek-root" . "πρέσβυς")
                   ("meaning" . ("Viejo" "Anciano"))
                   ("spanish-patrons" . ("presbi" "presbí"))))
  (dict-set! dictionary_name "próto-"
             #hash(("greek-root" . "προτος-")
                   ("meaning" . ("El primero"))
                   ("spanish-patrons" . ("proto" "protó" "prota"))))
  (dict-set! dictionary_name "psico"
             #hash(("greek-root" . "ψυχή")
                   ("meaning" . ("Alma" "Espíritu" "Aliento vital"))
                   ("spanish-patrons" . ("psico" "psicó" "sico" "psiqui"))))
  (dict-set! dictionary_name "-ptero"
             #hash(("greek-root" . "πτερόν")
                   ("meaning" . ("Pluma" "Ala" "Rama"))
                   ("spanish-patrons" . ("óptero"))))
  (dict-set! dictionary_name "quiro"
             #hash(("greek-root" . "χειρο")
                   ("meaning" . ("Mano"))
                   ("spanish-patrons" . ("quiro" "quiró" "quirú"))))
  (dict-set! dictionary_name "reo"
             #hash(("greek-root" . "ρέω")
                   ("meaning" . ("Correr" "Manar"))
                   ("spanish-patrons" . ("rrea" "rragia"))))
  (dict-set! dictionary_name "rinos"
             #hash(("greek-root" . "ῥινός")
                   ("meaning" . ("Nariz"))
                   ("spanish-patrons" . ("rino" "rini"))))
  (dict-set! dictionary_name "sarco"
             #hash(("greek-root" . "σαρκός")
                   ("meaning" . ("Carne"))
                   ("spanish-patrons" . ("sarcó"))))
  (dict-set! dictionary_name "-saurio"
             #hash(("greek-root" . "σαῦρος")
                   ("meaning" . ("Lagarto"))
                   ("spanish-patrons" . ("saurio"))))
  (dict-set! dictionary_name "-scopio"
             #hash(("greek-root" . "σκοπέω")
                   ("meaning" . ("Mirar" "Observar" "Examinar" "Indagar"))
                   ("spanish-patrons" . ("scopio" "scopia"))))
  (dict-set! dictionary_name "seleno"
             #hash(("greek-root" . "σελήνη")
                   ("meaning" . ("Luna"))
                   ("spanish-patrons" . ("semá" "semi"))))
  (dict-set! dictionary_name "sfera"
             #hash(("greek-root" . "σφαῖρα")
                   ("meaning" . ("Esfera" "Globo"))
                   ("spanish-patrons" . ("sfera" "sferio"))))
  (dict-set! dictionary_name "-sofía"
             #hash(("greek-root" . "σοφια")
                   ("meaning" . ("Sabiduría" "Ciencia"))
                   ("spanish-patrons" . ("sofía"))))
  (dict-set! dictionary_name "sofo"
             #hash(("greek-root" . "σοφός")
                   ("meaning" . ("Habilidad" "Destreza"))
                   ("spanish-patrons" . ("sofis"))))
  (dict-set! dictionary_name "soma"
             #hash(("greek-root" . "σώμα")
                   ("meaning" . ("Cuerpo"))
                   ("spanish-patrons" . ("soma"))))
  (dict-set! dictionary_name "stato"
             #hash(("greek-root" . "στατός")
                   ("meaning" . ("Postura" "Estabilidad"))
                   ("spanish-patrons" . ("státi" "stasio"))))
  (dict-set! dictionary_name "stenos"
             #hash(("greek-root" . "στενος")
                   ("meaning" . ("Estrecho" "Fuerza"))
                   ("spanish-patrons" . ("steno" "stenia"))))
  (dict-set! dictionary_name "strofe"
             #hash(("greek-root" . "στροφή")
                   ("meaning" . ("Dar vueltas"))
                   ("spanish-patrons" . ("strofe"))))
  (dict-set! dictionary_name "tánatos"
             #hash(("greek-root" . "θάνατος")
                   ("meaning" . ("Muerte" "Homicidio"))
                   ("spanish-patrons" . ("tanato" "tanasia" "tanasio"))))
  (dict-set! dictionary_name "taqui"
             #hash(("greek-root" . "ταχυς")
                   ("meaning" . ("Rápido"))
                   ("spanish-patrons" . ("taqui"))))
  (dict-set! dictionary_name "teca"
             #hash(("greek-root" . "θηκη")
                   ("meaning" . ("Caja" "Armario"))
                   ("spanish-patrons" . ("teca"))))
  (dict-set! dictionary_name "tele-"
             #hash(("greek-root" . "τηλε")
                   ("meaning" . ("Lejos" "A lo lejos"))
                   ("spanish-patrons" . ("tele" "telé"))))
  (dict-set! dictionary_name "teleos"
             #hash(("greek-root" . "τέλεος")
                   ("meaning" . ("Fin" "Acabamiento"))
                   ("spanish-patrons" . ("teleo" "teleó"))))
  (dict-set! dictionary_name "teós"
             #hash(("greek-root" . "θεός")
                   ("meaning" . ("Dios"))
                   ("spanish-patrons" . ("teo" "teón"))))
  (dict-set! dictionary_name "-terapia"
             #hash(("greek-root" . "θεραπεια")
                   ("meaning" . ("Servicio" "Cura"))
                   ("spanish-patrons" . ("terapia"))))
  (dict-set! dictionary_name "termó-"
             #hash(("greek-root" . "θερμος")
                   ("meaning" . ("Caliente"))
                   ("spanish-patrons" . ("termo" "termó"))))
  (dict-set! dictionary_name "tésis"
             #hash(("greek-root" . "θέσις")
                   ("meaning" . ("Proposición" "Aserto"))
                   ("spanish-patrons" . ("tesis" "tésis"))))
  (dict-set! dictionary_name "tetra-"
             #hash(("greek-root" . "τετρα")
                   ("meaning" . ("Cuatro"))
                   ("spanish-patrons" . ("tetra" "tetrá"))))
  (dict-set! dictionary_name "-tipo"
             #hash(("greek-root" . "τύπος")
                   ("meaning" . ("Molde"))
                   ("spanish-patrons" . ("tipo"))))
  (dict-set! dictionary_name "tocos"
             #hash(("greek-root" . "τόκος")
                   ("meaning" . ("Parto" "Nacimiento" "Descendencia"))
                   ("spanish-patrons" . ("toco" "tocó"))))
  (dict-set! dictionary_name "tomo"
             #hash(("greek-root" . "τόμος")
                   ("meaning" . ("Corte" "Parte" "Porción"))
                   ("spanish-patrons" . ("tomo" "tomía"))))
  (dict-set! dictionary_name "tono"
             #hash(("greek-root" . "τόνος")
                   ("meaning" . ("Tono"))
                   ("spanish-patrons" . ("tono"))))
  (dict-set! dictionary_name "topo"
             #hash(("greek-root" . "τόπος")
                   ("meaning" . ("Lugar"))
                   ("spanish-patrons" . ("topo" "topó"))))
  (dict-set! dictionary_name "toxicón"
             #hash(("greek-root" . "τοξικον")
                   ("meaning" . ("Veneno"))
                   ("spanish-patrons" . ("toxi" "tóxi"))))
  (dict-set! dictionary_name "tumbo"
             #hash(("greek-root" . "τυμβος")
                   ("meaning" . ("Tumba"))
                   ("spanish-patrons" . ("tumba" "cumba"))))
  (dict-set! dictionary_name "trofo"
             #hash(("greek-root" . "τροφος")
                   ("meaning" . ("Alimentar"))
                   ("spanish-patrons" . ("trofo" "trofia" "trópico"))))
  (dict-set! dictionary_name "trópo"
             #hash(("greek-root" . "τρόπος")
                   ("meaning" . ("Lugar" "Territorio"))
                   ("spanish-patrons" . ("topo" "topó"))))
  (dict-set! dictionary_name "xéno"
             #hash(("greek-root" . "χενος")
                   ("meaning" . ("Extranjero" "Ajeno"))
                   ("spanish-patrons" . ("xeno"))))
  (dict-set! dictionary_name "xilo-"
             #hash(("greek-root" . "χύλον")
                   ("meaning" . ("Madera"))
                   ("spanish-patrons" . ("xilo" "xiló"))))
  (dict-set! dictionary_name "zóo"
             #hash(("greek-root" . "ζῷον")
                   ("meaning" . ("Ser viviente"))
                   ("spanish-patrons" . ("zoo" "zoide"))))
)

#| Return the meaning for each root |#
(define (get_roots_meaning word)
  ;; Fill again the roots dictionary to avoid problems with missing information
  (fill_root_dictionary roots)
  ;; Remove all the roots that don't fit in the word
  (for/list ([root (get_keys_to_remove roots word)])
    ;; Remove the root that doesn't fit in the word of the dictionary
    (remove_element_from_dictionary roots root))
  ;; Remove the keys that are contained by other
  (remove_keys_contained_in_other_key roots)
  ;; Show the roots that fits
  (print_dictionary_in_friendly_format roots))


#| ######## |#
#| Prefixes |#
#| ######## |#

#| Define the rules for the prefixes |#
;; Create the dictionary
(define prefixes (make-hash))

(define (fill_prefix_dictionary dictionary_name)
  (dict-set! dictionary_name "a-"
             #hash(("greek-root" . "α-")
                   ("meaning" . ("Negación"))
                   ("spanish-patrons" . ("a"))))
  (dict-set! dictionary_name "an-"
             #hash(("greek-root" . "αν-")
                   ("meaning" . ("Negación"))
                   ("spanish-patrons" . ("an"))))
  (dict-set! dictionary_name "ana-"
             #hash(("greek-root" . "ἀνα-")
                   ("meaning" . ("Arriba (movimiento de abajo a arriba)" "Enteramente" "De nuevo" "Contra"))
                   ("spanish-patrons" . ("ana" "aná"))))
  (dict-set! dictionary_name "anfi-"
             #hash(("greek-root" . "ἀμφι-")
                   ("meaning" . ("A ambos lados" "Doble"))
                   ("spanish-patrons" . ("anfi"))))
  (dict-set! dictionary_name "anti-"
             #hash(("greek-root" . "ἀντι-")
                   ("meaning" . ("Opuesto" "Contrario"))
                   ("spanish-patrons" . ("anti" "anta" "antá"))))
  (dict-set! dictionary_name "apo-"
             #hash(("greek-root" . "ἀπό-")
                   ("meaning" . ("Aparte" "Fuera" "Lejos" "Con"))
                   ("spanish-patrons" . ("apó" "apo"))))
  (dict-set! dictionary_name "cata-"
             #hash(("greek-root" . "κατὰ")
                   ("meaning" . ("Sobre" "Hacia abajo" "Enteramente"))
                   ("spanish-patrons" . ("cata" "catá" "cató"))))
  (dict-set! dictionary_name "di-"
             #hash(("greek-root" . "δί-")
                   ("meaning" . ("Dos"))
                   ("spanish-patrons" . ("di" "dí"))))
  (dict-set! dictionary_name "dia-"
             #hash(("greek-root" . "δια-")
                   ("meaning" . ("A través de"))
                   ("spanish-patrons" . ("dia" "diá" "dio"))))
  (dict-set! dictionary_name "dis-"
             #hash(("greek-root" . "δυς-")
                   ("meaning" . ("Mal" "Negación"))
                   ("spanish-patrons" . ("dis"))))
  (dict-set! dictionary_name "ek-"
             #hash(("greek-root" . "εκ-")
                   ("meaning" . ("De" "Desde" "Fuera de"))
                   ("spanish-patrons" . ("eclip" "ecze" "eclé" "exo" "exó"))))
  (dict-set! dictionary_name "endo-"
             #hash(("greek-root" . "ἐνδο-")
                   ("meaning" . ("Dentro" "En el interior"))
                   ("spanish-patrons" . ("endo" "endó"))))
  (dict-set! dictionary_name "epi-"
             #hash(("greek-root" . "ἐπι-")
                   ("meaning" . ("Encima" "Sobre"))
                   ("spanish-patrons" . ("epi" "epí"))))
  (dict-set! dictionary_name "eu-"
             #hash(("greek-root" . "εὐ-")
                   ("meaning" . ("Bien"))
                   ("spanish-patrons" . ("eu" "evan"))))
  (dict-set! dictionary_name "hiper-"
             #hash(("greek-root" . "ὑπερ-")
                   ("meaning" . ("Sobre" "Por encima de"))
                   ("spanish-patrons" . ("hiper" "hipér"))))
  (dict-set! dictionary_name "hipo-"
             #hash(("greek-root" . "ὑπό-")
                   ("meaning" . ("Debajo de" "Al pie de"))
                   ("spanish-patrons" . ("hipo" "hipó"))))
  (dict-set! dictionary_name "meta-"
             #hash(("greek-root" . "μετα-")
                   ("meaning" . ("Después de" "Junto a"))
                   ("spanish-patrons" . ("meta" "metá"))))
  (dict-set! dictionary_name "palin-"
             #hash(("greek-root" . "πάλιν-")
                   ("meaning" . ("De nuevo"))
                   ("spanish-patrons" . ("palin" "palín"))))
  (dict-set! dictionary_name "para-"
             #hash(("greek-root" . "παρα-")
                   ("meaning" . ("Junto a" "De parte de" "Contra"))
                   ("spanish-patrons" . ("para" "pará"))))
  (dict-set! dictionary_name "peri-"
             #hash(("greek-root" . "περι-")
                   ("meaning" . ("Alrederor" "Acerca de"))
                   ("spanish-patrons" . ("peri" "perí"))))
  (dict-set! dictionary_name "pro-"
             #hash(("greek-root" . "προ-")
                   ("meaning" . ("Delante" "Antes"))
                   ("spanish-patrons" . ("pro" "pró"))))
  (dict-set! dictionary_name "pros-"
             #hash(("greek-root" . "πρὸς-")
                   ("meaning" . ("Al lado" "Cerca de" "Hacia"))
                   ("spanish-patrons" . ("pros" "pará"))))
  (dict-set! dictionary_name "sin-"
             #hash(("greek-root" . "συν-")
                   ("meaning" . ("Con" "Juntamente" "A la vez"))
                   ("spanish-patrons" . ("sin"))))
  )

#| Return the meaning for each prefix |#
(define (get_prefixes_meaning word)
  ;; Fill again the prefixes dictionary to avoid problems with missing information
  (fill_prefix_dictionary prefixes)
  ;; Remove all the prefixes that don't fit in the word
  (for/list ([prefix (get_keys_to_remove prefixes word)])
    ;; Remove the prefix that doesn't fit in the word of the dictionary
    (remove_element_from_dictionary prefixes prefix))
  ;; Remove the keys that are contained by other
  (remove_keys_contained_in_other_key prefixes)
  ;; Guarantee that is not repeated some key from root
  (remove_keys_contained_in_other_key_different_dictionary roots prefixes)
  ;; Show the prefixes that fits
  (print_dictionary_in_friendly_format prefixes))


#| ######## |#
#| Suffixes |#
#| ######## |#

#| Define the rules for the suffixes |#
;; Create the dictionary
(define suffixes (make-hash))

(define (fill_suffix_dictionary dictionary_name)
  (dict-set! dictionary_name "-ada"
             #hash(("greek-root" . "-ας, -αδος")
                   ("meaning" . ("Semejanza" "Relación"))
                   ("spanish-patrons" . ("ada"))))
  (dict-set! dictionary_name "-ía"
             #hash(("greek-root" . "-ια, –εια")
                   ("meaning" . ("Acción" "Cualidad"))
                   ("spanish-patrons" . ("ía"))))
  (dict-set! dictionary_name "-ica"
             #hash(("greek-root" . "-ικος")
                   ("meaning" . ("Técnicas" "Ciencias"))
                   ("spanish-patrons" . ("ica"))))
  (dict-set! dictionary_name "-tica"
             #hash(("greek-root" . "-τικος")
                   ("meaning" . ("Técnicas" "Ciencias"))
                   ("spanish-patrons" . ("tica"))))
  (dict-set! dictionary_name "-ico"
             #hash(("greek-root" . "-ικος")
                   ("meaning" . ("Relativo a"))
                   ("spanish-patrons" . ("ico"))))
  (dict-set! dictionary_name "-ismo"
             #hash(("greek-root" . "-ισμος")
                   ("meaning" . ("Actividad" "Doctrina" "Sistema"))
                   ("spanish-patrons" . ("ismo"))))
  (dict-set! dictionary_name "-ista"
             #hash(("greek-root" . "-ιστης")
                   ("meaning" . ("Partidario de" "Oficio" "Profesión"))
                   ("spanish-patrons" . ("ista"))))
  (dict-set! dictionary_name "-ita"
             #hash(("greek-root" . "-ίτης")
                   ("meaning" . ("Materia dotada de la cualidad de la raíz"))
                   ("spanish-patrons" . ("ita"))))
  (dict-set! dictionary_name "-itis"
             #hash(("greek-root" . "-ιτις")
                   ("meaning" . ("Inflamación" "Irritación"))
                   ("spanish-patrons" . ("itis"))))
  (dict-set! dictionary_name "-izar"
             #hash(("greek-root" . "-ιζω")
                   ("meaning" . ("Poner en práctica" "Convertir en"))
                   ("spanish-patrons" . ("izar"))))
  (dict-set! dictionary_name "-meno"
             #hash(("greek-root" . "-μένος")
                   ("meaning" . ("Participio medio-pasivo"))
                   ("spanish-patrons" . ("meno"))))
  (dict-set! dictionary_name "-ma"
             #hash(("greek-root" . "-μα")
                   ("meaning" . ("Resultado de la acción"))
                   ("spanish-patrons" . ("ma"))))
  (dict-set! dictionary_name "-oma"
             #hash(("greek-root" . "-ωμα")
                   ("meaning" . ("Resultado de la acción"))
                   ("spanish-patrons" . ("oma"))))
  (dict-set! dictionary_name "-osis"
             #hash(("greek-root" . "-ωσις")
                   ("meaning" . ("Formación" "Impulso" "Conversión"))
                   ("spanish-patrons" . ("osis"))))
  (dict-set! dictionary_name "-sis"
             #hash(("greek-root" . "-σις")
                   ("meaning" . ("Acción"))
                   ("spanish-patrons" . ("sis"))))
  (dict-set! dictionary_name "-ta"
             #hash(("greek-root" . "-της")
                   ("meaning" . ("Agente"))
                   ("spanish-patrons" . ("ta" "tes"))))
  (dict-set! dictionary_name "-ter"
             #hash(("greek-root" . "-τηρ")
                   ("meaning" . ("Agente"))
                   ("spanish-patrons" . ("ter"))))
  (dict-set! dictionary_name "-terio"
             #hash(("greek-root" . "-τήριον")
                   ("meaning" . ("Lugar"))
                   ("spanish-patrons" . ("terio"))))
  (dict-set! dictionary_name "-to"
             #hash(("greek-root" . "-τος")
                   ("meaning" . ("Pasivo" "Posible"))
                   ("spanish-patrons" . ("to"))))
  )

#| Return the meaning for each prefix |#
(define (get_suffixes_meaning word)
  ;; Fill again the prefixes dictionary to avoid problems with missing information
  (fill_suffix_dictionary suffixes)
  ;; Remove all the prefixes that don't fit in the word
  (for/list ([suffix (get_keys_to_remove suffixes word)])
    ;; Remove the prefix that doesn't fit in the word of the dictionary
    (remove_element_from_dictionary suffixes suffix))
  ;; Remove the keys that are contained by other
  (remove_keys_contained_in_other_key suffixes)
  ;; Guarantee that is not repeated some key from root
  (remove_keys_contained_in_other_key_different_dictionary roots suffixes)
  ;; Show the prefixes that fits
  (print_dictionary_in_friendly_format suffixes))


#| ############## |#
#| Common methods |#
#| ############## |#

#| Know if the key contains the word as spanish-patron |#
(define (contains-true list)
  (cond
    [(equal? (memq #t list) #f) #f]
    [else #t]))
  
#| Get the roots that do not fit for the word gave to search |#
(define (get_keys_to_remove dictionary word)
  (filter (lambda (key) (not(contains-true (spanish-patrons dictionary key word)))) (dict-keys dictionary)))

#| Get correct patron depending on the key |#
(define (spanish-patrons dictionary key word)
  (cond
    [(string-suffix? key "-") (spanish-patrons-prefix dictionary key word)]
    [(string-prefix? key "-") (spanish-patrons-suffix dictionary key word)]
    [else (spanish-patrons-contains dictionary key word)]))

#| Print the dictionary in nice format |#
(define (print dictionary)
  (for/list ([key (in-dict-keys dictionary)])
    (print-key-info dictionary key))
  (printf ""))

#| Prints the information of the key (its greek-root, meaning and spanish patron) |#
(define (print-key-info dictionary key)
  ;; Printf the key
  (printf "~a\n" key)
  (for/list ([k (in-dict-keys (dict-ref dictionary key))])
    (cond
      [(string=? k "greek-root")
       (printf "Greek root = ")
       (printf (dict-ref (dict-ref dictionary key) k))
       (printf "\n")]
        
      [(string=? k "meaning")
       (printf "Meaning(s) = ")
       (for/list ([value (dict-ref (dict-ref dictionary key) k)])
         (printf "~a. " value))
       (printf "\n")]

      [(string=? k "spanish-patrons")
       (printf "Spanish patron(s) = ")
       (for/list ([value (dict-ref (dict-ref dictionary key) k)])
         (printf "~a. " value))
       (printf "\n")]))
  (printf "\n"))

#| Return if the word contains as prefix one of the spanish patrons for this etymology |#
(define (spanish-patrons-prefix dictionary key word)
  (for/list ([patron (dict-ref (dict-ref dictionary key) "spanish-patrons")])
    (cond
      [(string-prefix? word patron) #t]
      [else #f])))

#| Return if the word contains as suffix one of the spanish patrons for this etymology |#
(define (spanish-patrons-suffix dictionary key word)
  (for/list ([patron (dict-ref (dict-ref dictionary key) "spanish-patrons")])
    (cond
      [(string-suffix? word patron) #t]
      [else #f])))

#| Return if the word contains one of the spanish patrons for this etymology |#
(define (spanish-patrons-contains dictionary key word)
  (for/list ([patron (dict-ref (dict-ref dictionary key) "spanish-patrons")])
    (cond
      [(string-contains? word patron) #t]
      [else #f])))

#| Remove an element of the dictionary |#
(define (remove_element_from_dictionary dictionary element)
  (dict-remove! dictionary element))

#| Remove keys that are contained in other key in the same dictionary |#
(define (remove_keys_contained_in_other_key dictionary)
  (for/list ([key1 (dict-keys dictionary)])
    (for/list ([key2 (dict-keys dictionary)])
      (cond
        [(and (string-contains? (string-replace key1 "-" "") (string-replace key2 "-" "")) (not(equal? key1 key2))) (remove_element_from_dictionary dictionary key2)]
      )))
  ;; Return the new dictionary
  dictionary)

#| Remove keys that are contained in other key in other dictionary |#
(define (remove_keys_contained_in_other_key_different_dictionary dictionary1 dictionary2)
  (for/list ([key1 (dict-keys dictionary1)])
    (for/list ([key2 (dict-keys dictionary2)])
      (cond
        [(and (string-contains? (string-replace key1 "-" "") (string-replace key2 "-" "")) (not(equal? key1 key2))) (remove_element_from_dictionary dictionary2 key2)]
      )))
  ;; Return the new dictionary
  dictionary2)

#| Print the dictionary in other format |#
(define (print_dictionary_in_friendly_format dictionary)
  (cond
    ;; Print the name of the dictionary
    [(and (equal? dictionary roots) (not(dict-empty? roots))) (printf "Roots\n")]
    [(and (equal? dictionary prefixes) (not(dict-empty? prefixes))) (printf "Prefixes\n")]
    [(and (equal? dictionary suffixes) (not(dict-empty? suffixes))) (printf "Suffixes\n")]
    )
  (print dictionary))