function r = myRank_100000000( M )
%MYRANK_TEMPLATE to find the rank of an arbitrary matrix
%   Input:
%       M, an arbitrary size input matrix
%   Output:
%       r, an integer indicates how many the rank of it is
%   Example:
%       M = [1 0 0; 0 1 0; 0 0 1];
%       r = myRank(M);
%       r =
%           3
%   Note:
%       1) Remember to change both the names of file and function.
%       2) Name spec: myRank_{studentID}, e.g. myRank_103061527.
%       3) Read all the comment in the code carefully.
%       4) All related discussion is on the Internet, it's okay to find
%          some information that might be helpful for you.


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                               %
%                                                               %
%               WRITE DOWN YOUR CODE BELOW                      %
%                                                               %
%                                                               %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %% The first step: obtain the size of the input matrix
    %   Please key in 'help size' to see the detailed description
    %   Hint: [m n] = size(M);
    
    
    %% The second step: process the input matrix
    %   Recommend to use 'Gaussion Elimination' algorithm
    %   Some tricks such as 'for', 'if-else' and 'while' will be briefly
    %   described in 'tutorial.m'

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%% Sample code, please delete it when starting programming %%%
    [~, S, ~] = svd(M);                                         %%%
%%%%%%% Sample code, please delete it when starting programming %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    %% The final step: return the answer
    %   After processing the input matrix, you will develop some criterion
    %   to obtain what the rank is. In MATLAB syntax, the way to return
    %   values is to directly assign the value to the argument 'r', which
    %   has been defined above.
    %   Note: DO NOT USE '==0' to check if a value is equal to zero due to
    %   some numerical issues.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%% Sample code, please delete it when starting programming %%%
    for ii = 1:min(size(S))                                     %%%
            if abs(S(ii, ii)) >= 1e-10                          %%%
                r = ii;                                         %%%
            end                                                 %%%
    end                                                         %%%
%%%%%%% Sample code, please delete it when starting programming %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
end

