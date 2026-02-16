function [new_pos]=update2(pos,N)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% update player's position if player step on special step
%
% Function Call
% [new_pos]=update2(pos,N)
%
% Input details
% pos=player's original position
% N=serial number of special events
%
% Output details
% new_pos=the updated position after conducted the special event
% Assignment Information
%   Assignment:     Project(subfunction)
%   Author:         Lulu, f74136314@gs.ncku.edu.tw
%   Team ID:        Team 2
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: Dani, 101138hu@gmail.com
%                          Ryan, e14136524@gs.ncku.edu.t
%                          Andy, 7777ooan@gmail.com
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% SELECTION STRUCTURE
% pause
if N==1
    new_pos=pos;
% restart
elseif N==2
    new_pos=1;
% teleporter
elseif N==3
    if pos==9
        new_pos=26;
    elseif pos==26
        new_pos=9;
    end
% 1 steps toward
elseif N==4
    new_pos=pos+1;
% 2 steps backward
elseif N==5
    new_pos=pos-1;
% 2 steps toward
elseif N==6
    new_pos=pos+2;
% 2 steps backward
elseif N==7
    new_pos=pos-2;  
end

%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The function I am submitting
% is my own original work.

