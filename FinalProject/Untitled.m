%%Muhammad Anza Khan, 260618490
%%ECSE 443 Final Project
%%Question 4

clc;
clear;
%%input
x = [0, 0.5, 0.75, 1.00, 1.25, 1.50, 1.75];

%%output
y = [1, 0.1160, -0.1084, -0.0409, 0.0052, 0.0067, 0.009];

b = [1, 1, 1]';

%%we set our step size
h = 0.25;

%%calculations of coefficients
y_double_prime_a = ((2*y(2)) - (5*y(3)) + (4*y(4)) - (y(5)))/(h*h);
y_prime_a = ((((-11/6)*y(2)) + (3*y(3)) - (1.5*y(4)) + ((1/3)*y(5))))/(h);
%%y_prime_a = ((((-11/6)*y(2)) + (3*y(3)) - (1.5*(4)) + ((1/3 *y(5)))))/h
y_a = y(2);

y_double_prime_b = (((2*y(3)) - (5*y(4)) + (4*y(5)) - (y(6))))/(h*h);
y_prime_b = ((((-11/6)*y(3)) + (3*y(4)) - (1.5*y(5)) + ((1/3)*y(6))))/(h);
y_b = y(3);

y_double_prime_c = (((2*y(4)) - (5*y(5)) + (4*y(6)) - (y(7))))/(h*h);
y_prime_c = ((((-11/6)*y(4)) + (3*y(5)) - (1.5*y(6)) + ((1/3)*y(7))))/(h);
y_c = y(4);

%%matrix A
A = [y_double_prime_a y_prime_a y_a; y_double_prime_b y_prime_b y_b; y_double_prime_c y_prime_c y_c]

sol = A \b

syms y(t);
Dy = diff(y);
D2y = diff(y,2);
ode = sol(1)*D2y+sol(2)*Dy+sol(3)*y

ySol =dsolve(ode, y(0)==1, Dy(0)==0);
ezplot(ySol)
hold on;
xlim([0 2])
ylim([-1 1])