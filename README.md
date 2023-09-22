# crabs


getTranslation: number number -> matrix <b>
Purpose: Number1 represents the amount of shift in the x direction and number2 the amount to shift in the y direction. <b>
getTranslate uses these numbers to create a 3x3 matrix that will translate an object stored as a 3XN matrix when it <b> multiplies the object matrix. <b>
Dependencies: None. <b>
Call: T = getTranslation(xCapt, yCapt) <b>
Side Effects: None. <b>

<b>
getCapt: number -> matrix <b>
Purpose: The number is the captSize, which displays the distance between each point of the Captain. getCapt uses these <b> numbers to create a 3x18 matrix to store the initial position of the Captain's x, y, and z positions <b>
Dependencies: None
Call: capt = getCapt(sizeCapt)
Side Effects: None. </b>

drawLine: vector, vector, color -> graphics handle <b>
Purpose: draws a line from the vectors created by getCapt.
Dependencies: draws a line on a graph
Call: captainGraphics(n) = drawLine(pt'n', pt'm', "k");
Side Effects: 

drawCapt: 
