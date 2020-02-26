%image crop with default function
%load image
image=imread('lena.jpg');
%get the size of the image
[height, width, channel]=size(image);
%set the value of the crop image column and row
col1=1;
col2=width/2;
col3=0;
col4=0;
row1=1;
row2=height/2;
row3=0;
row4=0;
%image crop 
image_one=imcrop(image,[col1 row1 col2 row2]);
image_two=imcrop(image,[col2+1 row1 width row2]);
image_three=imcrop(image,[col1 row1 col2 row2]);
image_four=imcrop(image,[col2+1 row1 width row2]);

%show image using plot
subplot(4,2,1),imshow(image_one),title('First Image');
subplot(4,2,2),imshow(image_two),title('Second Image');
subplot(4,2,3),imshow(image_three),title('Third Image');
subplot(4,2,4),imshow(image_four),title('Four Image');