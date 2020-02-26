%Diagonal and Cross line in the image
%read a image
im=imread('lena.jpg');
%convert rgb to gray scale
image=rgb2gray(im);
%copy the image to image_cross
image_cross=image;
%get the height and width
[w, h] = size(image_cross);

%loop for the cross line 
for i=1:w
    for j=1:h
        if (i==j)
            image_cross(i,j)=255;
        elseif (i+j == h+1)
            image_cross(i,j)=255;
        end
    end
end

figure,
subplot(2,1,1),imshow(image),title('Main Image');
subplot(2,1,2),imshow(image_cross),title('Cross Image');