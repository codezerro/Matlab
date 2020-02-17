%Image Complement using matlab
clc;
im = imread('lena.jpg');

image = rgb2gray(im);

image_complement=imcomplement(image);

im=image(11,11);
im_com=image_complement(11,11);

sprintf("gray value is %d",im)
sprintf("image_complement value is %d",im_com)

subplot(1,2,1),imshow(image);
subplot(1,2,2),imshow(image_complement);