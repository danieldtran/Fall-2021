fprintf('Daniel_Tran_501090181, Selim_Senoussy_501079603, Sven_Moser_501047352-Section 16');
fprintf('\n\n');
%print names and student # of group members

%Question 1
fprintf('Question 1 \n');
%define a and b
a = [1 1 -2];
b = [-2 0 0 6];

%find roots of a and b
rootA = roots(a);
rootB = roots(b);

%print answers for Question 1
%print roots of function a
fprintf('The root(s) of a = \n');
disp(rootA);
%print roots of function b
fprintf('The root(s) of b = \n');
disp(rootB);

%Question 2
fprintf('Question 2 \n');

%define each matrix
M = [1, -2, 3; 2, 1 , 1; -3, 2, -2];
N = [7; 4; -10];
X= M\N;
%print answers for Question 2

%part A
%print Matrix M
fprintf('a) Matrix M = \n');
disp(M);
%part B
%print Matrix N
fprintf('b) Matrix N = \n');
disp(N);
%part C
%print Matrix X
fprintf('c) Matrix X = \n');
disp(X);
%Question 3
fprintf('Question 3 \n');

%equation 1
eqn1 = @(x) 3*cos(x) - x/2;
interval1 = [0, 2*pi];
roots1 = fzero(eqn1, interval1);

%equation 2
eqn2 = @(x) exp(-.1*x)- 4*x + 3';
interval2 = [0, 4];
roots2 = fzero(eqn2, interval2);

%equation 3
eqn3 = @(x) 5*(x)^2+6*x +1;
interval3 = [-2, -1];
roots3 = fzero(eqn3, interval3);

%print answers for Question 3

%roots of Equation 1
fprintf('The root(s) of Equation 1 = %1.4f \n', roots1);
%roots of Equation 2
fprintf('The root(s) of Equation 2 = %1.4f \n', roots2);
%roots of Equation 3
fprintf('The root(s) of Equation 3 = %1.4f \n\n', roots3);

%Question 4
fprintf('Question 4 \n');

%Solve the equations with X1 = 2 and X2 = 2
values = [2 2];
%Iterative display of the solution process
options = optimset('Display','iter');
%output the number of iterations for the solution process
[x,fval,exitflag,output] = fsolve('DanielTran',values, options);
iterations = output.iterations;
%store the answer differently to the number of iterations
answer = x;

%print answers for Question 4
fprintf('The answer to the nonlinear equations is/are: \n');
disp(answer);
fprintf('It took %1.0f iteration(s) for the solution process. \n', iterations);




                                            