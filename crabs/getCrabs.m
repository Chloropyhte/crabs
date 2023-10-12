##function crab = getCrab (size)
##  %this function stores and returns the crab at the origin.
##  %each of the lines below are individual points of the crab.
##
##  %body
##crabPt1 = [size/2; size; 1];
##crabPt2 = [-size/2; size; 1];
##crabPt3 = [-size/2; -size; 1];
##crabPt4 = [size/2; ; -size; 1];
##
##%claws
##crabPt5 = [1.5*size; 1.5*size; 1];
##crabPt6 = [1.5*size; -1.5*size; 1];
##crabPt7 = [1*size; 1.5*size; 1];
##crabPt8 = [1*size; -1.5*size; 1];
##
##%legs
##crabPt9 = [0; -1.5*size; 1];
##crabPt10 = [0; 1.5*size; 1];
##crabPt11 = [-size/2; -1.75*size; 1];
##crabPt12 = [-size/2; 1.75*size; 1];
##
##crab = [crabPt1, crabPt2, crabPt3, crabPt4, crabPt5, crabPt6, crabPt7, crabPt8, crabPt9, crabPt10, crabPt11, crabPt12]
##
##endfunction
