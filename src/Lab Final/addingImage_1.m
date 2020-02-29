%adding two same size images
clc
clear all
close all
%load two images
image_one=imread('lena.jpg');
image_two=imread('google.jpg');

%load size and color channel of those image 
[x1, y1, ch1]=size(image_one);
[x2, y2, ch2]=size(image_two);

%create image template for adding those images
image_three=zeros(x2,x2,'uint8');

%adding image through the nested loop
for i=1:x2
    for j=1:y2
        if (i<=x1 && j<=y1 )
            for k=1:ch2
                image_three(i,j,k)= image_one(i,j,k);
            end
        else
            for k=1:ch2
                image_three(i,j,k)= image_two(i,j,k);
            end
        end
    end
end

%show image using subplot
figure,
subplot(1,1,1),imshow(image_three),title('Image Three');

