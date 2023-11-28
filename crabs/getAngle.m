##function retval = getAngle(xNet, yNet, xCrab, yCrab);

  %find the angle of net relative to the crabs
##  xDanger = xNet - xCrab;
##  yDanger = yNet - yCrab;
##
##  if (xDanger == 0 || yDanger == 0) % on axis
##
##      if (xDanger == 0 && yDanger == 0) %if at origin
##        theta = 0;
##
##
##      elseif (xDanger == 0 && yDanger != 0) % if on y-axis
##          if (yDanger > 0)
##            theta = pi/2;
##          else
##            theta = 3*pi/2;
##          endif
##
##      elseif (xDanger != 0 && yDanger == 0) % if on x-axis
##        if (xDanger >0)
##          theta = 0;
##        else
##          theta = pi;
##        endif
##
##
##  else %off axis
##    if (xDanger > 0 && yDanger >0) %first quad
##        theta = atan(abs(yDanger/xDanger));
##    elseif (
##
##    endif
##  endif

function [thetaCrab] = getAngle(xNet, yNet, xCrab, yCrab);
     if ((xNet - xCrab) >= 0); %if Captain is to the right of the crab or at the same x position
       thetaCrab = atan((yNet-yCrab) / (xNet - xCrab));

     elseif ((xNet - xCrab) < 0); %if Captain is to the left of the crab
       thetaCrab = atan((yNet - yCrab) / (xNet - xCrab)) + pi;
     endif

endfunction

