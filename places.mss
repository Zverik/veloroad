#places {
  [place="city"][zoom<12],
  [place="town"][zoom>=9][zoom<15],
  [place="village"][zoom>=11],
  [place="suburb"][zoom>=11][zoom<14],
  [place="hamlet"][zoom>=13] {
    text-face-name: @sans_italic;
    text-name: [name];
    text-halo-radius: 2;
    text-halo-fill: fadeout(white, 30%);
    text-placement-type: simple;
    text-placements: "X,N,S,NE,SE,NW,SW";
    text-min-distance: 20;
    text-allow-overlap: false;
    /*text-character-spacing: 1.00;*/
    
    [place!="city"][place!="suburb"][zoom<13],
    [place="city"][zoom<7] {
      text-placement-type: simple;
      text-placements: "NE,NW,SW,SE,E,N,W,S";
      text-dx: 4;
      text-dy: 4;
    }
    
    [place="city"], [place="town"] {
      text-face-name: @sans;
    }
    
    text-size: 9;
    [place="city"] {
      [zoom<8] { text-size: 14; }
      [zoom>=8] { text-size: 16; }
    }    
    [place="town"] {
      [zoom>=8][zoom<12] { text-size: 12; }
      [zoom>=12] { text-size: 14; }
    }
    [place="suburb"] {
      [zoom<12] { text-size: 11; }
      [zoom>=12] { text-size: 12; }
    }
    [place="village"] {
      [zoom>=8][zoom<12] { text-size: 11; }
      [zoom>=12] { text-size: 12; }
    }
  }

  [place="town"][zoom<9],
  [place="village"][zoom>=8][zoom<11],
  [place="hamlet"][zoom>=10][zoom<13],
  [place="isolated_dwelling"][zoom>=13],
  [place="allotments"][zoom>=13] {
    shield-file: url(icons/place.svg);
    shield-face-name: @sans_italic;
    shield-name: [name];
    shield-halo-radius: 2;
    shield-halo-fill: fadeout(white, 30%);
    shield-placement-type: simple;
    shield-placements: "NE,NW,SW,SE,E,N,W,S";
    shield-text-dx: 4;
    shield-text-dy: 4;
    shield-min-distance: 20;
    shield-allow-overlap: false;
    shield-unlock-image: true;
    /*text-character-spacing: 1.00;*/
    
    [place="town"], [place="city"] {
      shield-face-name: @sans;
    }
    
    shield-size: 9;
    [place="town"] {
      [zoom<8] { shield-size: 10; }
      [zoom>=8][zoom<12] { shield-size: 12; }
    }
    [place="village"] {
      [zoom>=10][zoom<12] { shield-size: 11; }
    }
    [place="hamlet"] { shield-min-distance: 30; }
  }
}

#islands {
  [zoom>=6][zoom<8][way_area>=3e7][way_area<3e9],
  [zoom>=8][zoom<10][way_area>=3e6][way_area<1e8],
  [zoom>=10][zoom<12][way_area>=3e5][way_area<3e6] {
    text-face-name: @sans_italic;
    text-name: [name];
    text-fill: black;
    text-halo-radius: 1;
    text-halo-fill: fadeout(white, 30%);
    text-min-distance: 30;
    text-allow-overlap: false;
    text-placement-type: simple;
    text-placements: "NE,NW,SW,SE,E,N,W,S";
    text-dx: 6;
    text-dy: 4;
    text-size: 9;
  }
}

#placep[zoom>=9][zoom<12],
#residential[zoom>=12] {
  polygon-fill: @lightgray;
  polygon-opacity: 1;
}
