% Q1 Answers
x_q1 = [10, 1000, 1000000];
y_q1 = [0, 0 ,0];

for i = 1:length(x_q1)
    y_q1(i) = q1a_eqn(x_q1(i));
end

%syms x
% Q1 c simplify function
%f_q1simplified = simplify(x*(sqrt(x)-sqrt(x-1))*(sqrt(x)+sqrt(x-1))/((sqrt(x)+sqrt(x-1)));

% Q2 Answers
x_q2 = 0.007;
y_q2 = q2a_eqn(x_q2);
