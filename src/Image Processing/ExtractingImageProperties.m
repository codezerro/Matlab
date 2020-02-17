%Filename, FileModDate, FileSize, Width, Height, BitDepth, ColorType,
%NumberOfSamples, 

info  = imfinfo('lena.jpg');

image_name = info.Filename;
modification_date = info.FileModDate;
image_size=info.FileSize;
image_width=info.Width;
image_height=info.Height;
color_depth=info.BitDepth;
color_type=info.ColorType;
sample_number=info.NumberOfSamples