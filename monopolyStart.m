function [p1, p2] = monopoly_start()
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Program Description 
% start page of the game
%
% Function Call
% [p1,p2] = monopoly_start()
%
% Input Argumemts
% none
%
% Output Arguments
% p1=player1, p2=player2
% Assignment Information
%   Assignment:     Project
%   Author:         Andy, 7777ooan@gmail.com
%   Team ID:        2
%   Academic Integrity:
%     [o] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: Dani, 101138hu@gmail.com
%     Peers I worked with: Lulu, f74136314@gs.ncku.edu.tw
%     Peers I worked with: Ryan, e14136524@gs.ncku.edu.tw
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Initialization
answer = "N";
%% Display
% display layout
fprintf("===========================================\n");
fprintf("       Welcome to the Monopoly Game!       \n");
fprintf("===========================================\n");

% Entering the game
while answer ~= "Start"
answer = input('\nPlease enter Start to start the game!','s');
end

% Get players' names
p1 = string(input('Please enter player1 name: ','s'));
p2 = string(input('Please enter player2 name: ','s'));
end