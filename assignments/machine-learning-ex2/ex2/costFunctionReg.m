function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

%mycode
%zeeval = X * theta;

%sig = sigmoid(zeeval);

%prediction = ((-y .* log(sig)) - ((1 .-y) .* log(1 .-sig)));

%regularization = lambda/(2*m)* theta .^2;

%J = (1/m)*sum(prediction) + sum(regularization);


%grade1 =  (1/m) * sum(sig-y) *X( :,1 );
%grade2  = ((1/m) * sum((sig - y) .* X(:,2)) ) + ((lambda/m) .*theta(2,:));
%grade3 =  ((1/m)* sum((sig - y) .* X(:,3)) ) + ((lambda/m) .*theta(3,:));

%grad(1) =   (1/m) * sum((sig - y ).*X( :,1 ));
%for j = 2:length( theta )   
 
 %   grad(j) = ( (1/m)* sum((sig - y ).*X( :,j )) ) + ((lambda/m) .*theta(j));
 
%end


%===========================================
% copied code
%===========================================

J = sum((- y).*log( sigmoid( X * theta )) - ( 1 - y ).*log( 1 - sigmoid( X * theta )))/m + ( theta' * theta * lambda ) / ( 2 * m ) - ( theta(1) * theta(1) * lambda ) / ( 2 * m ) ;
 
grad(1) =   ( sum(( sigmoid( X * theta ) - y ).*X( :,1 ))) / m ;
for j = 2:length( theta )   
 
    grad(j) =   ( sum(( sigmoid( X * theta ) - y ).*X( :,j ))) / m + (lambda*theta(j))/m;
 
end
 


% =============================================================

end
