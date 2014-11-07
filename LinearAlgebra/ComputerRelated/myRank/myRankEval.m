%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                        %
%                                                                        %
%           EE2030 Linear Algebra Computer Homework 1                    %
%                                                                        %
%   myRankEval.m:                                                        %
%      The code to check if your function is able to accurately work.    %
%      Please run this script directly.                                  %
%                                                                        %
%               Brought to you by HW Lee 2014 Fall                       %
%                                                                        %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all; close all;

%% Load the test data
load('LinAlg2014Ex1.mat');
test = cell(5, 1);
test{1} = A1;
test{2} = A2;
test{3} = A3;
test{4} = A4;
test{5} = A5;
result = zeros(5, 2);
clear A1 A2 A3 A4 A5;

%% Get information
funcName = input('key in your student ID:\n');
funcName = ['myRank_' num2str(funcName)];
errMsg1 = ['The function ''' funcName ''' doesn''t exist.'];
errMsg2 = ['Your function ''' funcName ''' doesn''t work due to some problems, please check it.'];

if size(dir(['./' funcName '.m']), 1) > 0
    func = str2func(funcName);
else
    error(errMsg1);
end

try
    for ii = 1:5
        result(ii, :) = [feval(func, test{ii}) rank(test{ii})];
    end
    if sum( result(:, 1) == result(:, 2) ) == 5
        fprintf('Excellent, your function works accurately!\n');
    else
        fprintf('Your function does not work well, please check it again.\n');
        for ii = 1:5
            if result(ii, 1) ~= result(ii, 2)
                fprintf('\nAt test{%d}:\n', ii);
                fprintf('Your  answer: %d\n', result(ii, 1));
                fprintf('Right answer: %d\n', result(ii, 2));
            end
        end
    end
catch exception
    error(errMsg2);
end

clear all;
