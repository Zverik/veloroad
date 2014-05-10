@contour: fadeout(#9f805d, 70%);

#contours[zoom>=10][zoom<=13] {
  ::tick {
    line-width: 4;
    line-offset: 2;
    line-color: @contour;
    line-dasharray: 0.7, 150;
  }
  
  ::contour {
    line-width: 0.5;
    line-color: @contour;
    [zoom<13][ELEV =~ ".+00"] {
      line-color: fadein(@contour, 30%);
    }

    /* magic for better labelling rasterizes the map, removed */
    /* see http://wygoda.net/blog/better-contours-tilemill */
  }

  ::label {
    [zoom >= 13],
  	[ELEV =~ ".+00"] {
      text-face-name: @sans_caption;
      text-name: "[ELEV]";
      text-size: 9;
      text-fill: fadein(@contour, 30%);
      text-placement: line;
      
      text-clip: false;
      text-spacing: 800;
      text-allow-overlap: true;
      text-min-path-length: 500;
    }
  }
}
