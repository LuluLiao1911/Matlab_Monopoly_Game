function [end_pos]=update1(pos,N)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% update player's position based on the number on dice player rolled 
%
% Function Call
% [new_pos]=update1(pos,N)
%
% Input details
% pos=player's original position
% N=number that player rolled
%
% Output details
% new_pos=the updated position after conducted the special event
%
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


%% INITIALIZATION
new_pos=pos+N;
specialStep=[3 6 8 9 14 17 19 22 24 26 27 30 33 34];
flag=ismember(new_pos,specialStep);
%% SELECTION STRUCTURE
%if flag=0 means that player doesn't step on special position
%new_pos is already the final position of this round
if flag==0
    end_pos=new_pos;
    fprintf("You move from %d -> %d\n",pos,new_pos)
elseif flag==1
%if flag=1 means that player does step on special position

%position 19,30->pause
    if new_pos==19 || new_pos==30
    end_pos=update2(new_pos,1);
    fprintf("1.You move from %d -> %d\n",pos,new_pos)
    fprintf("2.You step on pause, move from %d -> %d\n",new_pos,end_pos)

%position 6,34->restart
    elseif new_pos==6 || new_pos==34
    end_pos=update2(new_pos,2);
    fprintf("1.You move from %d -> %d\n",pos,new_pos)
    fprintf("2.You step on restart, move from %d -> %d\n",new_pos,end_pos)

%position 9,26->teleporter
    elseif new_pos==9 || new_pos==26
    end_pos=update2(new_pos,3);
    fprintf("1.You move from %d -> %d\n",pos,new_pos)
    fprintf("2.You step on teleporter, move from %d -> %d\n",new_pos,end_pos)

%position 24,27->1 steps toward
    elseif new_pos==24 || new_pos==27
    end_pos=update2(new_pos,4);
    fprintf("1.You move from %d -> %d\n",pos,new_pos)
    fprintf("2.You step on 1 steps toward, move from %d -> %d\n",new_pos,end_pos)

%position 14,22->1 steps backward
    elseif new_pos==14 || new_pos==22
    end_pos=update2(new_pos,5);
    fprintf("1.You move from %d -> %d\n",pos,new_pos)
    fprintf("2.You step on 1 steps backward, move from %d -> %d\n",new_pos,end_pos)

%position 8,33->2 steps toward
    elseif new_pos==8 || new_pos==33
    end_pos=update2(new_pos,6);
    fprintf("1.You move from %d -> %d\n",pos,new_pos)
    fprintf("2.You step on 2 steps toward, move from %d -> %d\n",new_pos,end_pos)

%position 3,17->2 steps backward
    elseif new_pos==3 || new_pos==17
    end_pos=update2(new_pos,7);   
    fprintf("1.You move from %d -> %d\n",pos,new_pos)
    fprintf("2.You step on 2 steps backward, move from %d -> %d\n",new_pos,end_pos)
    end
end
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The function I am submitting
% is my own original work.

