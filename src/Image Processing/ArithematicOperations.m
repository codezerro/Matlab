%Arithematic Operations on image

im=imread('lena.jpg');

image=rgb2gray(im);

image_mul=immultiply(image,4);
image_div=imdivide(image,4);

subplot(2,1,1),imshow(image_mul);
subplot(2,1,2),imshow(image_div);

