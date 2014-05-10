#forest[zoom>=11] {
  polygon-opacity:0.1;
  polygon-fill:@green;
}

/*  WATER  */

#ocean,
#lakes[zoom<9][way_area>10000000],
#lakes[zoom>=9][zoom<11][way_area>1000000],
#lakes[zoom>=11] {
  polygon-opacity:1;
  polygon-fill:@water;
}

#rivers[waterway="river"][zoom>=8][zoom<14],
#rivers[waterway="canal"][zoom>=8][zoom<14],
#rivers[waterway="drain"][zoom>=14],
#rivers[waterway="ditch"][zoom>=14],
#rivers[waterway="stream"][zoom>=14] {
  line-color: @water;
  line-width:1;
}

#rivers[waterway="river"][zoom>=14],
#rivers[waterway="canal"][zoom>=14] {
  line-color: @water;
  line-width:2;
}

#wlabels[zoom>=8] {
  text-face-name: @sans_italic;
  text-name: [name];
  text-size: 10;
  text-character-spacing: 1.1;
  text-fill: darken(@water, 40%);
  text-placement: line;
  text-dy: 8;
  text-allow-overlap: false;
  text-min-distance: 300;
  text-spacing: 600;
}

#wolabels[zoom=10][way_area>10000000],
#wolabels[zoom=11][way_area>1000000],
#wolabels[zoom>=12] {
  text-face-name: @sans_italic;
  text-name: [name];
  text-size: 10;
  text-fill: darken(@water, 40%);
  text-placement: interior;
  text-allow-overlap: false;
}


#plabels[zoom>=12][zoom<14][way_area>1000000],
#plabels[zoom>=14][way_area>100000] {
  text-face-name: @sans_italic;
  text-name: [name];
  text-size: 10;
  text-fill: darken(@green, 30%);
  text-placement: interior;
  text-allow-overlap: false;
  text-wrap-width: 10;
}
