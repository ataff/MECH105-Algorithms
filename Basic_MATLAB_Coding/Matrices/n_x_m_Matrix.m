function [A] = specialMatrix(n,m)
% This function should return a matrix A as described in the problem statement
% Inputs n is the number of rows, and m the number of columns
% It is recomended to first create the matrxix A of the correct size, filling it with zeros to start with is not a bad choice
A = zeros(n,m);

% Now the real challenge is to fill in the correct values of A
% 1  2  3  4  5
% 2  4  7 11 16
% 3  7 14 25 41
% 4 11 25 50 91

A(1,:) = 1:m;
A(:,1) = 1:n;
for x = 2:n
    for y = 2:m
        A(x,y) = (A(x-1,y)+A(x,y-1))
    end
end