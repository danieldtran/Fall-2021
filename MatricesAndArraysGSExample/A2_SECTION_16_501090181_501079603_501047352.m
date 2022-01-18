%print names of partners and I, with student numbers
disp(' ');
fprintf('Daniel_Tran_501090181, Selim_Senoussy_501079603, Sven_Moser_501047352-Section 16 \n');

%Question 1
%giving values to matrices A and B
A=[1, 4, 6; 4, 5, 4; 8, 7, 3];
B=[3, 8, 3; 5, 4, 7; 1, 2, 5];

%compute operations
%calculation for part A
C= B*A;
sum1 = sum(diag(C));
%calculation for part B
D=transpose(C)*B;
%calculation for part C
Product = det(C)* transpose(B(1,3));

%display the answers for Question 1
disp(' ');
fprintf('Question 1 \n');
%display answer for a
fprintf('a) The sum of the diagonal of matrix C \n');
fprintf('= %1.0f \n', sum1);
disp(' ');
%display answer for b
fprintf('b) The matrix product for the transpose of matrix of C multiplied by matrix B \n');
fprintf('=');
disp(D);
%display answer for c
fprintf('c) The product of the determinate of matrix C and the transpose element of B in Row 1 Column 3 \n');
fprintf('=');
disp(Product);

%Question 2
%part A
%create each column of matrix E using other matrices
%since the first column of E is taken from a row, transpose that row
firstColumn = transpose(B(2, :));
secondColumn = C(:, 2);
thirdColumn = C(:, 3);

%creating matrix E using horzcat to combine each column into a single
%matrix
E=horzcat(firstColumn, secondColumn, thirdColumn);

%Operations
%calculation for part B
F = inv(E);
%calculation for part C
sum2 = sum(F,'all');

%display answers for Question 2
fprintf('Question 2 \n');
%display answer for part A, matrix E
fprintf('a) The result of matrix E \n');
fprintf('=');
disp(E);
%display answer for part B, matrix F
fprintf('b) The inverse of matrix E, which is matrix F \n');
fprintf('=');
disp(F);
%display answer for part C
fprintf('c) The sum of all elements in matrix F \n');
fprintf('=');
disp(sum2);

%Question 3
%define figure to adjust title of figure
figure('Name', 'Question 3: Plot of y1= cos(x)*sin(x)and y2=sin(x^2)','NumberTitle','off');
%define the possible values of x
x = 0:pi/100:2*pi;
%define both equations with y1 and y2
y1 = cos(x).*sin(x);
y2 = sin(x.^2);

%plot the points on the graph
%line for y1, solid blue
plot(x,y1, 'b');
%hold in order to plot both lines on one graph
hold on; 
%line for y2, red dashed
plot(x,y2, 'r--');
%set limits/range of the x-axis and y-axis
xlim([0, 2*pi]);
ylim([-1 1]);
%hold off to end plotting lines
hold off;

%label parts of the graph
%label the x-axis and y-axis
xlabel('X');
ylabel('Y');
%title for the graph
title('Plot of y1= cos(x)*sin(x)and y2=sin(x^2)');
%lable both lines in the legend
legend('cos(x)*sin(x)', 'sin(x^2)');