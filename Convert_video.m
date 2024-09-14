% This code is written by me.
% Copyright @puretech 
% I wrote this code to convert videos which were initially in ".avi" format
% as these videos can't be open through the powerpoint/windows applications 
% without proper plugin.
% This code will convert the video files to mp4 with MPEG H.264 codec.
% Can also be used for converting to any other format.

close all
clear all
clc

work_dir="E:\My Videos\MATLAB_Vidoes";  % Directory to the video file.

video_name={'MergedVideo.avi'};  % Name of the video file with format.

vid=VideoReader(strcat(work_dir,'\',video_name{1}));  % To read the video.
n1=vid.NumFrames;

start_frame=1;    % The frame at which actual animation starts. % video starting frame.

img=read(vid,start_frame);

merged_vid_name=strcat(work_dir,'\MergedVideo_het.mp4');  % Location and final video name .
final_vid = VideoWriter(merged_vid_name,'MPEG-4');   % Encoder.

open(final_vid);

for i=start_frame:n1   % looping over all frames.
    im1=read(vid,i);

    writeVideo(final_vid,im1); % Writing the frames to the video.

end
close(final_vid);  % Closing the created video file.

% Thats it. QED