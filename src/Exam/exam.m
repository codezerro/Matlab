clc
clear all
close all
%read image
imageOne=imread('google.jpg');
imageTwo=imread('imageTwo.jpg');

%convert rgb to gray 
imageOne_gray=rgb2gray(imageOne);
imageTwo_gray=rgb2gray(imageTwo);

%resize the image
imageOne_size=imresize(imageOne_gray,[200 ,200 ]);
imwrite(imageOne_size,'imageOne_size.jpg');
%imageOne_size_gray=rgb2gray(imageOne_size);
%read resize one image
imageOne_final=imread('imageOne_size.jpg');
%get the width and height
[h1, w1]=size(imageOne_final);
[h2, w2]=size(imageTwo_gray);

%image subtract from 1 to 2
image_sub=imsubtract(im2double(imageOne_final),im2double(imageTwo_gray));


%image croping 

col1=1;
col2=h1/2;
row1=1;
row2=h2/2;

%image crop 
image_one=imcrop(image_sub,[col1 row1 col2 row2]);
image_two=imcrop(image_sub,[col2+1 row1 w1 row2]);
image_three=imcrop(image_sub,[col1 row2+1 col2 h1]);
image_four=imcrop(image_sub,[col2+1 row2+1 w1 h1]);

%padding one image
[h1_pad, w1_pad]=size(image_one);
image_one_padding=image_one;
[h2_pad, w2_pad]=size(image_two);
image_three_padding=image_two;
[h3_pad, w3_pad]=size(image_two);
image_four_padding=image_three;
[h4_pad, w4_pad]=size(image_two);
image_two_padding=image_four;


for k=1:4
    for ii=1:h1_pad-1 
       for jj=1:w1_pad-1
            if (k==1)
               if (ii<=5 )
                   image_one_padding(ii,jj)=0;
               end

               if (ii<=h1_pad-5 && ( jj<=5 || jj>w1_pad-5 ) )
                    image_one_padding(ii,jj)=0;
               end

               if (ii>h1_pad-5 )
                   image_one_padding(ii,jj)=0;
               end
            end
            
            %k==2
            if (k==2)
               if (ii<=5 )
                   image_two_padding(ii,jj)=0;
               end

               if (ii<=h1_pad-5 && ( jj<=5 || jj>w1_pad-5 ) )
                    image_two_padding(ii,jj)=0;
               end

               if (ii>h1_pad-5 )
                   image_two_padding(ii,jj)=0;
               end
            end
            %k==3
            if (k==3)
               if (ii<=5 )
                   image_three_padding(ii,jj)=0;
               end

               if (ii<=h1_pad-5 && ( jj<=5 || jj>w1_pad-5 ) )
                    image_three_padding(ii,jj)=0;
               end

               if (ii>h1_pad-5 )
                   image_three_padding(ii,jj)=0;
               end
            end
            %k==4
            if (k==4)
               if (ii<=5 )
                   image_four_padding(ii,jj)=0;
               end

               if (ii<=h1_pad-5 && ( jj<=5 || jj>w1_pad-5 ) )
                    image_four_padding(ii,jj)=0;
               end

               if (ii>h1_pad-5 )
                   image_four_padding(ii,jj)=0;
               end
            end
       end
    end
end 
%histogram of one image
%image_one_hist=imhist(image_one_hist);




%show image using plot

figure,
subplot(4,3,1),imshow(imageOne_final),title('First Image');
subplot(4,3,2),imshow(imageTwo_gray),title('Image two ');
subplot(4,3,3),imshow(image_sub),title('Subtract image');
subplot(4,3,4),imshow(image_one),title('one Image');
subplot(4,3,6),imhist(image_one),title('image One for this');
subplot(4,3,5),imshow(image_two),title('two Image');
subplot(4,3,7),imshow(image_three),title('three Image');
subplot(4,3,8),imshow(image_four),title('four Image');
subplot(4,3,9),imshow(image_one_padding),title('padding image one');
subplot(4,3,10),imshow(image_two_padding),title('padding image two');
subplot(4,3,11),imshow(image_three_padding),title('padding image three');
subplot(4,3,12),imshow(image_four_padding),title('padding image four');
