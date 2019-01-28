% function to calculate Gaussian Elimination
function X = gaussElim(X, i)
j = i;
[n, ] = size(X); 
temp = X(i,j);
X(i,:) = X(i,:)/temp;
% loop through the matrix to get the triangular form
for k=1:n
    if k ~= i
        X(k,:) = X(k,:)-X(i,:)*X(k,j);
    end  
end