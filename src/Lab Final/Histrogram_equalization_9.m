%histrogram equalization using built in function
clc 
clear all
 close all
%load image
im=imread('contrast.jpg');

image=histeq(im);
figure,
subplot(1,2,1),imshow(im),title('Orginal image');
subplot(1,2,1),imshow(image),title('Histrogram Equalization');

