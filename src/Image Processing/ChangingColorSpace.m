%changing color space 
orginal_image=imread('lena.jpg');
conver_image=rgb2gray(orginal_image);

subplot(1,2,1), imshow(orginal_image)
subplot(1,2,2), imshow(conver_image)
