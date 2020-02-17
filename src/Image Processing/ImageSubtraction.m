%Image Subtraction using matlab
clc;
imageO=imread('lena.jpg');
imageT=imread('b.jpg');

imageOne=rgb2gray(imageO);
imageTwo=rgb2gray(imageT);

sub_image=imageOne-imageTwo

subplot(2,2,1), imshow(imageOne);
subplot(2,2,2), imshow(imageTwo);
subplot(2,2,3), imshow(sub_image);