

a2 = zeros(3,1);
x = [1;12;10];
theta1 = [ 0.350829,0.197621,0.782106; 0.171893,0.943181,0.943044; 0.949957, 0.890039, 0.072960];
a2
x
theta1

%for i = 1:3

%   for j = 1:3
%     a2(i) = a2(i) + x(j) * theta1(i,j);
%   end
%     a2(i) = sigmoid(a2(i));
%end

z = theta1*x;
z
a2 = sigmoid(z);

a2


   
