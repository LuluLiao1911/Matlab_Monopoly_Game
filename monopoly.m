%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% the main function that conduct the monopoly game
%
%
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
%% INITIALIZATION
map = [
    
    '          1    2    3    4    5    6    7    8    9    10   11          '
    '   #######P1#########################################################   '
    '   #######P2#########################################################   '
    '1  #####|STR!|.$$$|.-2.|....|.$10|.R_.|.$$$|.+2.|[tp]|....|.$20|##### 11'
    '36 #####|.$$$|                                            |.$$$|##### 12'
    '35 #####|-$15|                                            |....|##### 13'
    '34 #####|.R_.|                                            | -1 |##### 14'
    '33 #####|.+2.|                 =MONOPOLY=                 |.$15|##### 15'
    '32 #####|....|                                            |.$$$|##### 16'
    '31 #####|.$30|                                            |.-2.|##### 17'
    '30 #####|.||.|                                            |....|##### 18'
    '29 #####|....|-$10|.+1.|[tp]|.$$$|.+1.|....|.-1.|.$$$|....|.||.|##### 19'
    '   ##################################################################   '
    '   ##################################################################   '
    '          29   28   27   26   25   24   23   22   21   20   19          '];
endgame = 0; % whether is the game end
pause1 = 0; % whether player 1 can move
pause2 = 0; % whether player 2 can move
p1_pos = 1; % player 1's curent position
p2_pos = 1; % player 2's curent position 
p1_pre = 1; % player 1's previous position 
p2_pre = 1; % player 2's previous position
p1_money = 0; % player 1's money
p2_money = 0; % player 2's money
previous_text = '##';
% print initial map
PrintMap(map);
% print event menu
manual();
[player1,player2]=monopoly_start;
% when no one finish the game
while endgame ~= 1
    % when player1 didn't be paused
    if ~pause1
        status_text = player1+'''s turn';
        len1=strlength(status_text);
        map(10,32:(32 + len1 - 1)) = status_text;
        PrintMap(map);
        display_money(player1,player2,p1_money,p2_money);
        disp(player1)
        x = input('press R to roll the dice(1~3).','s');
        while(x ~= 'R')
            x = input('press R to roll the dice(1~3).','s');
            fprintf("press R !!!!\n");
        end
        % roll the dice
        r = randi(3);
        fprintf("You rolled: %d\n",r)
        % update position
        [p1_pos] = update1(p1_pos,r);
        % update player 1's money
        [p1_money] = updatemoney(p1_money,player1,p1_pos);
        [map]=replace(p1_pre,p1_pos,"P1",map);
        p1_pre = p1_pos;
        status_text='                      ';
        len1=strlength(status_text);
        map(10,32:(32 + len1 - 1)) = status_text;
    end
    
    % when player1 meet end game condition
    if  p1_pos>=37 || p1_money>=100
        monopoly_end(player1)
        endgame=1;
        return
    end
    

    % when player2 didn't be paused
    if ~pause2
        status_text = player2+'''s turn';
        len2=strlength(status_text);
        map(10,32:(32 + len2 - 1)) = status_text;
        PrintMap(map);
        display_money(player1,player2,p1_money,p2_money);
        disp(player2)
        x = input('press R to roll the dice(1~3).','s');
        while(x ~= 'R')
            fprintf("press R !!!!\n");
            x = input('press R to roll the dice(1~3).','s');
            
        end
        % roll the dice
        r = randi(3);
        fprintf("You rolled: %d\n",r)
        % update position
        [p2_pos] = update1(p2_pos,r);
        % update player 2's money
        [p2_money] = updatemoney(p2_money,player2,p2_pos);
        [map]=replace(p2_pre,p2_pos,"P2",map);
        p2_pre = p2_pos;
        status_text='                      ';
        len2=strlength(status_text);
        map(10,32:(32 + len2 - 1)) = status_text;
    end
    
    % when player2 meet end game condition
    if p2_pos>=37 || p2_money>=100
        monopoly_end(player2)
        endgame=1;
        return
    end
end
%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The function I am submitting
% is my own original work.