##function crabGraphics = drawCrabs (xCrab , yCrab , thetaCrab , sizeCrab)
##
##crab = getCrabs(sizeCrab);
##
##% TODO : Rotate captain from zero heading to heading thetaCapt
##R = getRotation(thetaCrab)
##crabRotated = R*crab
##T = getTranslation(xCrab, yCrab)
##crab = T*crabRotated
##
##% TODO : Shift the captain from (0 , 0) to (xCapt , yCapt)
##% Extract the captain points from the captain matrix capt.
##pt1=crab( : , 1);
##pt2=crab( : , 2);
##pt3=crab( : , 3);
##pt4=crab( : , 4);
##pt5=crab( : , 5);
##pt6=crab( : , 6);
##pt7=crab( : , 7);
##pt8=crab( : , 8);
##pt9=crab( : , 9);
##pt10=crab( : , 10);
##pt11=crab( : , 11);
##pt12=crab( : , 12);
##
##% Draw the captain and set the return vector of graphics handles.
##crabGraphics(1) = drawLine(pt1 , pt2 , "r");
##crabGraphics(2) = drawLine(pt3 , pt4 , "r");
##crabGraphics(3) = drawLine(pt1 , pt4 , "r");
##crabGraphics(4) = drawLine(pt2 , pt3 , "r");
##crabGraphics(5) = drawLine(pt4 , pt6 , "r");
##crabGraphics(6) = drawLine(pt1 , pt5 , "r");
##crabGraphics(7) = drawLine(pt4 , pt8 , "r");
##crabGraphics(8) = drawLine(pt1 , pt7 , "r");
##crabGraphics(9) = drawLine(pt3 , pt9 , "r");
##crabGraphics(10) = drawLine(pt2 , pt10 , "r");
##crabGraphics(11) = drawLine(pt9 , pt11 , "r");
##crabGraphics(12) = drawLine(pt10 , pt12 , "r");
##
##endfunction
