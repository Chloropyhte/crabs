# crabs
getTranslation: number1 number2 -> matrix
Purpose: Number1 represents the amount of shift in the x direction and number2 the amount to shift in the y direction. getTranslate uses these numbers to create a 3x3 matrix that will translate an object stored as a 3XN matrix.
         when it multiplies the object matrix.
Dependencies: None.
Call: T = getTranslation(xCapt, yCapt)
Side Effects: None.

getCapt: number -> matrix
Purpose: The number is the captSize, which displays the distance between each point of the Captain. getCapt uses these numbers to create a 3x18 matrix to store the initial position of the Captain's x, y, and z positions.
Dependencies: None
Call: capt = getCapt(sizeCapt)
Side Effects: None.

drawLine: vector, vector, color -> graphics handle
Purpose: draws a line from the vectors created by getCapt.
Dependencies: draws a line on a graph
Call: captainGraphics(n) = drawLine(pt'n', pt'm', "k");
Side Effects: connects the Captain's points on a separate plot.

drawCapt: number number number number -> graphics handle
Purpose: expects 4 numbers, x pos of capt, y pos of capt, an angle of reflection for the captain, and the distance between each of the captain's points, and returns the captain's points on drawMap()
Dependencies: getCapt(), getTranslation()
Call: captainGraphics = drawCapt(xCapt, yCapt, thetaCapt, sizeCapt)
Side Effects: Plots the Captain's points on a separate plot.

drawMap: string -> image
purpose: expects an image name and returns the backround image correlated to that name.
Dependencies:
Call: drawMap(imageName)
Side effects: None

crabs: call -> image
purpose: expects a call of itself and returns an image of the entire game including DrawMap and DrawCapt
Dependencies:
Call: crabs
Side Effects: None

