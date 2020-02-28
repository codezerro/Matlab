
%%%%% merge image with built in function
%load image 
imageOne=imread('lena.jpg');
imageTwo=imread('google.jpg');

imshowpair(imageOne,imageTwo,'montage')

