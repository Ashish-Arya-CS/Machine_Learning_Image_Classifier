function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

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
%
% Note: grad should have the same dimensions as theta
%
temp=sigmoid(X*theta);
tempi=temp-y;
tempi1=X'*tempi;
temp1=log(temp);
temp2=log(1-temp);
temp3=(-y)'*temp1;
temp4=(1-y)'*temp2;
temp5=temp3-temp4;
s=sum(temp5);
J=s/m;
grad=tempi1/m;

% =============================================================

end
