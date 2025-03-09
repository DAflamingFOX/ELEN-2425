R1 = 4e3;
R2 = 3e3;
R3 = 6e3;
R4 = 2e3;
Vs = 12;
Is = 2e-3;

G1 = 1 / R1;
G2 = 1 / R2;
G3 = 1 / R3;
G4 = 1 / R4;

V2 = (Is + G2*Vs) / G2;

Vth = V2;

disp("Vth = " + Vth);

Req = R2 * R3 / (R2 + R3);
Rth = Req;

disp("Rth = " + Rth);

In = Vth / Rth;
Rn = Rth;

disp("In = " + In);
disp("Rn = " + Rn);