clear; clc;
A = [ 150 -100 0 588.6; 0 -50 50 784.8; 0 -50 50 686.7];
[l,u,p] = lu(A);
b = [ 588.6; 784.8; 686.7];
B = l*b;



rref(A)