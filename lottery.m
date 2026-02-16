function [money] = lottery()
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Program Description 
% conduct the simple lottery game, player will get $15 if guess 1 number correctly, $25 for 2 correct numbers, $35 for 3 correct numbers
%
% Function Call
% [point] = lottery()
%
% Input Arguments
% none
%
% Output Arguments
% money=the money that player earn in this game, (15 or 30 or 50)
% Assignment Information
%   Assignment:     Project(subfunction)
%   Author:         Lulu, f74136314@gs.ncku.edu.tw
%   Team ID:        Team 2
%     [v] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: Dani, 101138hu@gmail.com
%                          Ryan, e14136524@gs.ncku.edu.t
%                          Andy, 7777ooan@gmail.coms
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Initialization
point=0;
money=0;
arr = randperm(10, 3); %the array that contain winning numbers
%% Formatted text
fprintf("==============================\n")
fprintf("   WELCOME TO LOTTERY GAME    \n")
fprintf("==============================\n")
fprintf("You'll get chance to double your money here!\n")
fprintf("You'll get $10 if guess 1 number correctly, $30 for 2 correct numbers, $99 for 3 correct numbers.\n")
nums = input('Enter 3 different number (range 1 to 10):', 's');  % read as string
nums = str2num(nums);  % transform string to num vector
dramaticPrint('The first winning number is',arr(1),9,3)
dramaticPrint('The second winning number is',arr(2),9,3)
dramaticPrint('The third winning number is',arr(3),9,3)
fprintf('\n'); 
%% CACULATION
point = numel(intersect(arr, nums));  % find numbers of intersection
money=20*point-10; %caculate the money the player get
%% FORMATTED TEXT
if point==0
    money=0;
    fprintf('You got 0 in this round, good luck for rest of the game.\n')
elseif point==1 || point==2
    fprintf('Congrats!!! You got %d in this round!\n',money)
elseif point==3
    money=99;
    fprintf('Congrats!!! You got %d in this round!\n',money)
end
