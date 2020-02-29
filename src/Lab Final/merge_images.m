%merge four images without built-in functions
clc
clear all
close all

%load image
image_one=imread('lena_black.jpg');
image_two=imread('go.jpg');
image_three=imread('lena_black.jpg');
image_four=imread('lena_black.jpg');

%get the size of the height and width of the four images
[h1, w1,ch1]=size(image_one);
[h2, w2,ch2]=size(image_one);
height=h1+h2;
width=w1+w2;
%ready a image with zeros
image=zeros(height,width,'uint8');


%for left uppper image 
for i=1:121
    for j=1:121
        image(i,j)=image_two(i,j);
    end
end

%for right uppper image
for i=1:121
    for j=122:242
        image(i,j)=image_one(i,j-121);
    end
end

%for left lower image
for i= 122:242
    for j=1:121
        image(i,j)=image_two(i-121,j);
    end
end

%for right uppper image
for i=122:242
    for j=122:242
        image(i,j)=image_one(i-121,j-121);
    end
end


%show image using subplot
figure,
subplot(1,1,1),imshow(image),title('Merge Image');


h=1;
w=1;
%{image merge with loop

for k=1:4
    for i=1:h1
        for j=1:w1
            if (k==1 )
                image(h,w,1)=image_one(i,j,1);
            elseif (k==2)
                image(h,w,1)=image_one(i,j,1);
               
            elseif (k==3)
                image(h,w,1)=image_one(i,j,1);
            elseif (k==4)
                image(h,w,1)=image_one(i,j,1);
            end
            w=w+1;
        end
        
        h=h+1;
        
        if (k==1)
            w=1;
        elseif (k==2)
            w=122;
        elseif(k==3)
            w=1;
        elseif(k==4)
            w=122;
        end
        
    end
    
    if (k==2)
        h=1;
        w=122;
    elseif(k==3)
        w=1;
        h=122;
    elseif(k==4)
        w=122;
        h=122;
    end
    
end


figure,
subplot(1,1,1),imshow(image),title('Merge Image');




