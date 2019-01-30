% function to calculate Gaussian Elimination
function X = gaussElim(X)
% get the size of the array
[n, m] = size(X); 


for i=1:n
    p = i;
    for k=i:n
        if(abs(X(p,i)) >= abs(X(k,i)))
            p = i;
        end
    end
    if(p ~= i)
        temp = X(p);
        X(p) = X(i);
        X(i) = temp;
    end
    % check if the diagonal is 0
    if X(i,i) == 0
        return
    end
    j = i;
    temp = X(i,j);
    X(i,:) = X(i,:)/temp;
    % loop through the matrix to get the triangular form
    for k=1:n
        if k ~= i
            X(k,:) = X(k,:)-X(i,:)*X(k,j);
        end  
    end
end
