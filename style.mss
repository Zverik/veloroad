@water: #9fd9e5;
@green: #0f0;
@gray: #909090;
@lightgray: #e0e0e0;
@purple: #ac46ac;
@lpurple: lighten(@purple, 40%);

@sans: "PT Sans Regular", "Droid Sans Fallback Regular";
@sans_italic: "PT Sans Italic", "Droid Sans Fallback Regular";
@sans_bold: "PT Sans Bold", "Droid Sans Fallback Regular";
@sans_caption: "PT Sans Caption Regular", "Droid Sans Fallback Regular";

Map {
  background-color: white;
  buffer-size: 128;
  font-directory: url(./data/ptsans);
}

.route {
  line-width:5;
  line-color:#012d64;
  line-join: round;
  line-cap: round;
  [zoom<10] {
    line-width: 4;
  }
}

#buildings[zoom>=15] {
  polygon-fill: @gray;
  polygon-opacity: 1;
}

/*  ADMIN BORDERS  */

#admin[admin_level="2"] {
  line-color: @lpurple;
  line-width: 6;
  [zoom<8] { line-width: 5; }
}

#admin[admin_level="4"] {
  line-color: @lpurple;
  line-width: 3;
}

#admin[admin_level="6"][zoom>=9] {
  line-width: 2;
  line-color: @lpurple;
  line-dasharray: 6;
}

#admin-line[admin_level="4"] {
  line-width: 1;
  line-dasharray: 6;
  line-color: @purple;
}

#admin-line[admin_level="2"] {
  line-width: 2;
  [zoom<9] { line-width: 1.5; }
  line-dasharray: 6;
  line-color: @purple;
}

/* SCALE */

#scale[label=''] {
  ::casing {
    line-width: 5;
    line-color: black;
  }
  ::fill[id2=1] {
    line-width: 3;
    line-color: white;
  }
}

#scale[label!=''] {
  text-name: [label];
  text-face-name: @sans;
  text-size: 12;
  text-dy: -8;
  [label=~'.+Open.+'] {
    text-dy: 8;
    text-size: 8;
  }
  text-allow-overlap: true;
}
