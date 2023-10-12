function [xCapt,yCapt,thetaCapt] = moveCaptain (cmd,x,y,theta,width,height);

  dTheta = pi/6;
  dStep = 50;

  if( cmd == "w") %move forward
     xTemp = x + dStep*cos(theta)
     yTemp = y + dStep*sin(theta)
     thetaCapt = theta;

     if (isOnMap(xTemp,yTemp,width,height))
       xCapt = xTemp;
       yCapt = yTemp;
     else
       xCapt = x;
       yCapt = y;
       endif

     elseif (cmd == "a")
     %rotate left
       xCapt = x;
       yCapt = y;
       thetaCapt = theta - dTheta;

     elseif(cmd == "d")
     %turn right
       xCapt = x;
       yCapt = y;
       thetaCapt = theta + dTheta;

     else
     %default
       xCapt=x;
       yCapt=y;
       thetaCapt=theta;
  endif

endfunction
