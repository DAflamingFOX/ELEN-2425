R1 = 2e3;
R2 = 4e3;
R3 = 2e3;
R4 = 6e3;
R5 = 2e3;
Vs = 6;
Is1 = 2e-3;
Is2 = 1e-3;

A = [
    R1 + R3, R1 - R2 + R3;
    -(R1 + R3 + R4 + R5),  -(R1 + R3)
    ];

b = [
    R3 * (Is2 + Is1);
    Vs-Is1*(R3 + R4 + R5)-Is2*(R3 + R5)
    ];

x = linsolve(A, b);

disp(A);
disp(b);
disp(x);

format shortEng

I1 = x(1);
I2 = x(2);
I3 = Is1 - I1;
I4 = Is2 + Is1 - I1;

disp("I1: " + I1 + " I2: " + I2 + " I3: " + I3 + " I4: " + I4);

