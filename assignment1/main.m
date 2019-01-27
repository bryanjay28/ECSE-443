% Q1 Answers
x_q1 = [10, 1000, 1000000];
y_q1 = [0, 0 ,0];

for i = 1:length(x_q1)
    y_q1(i) = q1_eqn(x_q1(i));
end

% Q1 c simplify function
f_x_simplified = simplify(x*(sqrt(x)-sqrt(x-1))*(sqrt(x)+sqrt(x-1))/((sqrt(x)+sqrt(x-1)));
)