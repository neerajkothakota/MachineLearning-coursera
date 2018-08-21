function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%

%compute a2
size(X)
size(Theta1)
size(Theta2)
%add extra rows of 1's
X = [ones(size(X, 1), 1) X];
size(X)
zeeval2 = X * Theta1';
a2 = sigmoid(zeeval2);
size(a2)
% add a row with ones
a2 = [ones(size(a2, 1), 1) a2];
zeeval3 = a2 * Theta2';

%compute a3
a3 = sigmoid(zeeval3);

%standard way to return index of max element
[p_max, i_max]=max(a3, [], 2);
p = i_max;

% =========================================================================


end
