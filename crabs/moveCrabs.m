function [xCrab, yCrab, thetaCrab] = moveCrabs(cmd,x,y,theta,size,height,width);

  step = 150;
  dTheta = -pi/6;


%new key
if(cmd == "j")
     xTemp = x + step * sin(theta);
     yTemp = y - step * cos(theta);
     thetaCrab = theta;

     if (isOnMap(xTemp, yTemp, width, height, size) );
       xCrab = xTemp;
       yCrab = yTemp;
     else
       xCrab = x;
       yCrab = y;
     endif


%new key
   elseif (cmd == "l")
     xTemp = x - step * sin(theta);
     yTemp = y + step * cos(theta);
     thetaCrab = theta;

     if (isOnMap(xTemp, yTemp, width, height, size) );
       xCrab = xTemp;
       yCrab = yTemp;
     else
       xCrab = x;
       yCrab = y;
     endif

%new key
   elseif (cmd == "k")
     xTemp = x - step * cos(theta);
     yTemp = y - step * sin(theta);
     thetaCrab = theta;

     if (isOnMap(xTemp, yTemp, width, height, size) );
       xCrab = xTemp;
       yCrab = yTemp;
     else
       xCrab = x;
       yCrab = y;
     endif

%new key
   elseif (cmd == "i")
     xCrab = x;
     yCrab = y;
     thetaCrab = theta-dTheta;

%new key
   elseif (cmd == ",")
     xCrab = x;
     yCrab = y;
     thetaCrab = theta+dTheta;

   else
     xCrab=x;
     yCrab=y;
     thetaCrab = theta;

   endif

endfunction
