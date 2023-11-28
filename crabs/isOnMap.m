function inBounds = isOnMap (x, y, width, height, size);
  if (x > size && x < width-size && y > size && y < height-size);
    inBounds = true;
  else
    inBounds = false;
  endif
endfunction
