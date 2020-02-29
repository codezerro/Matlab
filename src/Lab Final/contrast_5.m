%increase or decrease image contrast 
clc
clear all
close all
% get input from the user
val=input('Input between 0-255 ');
%load an image
image=imread('lena_black.jpg');
%copy the image 
image_increse=image;
image_decrese=image;
%take the height and width of the image
[h,w]=size(image);

for i=1:h
    for j=1:w
        image_increse(i,j)=image(i,j)+val;
    end
end

figure,
subplot(1,2,1),imshow(image);
subplot(1,2,2),imshow(image_increse);

for i=1:h
    for j=1:w
        image_decrese(i,j)=image(i,j)-val;
    end
end

figure,
subplot(1,2,1),imshow(image);
subplot(1,2,2),imshow(image_decrese);

