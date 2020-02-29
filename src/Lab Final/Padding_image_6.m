%padding in an image

%load an image
im = imread('lena.jpg');

%convert image rgb to gray
image=rgb2gray(im);
%get image size
[h, w]=size(image);

%padding the image

for ii=1:h 
   for jj=1:w
       
       if (ii<=5 )
           image(ii,jj)=255;
       end
       
       if (ii<=115 && ( jj<=5 || jj>115 ) )
            image(ii,jj)=255;
       end
       
       if (ii>115 )
           image(ii,jj)=255;
       end
       
       
       
   end
end

imshow(image)
