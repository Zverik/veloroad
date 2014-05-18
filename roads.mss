#highways, #bridges, #tunnels {
  [highway="primary"][zoom<7],
  [highway="secondary"][zoom<9][zoom>=7],
  [highway="tertiary"][zoom>=9][zoom<12],
  [highway="unclassified"][zoom>=11],
  [highway="living_street"][zoom>=12],
  [highway="pedestrian"][zoom>=12],
  [highway="residential"][zoom>=12] {
    line-width:1.0;
    [zoom>=14] { line-width: 1.5; }
    line-color:@gray;
  }
  
  [highway="tertiary"][zoom>=12],
  [highway="secondary"][zoom<15][zoom>=9],
  [highway="primary"][zoom>=7][zoom<9],
  [highway="trunk"][zoom<7],
  [highway="motorway"][zoom<7],
  [highway="secondary_link"][zoom>=12],
  [highway="tertiary_link"][zoom>=12],
  [highway="motorway_link"][zoom>=12],
  [highway="trunk_link"][zoom>=12],
  [highway="primary_link"][zoom>=12] {
    line-width:1.5;
    [zoom<10] { line-width: 1.1; }
    line-color:black;
  }
  
  [highway="secondary"][zoom>=15],
  [highway="trunk"][zoom>=7][zoom<12],
  [highway="motorway"][zoom>=7][zoom<12],
  [highway="primary"][zoom>=9][zoom<15] {
    ::casing {
      line-width: 3;
      [zoom<9], [highway="primary"][zoom<12] { line-width: 2.5; }
      line-color: black;
      line-cap: butt;
      line-join: round;
    }
    ::inner {
      line-width: 1.5;
      [zoom<9], [highway="primary"][zoom<12] { line-width: 1.3; }
      line-color: white;
      line-cap: round;
      line-join: round;
    }
  }
  
  [highway="trunk"][zoom>=12],
  [highway="motorway"][zoom>=12],
  [highway="primary"][zoom>=15] {
    ::casing {
      line-width: 5;
      line-color: black;
      line-cap: butt;
      line-join: round;
    }
    ::inner {
      line-width: 3.5;
      line-color: white;
      line-cap: round;
      line-join: round;
    }
  }
  
  [highway="track"][zoom>=12] {
    line-width: 0.8;
    line-color: @gray;
    line-dasharray: 6,4;
  }
  
  [highway="service"][service=0][zoom>=14],
  [highway="service"][zoom>=15] {
    line-width: 0.5;
    line-color: @gray;
  }
  
  [highway="path"][zoom>=15],
  [highway="footway"][zoom>=15],
  [highway="cycleway"][zoom>=14] {
    line-width: 0.5;
    line-color: @gray;
    line-dasharray: 3;
  }
}

#hlabels[zoom>=8] {
  [highway="primary"],
  [highway="trunk"],
  [highway="motorway"] {
    text-name: [ref];
    text-face-name: @sans_caption;
    text-size: 10;
    text-fill: black;
    text-allow-overlap: false;
    text-min-distance: 400;
    text-spacing: 400;
    text-placement: line;
    text-dy: 8;
    [highway="trunk"][zoom>=12],
    [highway="motorway"][zoom>=12] {
      text-dy: 10;
    }
  }
}

#hslabels[zoom>=12] {
  text-name: [name];
  text-face-name: @sans;
  text-size: 9;
  text-fill: black;
  text-halo-radius: 1;
  text-halo-fill: fadeout(white, 30%);
  text-allow-overlap: false;
  text-dy: 6;
  text-placement: line;
  text-min-distance: 10;
  [zoom>=14] {
    text-size: 11;
    text-dy: 8;
  }
}
