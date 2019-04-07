function shootingmethod
clc
clear all
x1 = fzero(F',-0.5)
end 

function f=F(s)
[x,y] = ode45(@de,[0 1], [1 s]);

y_10 = 0;
f = y(end,1) - y_10;

plot(x,y(:,1))

end

function y=de(t,x)
y = zeros(2,1);
y(1) = x(2);
y(2) = 8 - x(1)/4;

% y = y';
end
