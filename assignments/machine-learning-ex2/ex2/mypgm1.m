

a2 = zeros(3,1);
x = [1; 12; 10];
theta1 = [1, 1.2, 2.7;1,0.5,1.9];
theta2 = [1, -1.7, -0.2];


%for i = 1:3
%   for j = 1:3
%     a2(i) = a2(i) + x(j) * theta1(i,j);
%   end
%     a2(i) = sigmoid(a2(i));
%end

z = theta1*x;
a2 = sigmoid(z);
fprintf("after sigmoid function");
a2
a2 = [ones(1,columns(a2));a2];
a2
a3 = sigmoid(theta2*a2);

a3


   
