%histogram of the image with the built-in functions 
clc
clear all
close all

%load image 
im=imread('lena.jpg');

%convert rgb to gray scale
image=rgb2gray(im);


figure,
subplot(2,1,1),imshow(image),title('Orginal Image');
subplot(2,1,2),imhist(image),title('histogram Image');

%%%%%image histogram without built-in function

%load image
ima=imread('lena.jpg');

%convert rgb to gray scale 
image=rgb2gray(ima);

%get size of the image 
[h,w]=size(image);

%declear an array  and initial with value of zero
A(255)=0;

%collect image value and store the value in the array
for i=1:h
    for j=1:w
        image_value=image(i,j);
        A(image_value)=A(image_value)+1;
    end
end


%show the image histogram using the bar
figure,
bar(A,'green')
