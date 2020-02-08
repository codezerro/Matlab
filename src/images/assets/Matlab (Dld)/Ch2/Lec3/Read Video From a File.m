clear all; close all; clc;

% Initialize an object for reading video
videoObj = vision.VideoFileReader('video1.mp4', 'ImageColorSpace', 'RGB');

% Get video frame size and frame rate
S = info(videoObj);
width = S.VideoSize(1);
height = S.VideoSize(end);
frame_rate = S.VideoFrameRate;

% Get individual video frames
image_data = step(videoObj);

% Run the loop until all frames have been displayed
while ~isDone(videoObj)
    % Display video frame one by one
    imshow(image_data);
    
    image_data = step(videoObj);
end

% Release the object for reading video
release(videoObj);