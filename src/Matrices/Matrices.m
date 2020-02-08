A=[ 1 4 7 ; 3 5 9];
disp(A);
[m,n]=size(A);
disp("The Size of Row is ");
disp(m)
disp("The Size of Column is ");
disp(n)
disp("Show vlaue by index");
disp(A(2,2));
disp(A(2,[2 1]));
disp(A(2,:));
disp("Adding  two matrices");
B=[ 1 2 3 ; 4 5 6 ];
C=[ 7 8 9 ; 10 11 12];
disp(A+B);
disp("Subtract two matrices");
disp(A-B);
disp("Multiply two matrices");
% A matrices column and B matrices row must be equal
X=[3 4 ; 5 6];
Y=[9 8 ; 5 4];
disp(X*Y);



