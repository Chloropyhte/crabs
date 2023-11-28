
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
playAgain = 1;
while (playAgain == 1)
level = drawStartScreen("plane.jpg");

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
[captainGraphics, netNodeX, netNodeY, captNodeX, captNodeY] = drawCapt (xCapt , yCapt , thetaCapt , sizeCapt);



%crab directory
numCrabs = level;
for (i=1: numCrabs)
    xCrab = rand(1, numCrabs)*mapWidth;
    yCrab = 0.75*mapHeight + rand(1, numCrabs)*mapHeight/4;
endfor
##xCrab = 500;
##yCrab = 500;
thetaCrab = ones(1, numCrabs)*(-pi/2);
sizeCrab = 100;
isCrabCaught = zeros(1, numCrabs);
for (j=1: numCrabs)
    crabColor(j) = 1;
    [crabGraphics(:,j), fill2(j), xCrabNode(j), yCrabNode(j), r(j), g(j), b(j)] = drawCrabs (xCrab(j) , yCrab(j) , thetaCrab(j) , sizeCrab, crabColor(j), 0, 0, 0);
    crabColor(j) = 0;
endfor
crabStep = 50;

%initialize jellyfish
numJelly = level;
xJelly = rand(1, numJelly) * mapWidth;
yJelly = rand(1, numJelly) * mapHeight;
thetaJelly = ones(1, numJelly) * (-pi/2);
##xJelly = rand*mapWidth;
##yJelly = 0;
##thetaJelly = -pi/2;
sizeJelly = 25;
for (k=1: numJelly)
    [jellyGraphics(:,k), xJellyNode(k), yJellyNode(k)] = drawJelly(xJelly(k), yJelly(k), thetaJelly(k), sizeJelly);
endfor

%*******************************************************
%initial command
ptCounter = 0;
health = 100;

% point and health text displayed on the screen
pointText = text(mapWidth/2, -20, strcat('Points: ', num2str(ptCounter)), 'FontSize', 40, 'Color', 'red');
healthText = text(50, -20, strcat('Health: ', num2str(health)), 'FontSize', 40, 'Color', 'red');

while(1)
    commandwindow();
    %for loop goes through every jellyfish
    for (k=1:numJelly)
        % erase old jellyfish
        for i=1:length(jellyGraphics)
            delete(jellyGraphics(i, k));
        endfor

        % move jellyfish
        [xJelly(k),yJelly(k),thetaJelly(k)] = moveJelly(level, xJelly(k), yJelly(k),thetaJelly(k), sizeJelly,...
        mapHeight,mapWidth);

        % draw jellyfish
        [jellyGraphics(:,k), xJellyNode(k), yJellyNode(k)] = drawJelly(xJelly(k),yJelly(k),thetaJelly(k),sizeJelly);
    endfor


    % read keyboard
    cmd = kbhit(1);
    if( cmd == 'Q')
        break;
    endif

    if (cmd == "a" || cmd == "s" || cmd == "d" || cmd == "w" || cmd == "W")
     %erase old captain
     for (i=1:length(captainGraphics))
                  set(captainGraphics(i), 'Visible','off');
     endfor

     %move captain
     [xCapt, yCapt,thetaCapt] = moveCaptain(cmd,xCapt,yCapt,thetaCapt, sizeCapt, mapWidth, mapHeight);

     %draw new captain
     [captainGraphics, netNodeX, netNodeY, captNodeX, captNodeY] = drawCapt (xCapt , yCapt , thetaCapt , sizeCapt);
    endif





    ## checks if crab gets caught or not
    for (k=1: numCrabs)
        if (isCrabCaught(k) == 0)
           %erase old crab
           for (j=1:length(crabGraphics(:,k)))
                  delete(crabGraphics(j,k));
           endfor
           delete(fill2(k));

           %move crab
           [thetaCrab(k)] = getAngle(netNodeX, netNodeY, xCrab(k), yCrab(k));
           [xCrab(k), yCrab(k)] = moveCrab(netNodeX, netNodeY, xCrab(k), yCrab(k), crabStep, mapWidth, mapHeight, sizeCrab, thetaCrab(k));

           %draw new crab
           [crabGraphics(:,k), fill2(k), xCrabNode(k), yCrabNode(k)] = drawCrabs (xCrab(k) , yCrab(k) , thetaCrab(k) , sizeCrab, crabColor(k), r(k), g(k), b(k));
       endif

       netDistFromCrab = distance (netNodeX, netNodeY, xCrabNode(k), yCrabNode(k));
       if ( isCrabCaught(k) == 0 && netDistFromCrab < 1.5*sizeCapt + sizeCrab/2) %if crab is caught
      ##     ptCounter = ptCounter + 1;
             isCrabCaught(k) = 1; % sets the crab's matrix to 1, making it true
             ptCounter = sum(isCrabCaught); %Point Counter increases by 1
      ##     xCrab = rand*mapWidth;
      ##     yCrab = rand*mapHeight;
             for(i=1:length(crabGraphics(:,k))) % goes through every line in crabGraphics
                 delete (crabGraphics(i,k)); % deletes one line of the crab per iteration
             endfor
             delete(fill2(k));
             delete (pointText); %deletes old scoreboard
             %creates new, updated scoreboard
             pointText = text(mapWidth/2, -20, strcat('Points: ', num2str(ptCounter)), 'FontSize', 40, 'Color', 'red');
      ##     [crabGraphics, xCrabNode, yCrabNode] = drawCrabs (xCrab, yCrab, thetaCrab, sizeCrab);
       endif
    endfor





    % for loop goes through every jelly
    for (k=1: numJelly)
       jellyDistFromCapt = sqrt((xJellyNode(k) - captNodeX)^2 + (yJellyNode(k) - captNodeY)^2); % calculates jelly distance from captain
        if (jellyDistFromCapt < 2*sizeJelly + sizeCapt)     % if jelly hits captain
            health = health - 10; %captains health decreases
            if (health <= 0) %if the captain dies, the programs dies too
                break
            endif
            delete (healthText); %deletes olf health meter

            %creates new, updated health meter
            healthText = text(50, -20, strcat('Health: ', num2str(health)), 'FontSize', 40, 'Color', 'red');
        endif
        if (health <= 0)
          break
        endif
    endfor




    fflush(stdout); %removes all old lines and text, making program more efficient
    pause(.01) %gives the program time to computate all the code


    if (isCrabCaught == 1)
        break
    endif

    if (health <= 0) %ends program if captain dies
        break
    endif

endwhile

playAgain = drawEndScreen("plane.jpg", ptCounter);

endwhile

close all

endfunction
