
clc
clear all
close all

imageOne=imread('google.jpg');
imageTwo=imread('imageTwo.jpg');

%convert rgb to gray
imageTwo_gray=rgb2gray(imageTwo);

%get size of the image
[h1 , w1]=size(imageOne);
[h2 , w2]=size(imageTwo_gray);

%subtract operation of two images
image_sub=imageOne;

for ii=1:h1
    for jj=1:w1
        if (ii<=h2 && jj<=w2)
            image_sub(ii,jj)=imageOne(ii,jj)-imageTwo_gray(ii,jj);
        end
    end
end

figure,
imshow(image_sub);