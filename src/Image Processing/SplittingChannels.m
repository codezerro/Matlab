%Spliting or seperate image 

image_variable=imread('lena.jpg');

red=image_variable(:,:,1);
green=image_variable(:,:,2);
blue=image_variable(:,:,3);

%image show using plot
subplot(2,2,1), imshow(image),title('orginal');
subplot(2,2,2), imshow(red),title('red');
subplot(2,2,3), imshow(green),title('green');
subplot(2,2,4), imshow(blue),title('blue');