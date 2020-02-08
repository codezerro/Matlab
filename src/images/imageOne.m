% read in tiff image and convert it to double format
%my_image = im2double(imread('lena.jpg'));
%my_image = my_image(:,:,1);

my_image=imread('lena_copy.jpg');
my_imageTwo=imread('lena.jpg');
% allocate space for thresholded image
image_thresholded = my_image; %zeros(size(my_image));
% loop over all rows and columns
for ii=1:121
    for jj=1:121
        % get pixel value
        pixel=my_image(ii,jj);
        pixelTwo=my_imageTwo(ii,jj);
        % check pixel value and assign new value
        new_pixel=pixel+pixelTwo;
        % save new pixel value in thresholded image
        image_thresholded(ii,jj)=new_pixel;
        disp(image_thresholded(ii,jj))
    end
end
% display result
figure()
subplot(1,2,1)
imshow(my_image,[])
title('original image')
subplot(1,2,2)
imshow(image_thresholded,[])
title('thresholded image')


%A = imread('lena.jpg');
%B = imtranslate(A,[10,10])

%imshow(B)

%B = imresize(A,2);
%imshow(B)
%figure
%hAx = axes;
%I = ones(300, 500, 3);
%hI = image(I, 'Parent', hAx, 'AlphaData', ~I(:, :, 3));
%hAx.Visible = 'off';
%for k = 1:size(I, 1)
 %   I(k, k, 2:3) = 0;
  %  hI.CData = I;
   % hI.AlphaData = ~I(:, :, 3);
   % pause(0.05)
%end

