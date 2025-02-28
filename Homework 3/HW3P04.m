R = 1e3;
Vs = 12;
Is = 6e-3;
a = 2;
b = 2;

I3 = Is;

A = [
%   I1      I2      I4      I5      I6
    R+R,    0,      -R,     0,      0;      %EQ 1
    0,      R+R,    0,      -R,     0;      %EQ 2
    -R,     0,      R+R,    -R,     a*R;    %EQ 3
    0,      0,      -b      b-1,    1;      %EQ 4
    0,      R,      R,      -R-R,   -R-R    %EQ 5
    ];

b = [
    %EQ 1   %EQ 2       %EQ 3  %EQ 4    %EQ 5
    Vs;     R*Is-Vs;    0;     0;       -R*Is
    ];

x = linsolve(A, b);

format shortEng

disp(A);
disp(b);
disp(x);

disp("I1: " + x(1) + " I2: " + x(2) + " I3: " + I3 + " I4: " +  x(3) + " I5: " + x(4) + " I6: " + x(5));

disp("I0: " + (x(2) - x(4)));