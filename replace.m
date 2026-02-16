function [map2]=replace(pos,new_pos,text,map1)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% replace ## to p1 or p2 and replace previous p1 p2 to ## 
%
% Function Call
% [map2]=replace(num,text,map1)
% it will use transform function ->[row,col]=transform(num,text)
%
% Input details
% pos=the original serial number around the map
% new_pos=the updated serial number around the map
% text=reveal either p1 or p2
% map1=the previous map that need to be updated
%
% Output details
% map2=the updated map
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
pre_row1=0;
pre_row2=0;
pre_col1=0;
pre_col2=0;
%% SELECTION STRUCTURE
%update p1 info
if text=="P1"
    %pre_row1,pre_col1= the array index that need to be replaced with ##
    [pre_row1,pre_col1]=transform(pos,"P1");

    %post_row1,post_col1= the array index that need to be replaced with P1
    [post_row1,post_col1]=transform(new_pos,"P1");

    %update p1 infomation
    %horizontal replace### or ####
    if pos<=11 ||(pos>=19 && pos<=29)
    map1(pre_row1,(pre_col1-1):(pre_col1+2))='####';
    %right vertical
    elseif (pos<=19 && pos>=12) 
    map1(pre_row1,(pre_col1):(pre_col1+2))='###';
    %left vertical
    elseif (pos>=30) 
    map1(pre_row1,(pre_col1-1):(pre_col1+1))='###';
    end


    if new_pos<=11 ||(new_pos>=19 && new_pos<=29)
    %horizontal replace ### to P1
    map1(post_row1,(post_col1-1):(post_col1+2))=' P1 ';
    elseif (new_pos<=19 && new_pos>=12)
    %right vertical
    map1(post_row1,(post_col1):(post_col1+2))='P1 ';
    elseif (new_pos>=30) 
    %left vertical
    map1(post_row1,(post_col1-1):(post_col1+1))='P1 ';
    end
elseif text=="P2"
    %pre_row2,pre_col2= the array index that need to be replaced with ##
    [pre_row2,pre_col2]=transform(pos,"P2");

    %post_row2,post_col2= the array index that need to be replaced with P1
    [post_row2,post_col2]=transform(new_pos,"P2");

    %update p2 infomation
    %horizontal replace### or ####
    if pos<=11 ||(pos>=19 && pos<=29)
    map1(pre_row2,(pre_col2-1):(pre_col2+2))='####';
    %right vertical
    elseif (pos<=19 && pos>=12)
    map1(pre_row2,(pre_col2):(pre_col2+2))='###';
    %left vertical
    elseif (pos>=30)
    map1(pre_row2,(pre_col2):(pre_col2+1))='##';

    end
    if new_pos<=11 ||(new_pos>=19 && new_pos<=29)
    %horizontal replace### or #### to P2
    map1(post_row2,(post_col2-1):(post_col2+2))=' P2 ';
    elseif (new_pos<=19 && new_pos>=12)
    %right vertical
    map1(post_row2,(post_col2):(post_col2+2))=' P2';
    elseif (new_pos>=30) 
    %left vertical
    map1(post_row2,(post_col2-1):(post_col2+1))=' P2';
    end
end
map2=map1;


%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The function I am submitting
% is my own original work.
