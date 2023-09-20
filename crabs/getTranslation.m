function T = getTranslation (ChangeX, ChangeY)

T = [1, 0, ChangeX;0, 1 , ChangeY;0, 0, 1]

endfunction

%R=getRotation(thetaCapt)
%CaptRotated = R*Capt
%capt = T * captRotated
%pt1 = capt(:, 1)
%pt2 = capt(:, 2)
%drawLine(pt1,pt2,"k") <- black
%captGraphics(1) = drawLine(pt1, pt2, "k")
