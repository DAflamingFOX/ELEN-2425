A = [
    1000+1000, 1000, -1000;
    1000, 1000+1000, 0;
    -1000, 0, 1000+2000
    ];

b = [
    6;
    12;
    12
    ];

x = linsolve(A,b);

format long

disp(A)
disp(b)
disp(x)