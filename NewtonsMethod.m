%% Program to solve non-linear system of equations using Newton's method

%% Input
% f = function vector
% df = derivative of function vector
% n = number of iterations
% x = intial guess

f = @(x)[x(2)^2 - 3*x(1)^2; x(1)^2 + x(1)*x(3) + x(3)^2 - 3*x(2)^2; x(2)^2 + x(2) + 1- 3*x(3)^2];
df = @(x)[-6*x(1), 2*x(2), 0; 2*x(1) + x(3), -6*x(2), x(1) + 2*x(3)^2; 0, 2*x(2)+1, -6*x(3)];
x = [1;1;1];
n = 10;

%% Algorithm
for i = 1:n 
    dx = -df(x)\f(x);
    x = x + dx;
end

disp('x = ');
disp(x)
