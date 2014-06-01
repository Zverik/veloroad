
#subway[zoom>=12][zoom<14] {
  marker-file: url(icons/subway.svg);
}

#subway[zoom>=14] {
  shield-file: url(icons/subway.svg);
  shield-name: [name];
  shield-face-name: @sans_bold;
  shield-fill: black;
  shield-size: 10;
  shield-text-dx: 8;
  shield-text-dy: 8;
  shield-placement-type: simple;
  shield-placements: "E,W,N,S,NE,NW,SW,SE";
  shield-allow-overlap: false;
  shield-halo-radius: 1.5;
  shield-halo-fill: fadeout(white, 30%);
  shield-unlock-image: true;
}

#stations[zoom>=12] {
  [railway="station"][zoom>=11] {
    marker-file: url(icons/station.svg);
    marker-transform: rotate([angle], 0, 0);
    marker-ignore-placement: true;
  }
  [railway="halt"][zoom>=11] {
    marker-file: url(icons/halt.svg);
    marker-transform: rotate([angle], 0, 0);
    marker-ignore-placement: true;
  }
  [railway="station"][zoom>=13],
  [railway="halt"][zoom>=13] {
    [len<=12], [zoom>=14] {
    text-name: [name];
    text-face-name: @sans;
    text-fill: @gray;
    text-size: 10;
    text-dx: 7;
    text-dy: 7;
    text-placement-type: simple;
    text-placements: "E,W,N,S,NE,NW,SW,SE";
    [angle<45],[angle>=135][angle<225],[angle>=315][angle<405] {
        text-placements: "N,S,E,W,NE,NW,SW,SE";
    }
    text-allow-overlap: false;
    text-halo-radius: 1.5;
    text-halo-fill: fadeout(white, 30%);
    }
  }
}

.railway[railway="rail"] {
  casing/line-width: 2.5;
  casing/line-color: @gray;
  
  dash/line-width: 1.5;
  dash/line-color: white;
  dash/line-dasharray: 8;
}

.railway[railway="narrow_gauge"][zoom>=10] {
  casing/line-width: 1.2;
  casing/line-color: @gray;

  dash/line-width: 5;
  dash/line-color: @gray;
  dash/line-dasharray: 1, 10;
}
