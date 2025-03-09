Vs1 = 90;
Vs2 = 40;
a = 2.5;
R1 = 1e3;
R2 = 2e3;
R3 = 4e3;
R4 = 2e3;

format shortEng

A = [
    R1+R2+R3, -R2, R3;
    -R2+a*R1, R2, 0;
    R3+a*R1, 0, R3+R4];

b = [
    0;
    Vs1;
    Vs2];

x = linsolve(A, b);

I90v = -x(2);
I40v = -x(3);

disp("I90V: " + I90v);
disp("I40V: " + I40v);

% Superposition, Vs1

A1 = [
    R1+R2+R3, -R2, R3;
    -R2+a*R1, R2, 0;
    R3+a*R1, 0, R3+R4];

b1 = [
    0;
    Vs1;
    0];

x1 = linsolve(A1, b1);

I1 = x1(2) + x1(3);
disp("I contribution from 90V: " + I1);

% Superposition, Vs2

A2 = [
    R1+R2+R3, -R2, R3;
    -R2+a*R1, R2, 0;
    R3+a*R1, 0, R3+R4];

b2 = [
    0;
    0;
    Vs2];

x2 = linsolve(A2, b2);

I2 = x2(2) + x2(3);
disp("I contribution from 40V: " + I2);

Itot = I1+I2;
disp("Total I from initial mesh: " + (x(2)+x(3)));
disp("Total I: " + Itot);
