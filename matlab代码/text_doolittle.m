A = [1 -1 3; 2 -4 6; 4 -9 2];
[L, U] = myDoolittle(A);
disp(L), disp(U), disp(L*U)

