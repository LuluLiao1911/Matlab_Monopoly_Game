function [row, col] = transform(num,text)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Program Description 
% transom the coordinates to the index of map array
%
% Function Call
% function [row, col] = transform(num)
%
% Input Arguments
% num = position number
% text = who's turn
%
% Output Arguments
% [row,col] = position coordinate
%
% Assignment Information
%   Assignment:     Project
%   Author:         Dani, 101138hu@gmail.com
%   Academic Integrity:
%     [o] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: Andy, 7777ooan@gmail.com
%     Peers I worked with: Lulu, f74136314@gs.ncku.edu.tw
%     Peers I worked with: Ryan, e14136524@gs.ncku.edu.tw
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if(num <= 11)
    col = 11+5*(num-1);
    if text == "P1"
        row = 2;
    elseif text == "P2"
        row = 3;
    end
elseif num <=18
    row = 4+num-11;
    if text == "P1"
        col = 65;
    elseif text == "P2"
        col = 67;
    end
elseif num <= 29
    col = 11+5*(11 - num + 18);
    if text == "P1"
        row = 13;
    elseif text == "P2"
        row = 14;
    end
else 
    row = 12-num+29;
    if text == "P1"
        col = 5;
    elseif text == "P2"
        col = 7;
    end

end
%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The function I am submitting
% is my own original work.