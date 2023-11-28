function [xCapt,yCapt,thetaCapt] = moveCaptain(cmd,x,y,theta,size, width,height);

  dTheta = pi/6;
  dStep = 150;

  if (cmd == "a")
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

  if( cmd == "w" || cmd == "s" || cmd == "W")
     %move forward
     if (cmd == "w")
        xTemp = x + dStep*cos(theta);
        yTemp = y + dStep*sin(theta);
        thetaCapt = theta;

     elseif (cmd == "s")
        xTemp = x - dStep*cos(theta);
        yTemp = y - dStep*sin(theta);
        thetaCapt = theta;


     elseif (cmd == "W")
        xTemp = x +(dStep*2)*cos(theta);
        yTemp = y + (dStep*2)*sin(theta);
        thetaCapt = theta;
     endif


     if (isOnMap(xTemp, yTemp, width, height, size) )
       xCapt = xTemp;
       yCapt = yTemp;
     else
       xCapt = x;
       yCapt = y;
     endif
  endif


endfunction
