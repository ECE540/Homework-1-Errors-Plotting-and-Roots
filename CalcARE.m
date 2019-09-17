function [absolutRelErr] = CalcARE(true, approx)
%[absolutRelErr] = untitled(true, approx)
%Calculates the absolute relative error between two vectors
%Input:     true-the true/expected value
%Output:    approx-the calculated value
absolutRelErr = abs((true - approx) / true) * 100;
end

