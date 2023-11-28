function netDistFromCrab = distance (netNodeX, netNodeY, xCrabNode, yCrabNode);

    netDistFromCrab = sqrt((netNodeX - xCrabNode)^2 + (netNodeY - yCrabNode)^2);

endfunction
