function [new_money] = updatemoney(money,name,p_pos)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Program Description 
% update player's money
%
% Function Call
% [new_money] = updatemoney(money,name,p_pos)
%
% Input Arguments
% money = previous money
% name = player's name
% p_pos = player's position
%
% Output Arguments
% new_money 
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
%% INITIALIZATION
new_money=0;


%% SELECTION STRUCTURE
% step on the lottery block
if p_pos==12 || p_pos==21 || p_pos==36 || p_pos==2 || p_pos==16 || p_pos==25||p_pos==7
    [num] = lottery(); 
    new_money = money + num;
% step on the certain block to get or loss money
else 
    if p_pos == 5
        new_money = money + 10;
    elseif p_pos == 11
        new_money = money + 20;
    elseif p_pos == 15
        new_money = money + 15;
    elseif p_pos == 28
        new_money = money - 10;
    elseif p_pos == 31
        new_money = money + 30;
    elseif p_pos == 35
        new_money = money - 15;
    else 
        new_money = money;
    end
end
%% FORMATTED OUTPUT
fprintf("\n%s's money from $%d -> $%d\n\n",name,money,new_money)
end

%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The function I am submitting
% is my own original work.