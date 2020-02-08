clear all; close all; clc;

% Initialize an object for reading video
videoRead = vision.VideoFileReader('video1.mp4', 'ImageColorSpace', 'Intensity');

% Get input video properties
S = info(videoRead);
width = S.VideoSize(1);
height = S.VideoSize(end);
frame_rate = S.VideoFrameRate;

% Initialize an object for writing video
videoWrite = VideoWriter('newvideo1.mp4');
videoWrite.FrameRate = frame_rate;
open(videoWrite);

% Read first frame from input video
image_data = step(videoRead);

% Continue until complete video frames are read and written to disk
while ~isDone(videoRead)
    % Write individual video frame
    writeVideo(videoWrite, image_data);
    % Read next video frame
    image_data = step(videoRead);
end

% Release the object for reading video and close the output video file
release(videoRead);
close(videoWrite);