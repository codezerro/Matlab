A=imread('lena.jpg');
B=imread('google.jpg');
C=imread('img.jpg');
D =imread('white.PNG');
E=imread('black.jpg');

A_GRAY = rgb2gray(A);
B_GRAY = rgb2gray(B);
C_GRAY = rgb2gray(C);
D_GRAY=rgb2gray(D);
E_GRAY=rgb2gray(E);

figure ,
subplot(5,3,1),imshow(A)
subplot(5,3,2),imshow(A_GRAY)
subplot(5,3,3), imhist(A_GRAY)
subplot(5,3,4),imshow(B)
subplot(5,3,5),imshow(B_GRAY)
subplot(5,3,6), imhist(B_GRAY)
subplot(5,3,7),imshow(C)
subplot(5,3,8),imshow(C_GRAY)
subplot(5,3,9), imhist(C_GRAY)
subplot(5,3,10),imshow(D)
subplot(5,3,11),imshow(D_GRAY)
subplot(5,3,12), imhist(D_GRAY)
subplot(5,3,13),imshow(E)
subplot(5,3,14),imshow(E_GRAY)
subplot(5,3,15), imhist(E_GRAY)