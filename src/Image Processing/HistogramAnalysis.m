%Histogram Analysis 

%im=imread('lena.jpg');

%image=rgb2gray(im);

%subplot(2,1,1), imshow(image);
%subplot(2,1,2), imhist(image);
clc;

I = rand(1102,1290) ;
imshow(I);
iwant = zeros(1108,1300) ;
iwant(1:1102,1:1290) = I ;