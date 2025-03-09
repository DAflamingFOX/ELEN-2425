Vs = 3600;
R1 = 30;
R2 = 45;
R3 = 60;
R4 = 300;
R5 = 30;
R6 = 15;

G1 = 1/R1;
G2 = 1/R2;
G3 = 1/R3;
G4 = 1/R4;
G5 = 1/R5;
G6 = 1/R6;

A = [
    G1+G2+G5, -G2, -G1;
    -G2, G2+G3+G4, -G3;
    G1-150*G2*G6, G3+150*G2*G6, -G1-G3-G6];

b = [
    G5*Vs;
    0;
    0];

format shortEng

x = linsolve(A, b);

Vth = x(2);

It = 1;

A2 = [
    R1+R2+R3, -R2, 0, R3;
    -R2, R2+R5+R4, -R4, 0;
    0, 0, 1, 1;
    R3-150, 150+R4, -R4, R3+R6];

b2 = [
    0;
    0;
    It;
    0];

x2 = linsolve(A2, b2);

Req = R4*(x2(3)-x2(2));
disp ("Req = " + Req);

PRlMax = Vth^2 / (4*Req);
disp("P_Rl_max = " + PRlMax);