function dramaticPrint(message, result, numDots, duration)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Program Description 
% conduct the printing effect of the lottery game
% Function Call
% dramaticPrint(message, result, numDots, duration)
%
% Input Arguments
% message: string be print beforehead 
% results: integer, the winning number
% numDots: integer, number of dots to be printed
% duration: integer, printing duration time
%
% Output Arguments
% none
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
%% Formatted text
fprintf('\n'); 
fprintf('%s', message)
interval = duration / numDots;  % Calculate the interval for dot printing

for i=1:numDots
    fprintf('.')
    pause(interval)
end
fprintf('%d ',result)
fprintf('\n'); 
end
