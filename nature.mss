#forest[zoom>=11] {
  polygon-opacity:0.1;
  polygon-fill:@green;
}

/*  WATER  */

#ocean,
#lakes[zoom<7][way_area>1e8],
#lakes[zoom>=7][zoom<9][way_area>1e7],
#lakes[zoom>=9][zoom<11][way_area>1e6],
#lakes[zoom>=11] {
  polygon-opacity:1;
  polygon-fill:@water;
}

#rivers[waterway="river"],
#rivers[waterway="canal"] {
  [zoom<8][length>10000] {
    line-color: @water;
    line-width: 0.3;
  }
}

#rivers[waterway="river"][zoom>=8],
#rivers[waterway="canal"][zoom>=8] {
  line-color: @water;
  [zoom>=8][zoom<14] { line-width:1; }
  [zoom>=14] { line-width:2; }
}

#rivers[waterway="drain"][zoom>=14],
#rivers[waterway="ditch"][zoom>=14],
#rivers[waterway="stream"][zoom>=14] {
  line-color: @water;
  line-width:1;
}

#wlabels[zoom>=6] {
  text-face-name: @sans_italic;
  text-name: [name];
  text-size: 10;
  text-character-spacing: 1.1;
  text-fill: darken(@water, 40%);
  text-placement: line;
  [zoom<12] {
    text-size: 9;
    text-dy: 7;
  }
  text-allow-overlap: false;
  text-min-distance: 100;
  text-spacing: 200;
}

#wolabels[zoom=10][way_area>1e7],
#wolabels[zoom=11][way_area>1e6],
#wolabels[zoom>=12] {
  text-face-name: @sans_italic;
  text-name: [name];
  text-size: 9;
  [zoom>=12] { text-size: 11; }
  text-fill: darken(@water, 40%);
  text-placement: interior;
  text-allow-overlap: false;
}


#plabels[zoom>=12][zoom<14][way_area>1e6],
#plabels[zoom>=14][way_area>1e5] {
  text-face-name: @sans_italic;
  text-name: [name];
  text-size: 9;
  text-fill: darken(@green, 30%);
  text-placement: interior;
  text-allow-overlap: false;
  text-wrap-width: 10;
}
