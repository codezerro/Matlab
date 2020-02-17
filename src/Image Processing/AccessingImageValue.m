%Accessing Image Value
clc;
image=imread('black.jpg');

gray_image = rgb2gray(image);

image_value=gray_image(121,21);
imshow(gray_image)
sprintf("the value is %d",image_value)

im=imread('black.jpg');
imm=imresize(im,[121 121]);
imwrite(imm,'b.jpg');