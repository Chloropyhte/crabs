function capt = getCapt (captSize)

%{
Right Hand Spear Tip
14 ____12____________13
\
\
\
4________5_____________6
| |
| 7 ------8
| ( 0,0 ) | | __________________\ positive x-axis
| 10-----9 /
| |
3 _______2______________1
| /
| /
| /
11
Left Hand
|
|
\|/
positive y-axis
%}
%Capt left side
captPt1 = [ captSize; captSize; 1]; %left shoulder
captPt2 = [ -captSize; captSize; 1]; %left waist
%Capt feet
captPt3 = [-3*captSize; captSize; 1]; %left
captPt4 = [-3*captSize; -captSize; 1]; %right
%Capt right side
captPt5 = [ -captSize; -captSize; 1]; % right waist
captPt6 = [ captSize; -captSize; 1]; % right shoulder
%head
captPt7 = [ captSize; -captSize/2; 1]; %right neck
captPt8 = [ 2 *captSize; -captSize/2; 1]; %right top of head
captPt9 = [ 2*captSize; captSize/2; 1]; %left top of head
captPt10 = [ captSize; captSize/2; 1]; %left neck
%hands
captPt11 = [ 0; 2*captSize; 1]; %left
captPt12 = [ 0; -2*captSize; 1]; %right
%spear right side
captPt13=[ 3*captSize; -2*captSize; 1]; % spear point
captPt14=[ -captSize; -2*captSize; 1]; % spear end

%spear left side
captPt15=[ 3*captSize; 2*captSize; 1]; % spear point
captPt16=[ -captSize; 2*captSize; 1]; % spear end

%right elbow
captPt17=[0.5*captSize; -captSize; 1];
%left elbow
captPt18=[0.5*captSize; captSize; 1];

%raise right spear above head
%right hand
%{
captPt19=[2*captSize; -captSize; 1];
%right elbow
captPt20=[1.5*captSize; -captSize; 1];
%spear tip
captPt21=[2*captSize; 0; 1];
captPt19=[2*captSize; -3captSize; 1];
%}
%captain matrix
capt = [ captPt1, captPt2, captPt3, captPt4, captPt5, captPt6, captPt7, ...
captPt8, captPt9, captPt10, captPt11, captPt12, captPt13, captPt14, captPt15, captPt16, captPt17, captPt18];
endfunction
