%Padding image without lossing the size
clc;
%load an image
load_image=imread('lena.jpg');

%convert the image rgb to gray scale
gray_image = rgb2gray(load_image);

%load back background image 
b_im=imread('back.jpg');
back_image=rgb2gray(b_im);

%padding image
for ii = 1:129
    for jj = 1:129  
        if ( ii>=5 && jj>=5 && ii<=125 && jj<=125 ) 
           back_image(ii,jj) = load_image(ii-4,jj-4); 
           %sprintf("value of ones %d and value of gray %d",ones_image(ii,jj) ,gray_image(ii-4,jj-4))
        end
    end
end


%display image using plot
figure,
subplot(2,1,1),imshow(back_image);


