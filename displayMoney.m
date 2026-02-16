function display_money(p1, p2, p1_money, p2_money)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% displaying player1 and player2's money
%
% Function Call
% display_money(p1, p2, p1_money, p2_money)
%
% Input details
% p1 = player1's name
% p2 = player2's name
% p1_money = player1's money
% p2_money = player2's money
%
% Assignment Information
%   Assignment:     Project(subfunction)
%   Author:         Andy, f74131495@gs.ncku.edu.tw
%   Team ID:        Team 2
%     [V] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: Dani, 101138hu@gmail.com
%                          Ryan, e14136524@gs.ncku.edu.tw
%                          Lulu, f74136314@gs.ncku.edu.tw
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%_______________________
%% Display
% display money board
fprintf([' ======================================================================\n' ...
         '                            Money Board                                \n' ...
         ' ======================================================================\n' ...
         '          %s''s money                            %s''s money          \n' ...
         '          => %d                                    => %d               \n' ...
         ' ======================================================================\n'], ...
         char(p1), char(p2), p1_money, p2_money);
end