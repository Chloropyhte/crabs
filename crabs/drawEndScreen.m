function playAgain = drawEndScreen (imgName, points)

drawMap("plane.jpg");
while(1)
commandwindow();
  cmd = kbhit(1);
  if (cmd == 'y' || cmd == 'Y')
    playAgain = 1;
    break;
  endif

  if (cmd == 'n' || cmd == 'N' || cmd == 'Q')
    playAgain = 0;
    break;
  endif
  pause(0.1);
endwhile

endfunction
