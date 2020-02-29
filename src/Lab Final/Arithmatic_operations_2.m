%Arithmatic Operations on image using deafult functions
%load image
image=imread('go.jpg');
image_one=rgb2gray(image);
image_two = imread('lena_black.jpg');

%image additions
image_add=imadd(image_one,image_two);

%image subtractions
image_sub=imsubtract(image_one,image_two);

%image Multiply
image_mul=immultiply(image_one,image_two);

%image divided
image_div=imdivide(image_one,image_two);

%show imag using subplot
figure,
subplot(2,2,1),imshow(image_add),title('Image Addition');
subplot(2,2,2),imshow(image_sub),title('Image Subtract');
subplot(2,2,3),imshow(image_mul),title('Image Muitiplication');
subplot(2,2,4),imshow(image_div),title('Image Divided');

%%Arithmatic operations without built-in functions
%load image
image=imread('go.jpg');
imageOne=rgb2gray(image);
imageTwo = imread('lena_black.jpg');
