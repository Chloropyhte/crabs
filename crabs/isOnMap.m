function inBounds = isOnMap (x, y, width, height, buffer)
  if (x > buffer && x < width-buffer && y > buffer && y < height-buffer)
    inBounds = true;
  else
    inBounds = false;
  endif
endfunction
