clc
clear all
close all
%load image
image=imread('noise.jpg');

%get the filter 
im_gaussian = fspecial('gaussian');
im_average =fspecial('average');

%perform filtering
b_gaussian=imfilter(image,im_gaussian);
b_average=imfilter(image,im_average);

%perform median filtering
A_gray=rgb2gray(image);
B_median=medfilt2(A_gray);

%ploting to show image
figure,
subplot(2,2,1),imshow(image),title('main image');
subplot(2,2,2),imshow(b_gaussian),title('Gaussain Filter');
subplot(2,2,3),imshow(b_average),title('Average Image');
subplot(2,2,4),imshow(B_median),title('Median Filter');