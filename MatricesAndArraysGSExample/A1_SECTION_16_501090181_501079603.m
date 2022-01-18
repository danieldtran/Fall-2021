%print names of partners and I, with student numbers
fprintf('Daniel_Tran_501090181 and Selim_Senoussy_501079603 Section 16')
disp(' ')
%Question 1
%Givens
%Defining variables
Vinitial = 0;
Vfinal = 180;
time = 10;
%Create temporary variables to keep track of original given values
timeVar = time;
VinitialVar = Vinitial;
VfinalVar = Vfinal;

%Calculations
%Convert to m/s from km/h
VfinalVar = VfinalVar / 3.6;
%Find average acceleration of car
Aavg = (VfinalVar - VinitialVar)/ timeVar;
%Distance formula with constant accleeration
Distance = (1/2)*(VinitialVar+VfinalVar)* timeVar;
%Question d, time now =12 seconds
timeVar = 12;
%Calculate the final speed
VfinalVar = VinitialVar + Aavg * timeVar;
%Convert back to km/h
VfinalVar = VfinalVar * 3.6;
%display and print out answers
%display answers for question 1
disp(' ')
fprintf('Question 1')
disp(' ')
%answer for a
fprintf(' a)The initial velocity is %1.0f km/h, the final velocity is %1.0f km/h and the time is %1.0f s.', Vinitial, Vfinal, time)
disp(' ')
%answer for b
fprintf(' b)The average acceleration of the car in m/s^2 is %1.1f metres per second squared.',Aavg)
disp(' ')
%answer for c
fprintf(' c) If the car moves at a constant acceleration, the distance the car travels is %1.0f metres after 10 seconds.',Distance)
disp(' ')
%answer for d
fprintf(' d) The speed of the car after 12.0 seconds if it can continue to move at the same acceleration is %1.0f km/h.', VfinalVar)
disp(' ')




%Question 2
%Listing out the matrices given
A=[2, 4, -1; -1, 5, 3];
B=[3, 6, -1; 4, -2, 2];
C=[2, 4;1, 3];
D=[-1, 3; 4, 2];
%Options for each calculation
a= -3*B;
b= 3*A-B;
c= D^2;
d= C.*D;

%printing and displaying each option of calculation
%display answers for question 2
disp(' ')
fprintf('Question 2')
disp(' ')
%display answer for a
fprintf('a) -3B =')
disp(' ')
disp(a)
%display answer for b
fprintf('b) 3A-B =')
disp(' ')
disp(b)
%display answer for c
fprintf('c) D^2 =')
disp(' ')
disp(c)
%display answer for d
fprintf('d) C.*D =')
disp(' ')
disp(d)

%Question 3
%given 100 degrees F
temperature = 100;
%create placeholder for fahrenheit
fahrenheit = temperature;
%conversion to celcius
celcius = (fahrenheit-32)*(5/9);
%print out answers for question 3
fprintf('Question 3')
disp(' ')
%answer to a
fprintf(' a) 100 degrees Fahrenheit to Celcius is %1.1f degrees Celcius.', celcius)
disp(' ')

%Question 4
%listing out givens
length = 10;
weight = 2400;
%convert weight from grams to kilograms
kilograms = weight / 1000;
%convert length from centimeters to meters
meter = length /100;
%calculate volume in order to get density
volume = meter^3;
%calculate density
density = kilograms / volume;

%print out answers for question 4
disp(' ')
fprintf('Question 4')
disp(' ')
%answer to 4
fprintf(' 4) The density of a cube of concrete weighing %1.0f grams, measuring %1.0f cm on a side is %1.0f kg/m^3.', weight, length, density)
disp(' ')