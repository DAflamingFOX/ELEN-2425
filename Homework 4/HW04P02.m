a = 0.5;
R1 = 1e3;
R2 = 2e3;
R3 = 1e3;
Vs = 12;

G1 = 1/R1;
G2 = 1/R2;
G3 = 1/R3;

V1 = (Vs * (G1*a - G3)) / (-G1*a + G1 + G2 + G3);

Vth = V1 + Vs;

disp ("Vth = " + Vth);

A = [
    R1 + R2, -a*R3 - 1;
    -R2, R2 + R3
    ];

b = [
    0;
    0
    ];

x = A\b;

I1 = x(1)
I2 = x(2)