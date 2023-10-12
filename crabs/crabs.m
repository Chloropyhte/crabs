
function crabs ()
%author: Owen
% Crabs is a kids computer game where a fisherman, called the captain,
% hunts for a very clever and powerful crab.
% Draw the game map and initialize map dimensions.
##[mapHeight , mapWidth] = drawMap( "plane.jpg" );
##cmd = "null";
##while (cmd == "null")
##  cmd = kbhit();
##endwhile

[mapHeight , mapWidth] = drawMap( "BGImage.png" );
% Initialize captain location, heading and size
xCapt = 1500;
yCapt = 1000;
thetaCapt = -pi/2;
sizeCapt = 50;
% Draw the captain and initialize graphics handles
%*********************************************************
% Put your call to drawCapt() here ..... You must give drawCapt its
% input and output arguments.
captainGraphics = drawCapt (xCapt , yCapt , thetaCapt , sizeCapt)



%crab directory
##xCrab = 1024;
##yCrab = 660;
##thetaCrab = -pi/2;
##sizeCrab = 100;
##
##crabGraphics = drawCrabs (xCrab , yCrab , thetaCrab , sizeCrab)
%*******************************************************
%initial command
cmd="null";

 while(cmd != "Q")

 % read keyboard
 cmd = kbhit();

 if( cmd == "w" || cmd == "a" || cmd == "d")

   %erase old captain
   for (i=1:length(captainGraphics))
                set(captainGraphics(i), 'Visible','off');
   endfor

   %move captain
   [xCapt, yCapt,thetaCapt] = moveCaptain(cmd,xCapt,yCapt,thetaCapt, sizeCapt, mapWidth, mapHeight);

   %draw new captain
   captainGraphics = drawCapt (xCapt , yCapt , thetaCapt , sizeCapt)




##   elseif (cmd == "j" || cmd == "l" || cmd == "k" || cmd == "i" || cmd == ",")
##     %erase old crab
##   for (i=1:length(crabGraphics))
##                set(crabGraphics(i), 'Visible','off');
##   endfor
##
##   %move crab
##   [xCrab, yCrab, thetaCrab] = moveCrabs(cmd,xCrab,yCrab,thetaCrab, sizeCrab, mapHeight, mapWidth);
##
##   %draw new crab
##   crabGraphics = drawCrabs (xCrab , yCrab , thetaCrab , sizeCrab)
 endif
endwhile


close all

endfunction
