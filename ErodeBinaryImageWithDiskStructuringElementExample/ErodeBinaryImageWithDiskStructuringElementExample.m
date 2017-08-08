%% Erode Binary Image with Line Structuring Element
% 
%%
% Read binary image into the workspace.
originalBW = imread('Result_Matlab_imdilate_2.tif');
%%
% Create a flat, line-shaped structuring element.
se = strel('line',11,90);
%%
% Erode the image with the structuring element.
erodedBW = imerode(originalBW,se);
%%
% View the original image and the eroded image.  
figure
imshow(originalBW)
figure
imshow(erodedBW) 
