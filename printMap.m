function PrintMap(map)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% print the map
% Function call
% PrintMap(map)
% Inuput Argument
% map=the array of map
% Assignment Information
%   Assignment:     Project
%   Author:         Dani, 101138hu@gmail.com
%   Team ID:        2
%   Academic Integrity:
%     [o] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: Andy, 7777ooan@gmail.com
%     Peers I worked with: Lulu, f74136314@gs.ncku.edu.tw
%     Peers I worked with: Ryan, e14136524@gs.ncku.edu.tw
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
for i = 1:size(map,1)
    disp(map(i,:))
end
end