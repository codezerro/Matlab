%adding two same size images
clc;
%load two images
image_one=imread('lena.jpg');
image_two=imread('lena_black.jpg');

%load size and color channel of those image 
[x1, y1, ch1]=size(image_one);
[x2, y2, ch2]=size(image_two);

%create image template for adding those images
image_three=zeros(x1,y1,'uint8');

%adding image through the nested loop
for i=1:x1
    for j=1:y1
        for k=1:ch1
            image_three(i,j,k)=image_one(i,j,k)+image_two(i,j,k);
        end
    end
end

%show image using subplot
figure,
subplot(3,1,1),imshow(image_one),tittle('Image One');
subplot(3,1,2),imshow(image_two),tittle('Image Two');
subplot(3,1,3),imshow(image_three),tittle('Image Three');