#places {
  [place="city"][zoom<12],
  [place="town"][zoom>=9][zoom<15],
  [place="village"][zoom>=11],
  [place="suburb"][zoom>=11][zoom<14],
  [place="hamlet"][zoom>=13] {
  	text-face-name: @sans;
    text-name: [name];
  	text-halo-radius: 2;
  	text-halo-fill: fadeout(white, 30%);
    text-placement-type: simple;
    text-placements: "X,N,S,NE,SE,NW,SW";
    text-min-distance: 15;
    text-allow-overlap: false;
    /*text-character-spacing: 1.00;*/
    
    [place!="city"][place!="suburb"][zoom<13],
    [place="city"][zoom<7] {
      text-placement-type: simple;
      text-placements: "NE,NW,SW,SE,E,N,W,S";
      text-dx: 4;
      text-dy: 4;
    }
    
    [place="village"], [place="hamlet"], [place="suburb"] {
      text-face-name: @sans_italic;
    }
    
  	text-size: 14;
    [place="city"] {
      [zoom<8] { text-size: 16; }
      [zoom>=8] { text-size: 20; }
    }    
    [place="town"] {
      [zoom<8] { text-size: 12; }
      [zoom>=8][zoom<12] { text-size: 14; }
      [zoom>=12] { text-size: 18; }
    }
    [place="suburb"] {
      [zoom<12] { text-size: 12; }
      [zoom>=12] { text-size: 13; }
    }
    [place="village"] {
      [zoom<8] { text-size: 10; }
      [zoom>=8][zoom<12] { text-size: 12; }
      [zoom>=12] { text-size: 16; }
    }
    [place="hamlet"] {
      text-size: 10;
    }
  }

  [place="town"][zoom<9],
  [place="village"][zoom>=8][zoom<11],
  [place="hamlet"][zoom>=10][zoom<13] {
    shield-file: url(icons/place.svg);
  	shield-face-name: @sans;
    shield-name: [name];
  	shield-halo-radius: 2;
  	shield-halo-fill: fadeout(white, 30%);
    shield-placement-type: simple;
    shield-placements: "NE,NW,SW,SE,E,N,W,S";
    shield-text-dx: 4;
    shield-text-dy: 4;
    shield-min-distance: 15;
    shield-allow-overlap: false;
    shield-unlock-image: true;
    /*text-character-spacing: 1.00;*/
    
    [place="village"], [place="hamlet"] {
      shield-face-name: @sans_italic;
    }
    
  	shield-size: 14;
    [place="town"] {
      [zoom<8] { shield-size: 12; }
      [zoom>=8][zoom<12] { shield-size: 14; }
    }
    [place="village"] {
      [zoom<8] { shield-size: 10; }
      [zoom>=8][zoom<12] { shield-size: 12; }
    }
    [place="hamlet"] {
      shield-size: 10;
    }
  }
}

#placep[zoom<12],
#residential[zoom>=12] {
  polygon-fill: @lightgray;
  polygon-opacity: 1;
}
