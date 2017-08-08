%% Dilate Image with Vertical Line Structuring Element
% 
%%
% Read a binary image into the workspace.
BW = imread('Result_Matlab_imdilate_2_imerode.tif');
%%
% Create a vertical line shaped structuring element.
se = strel('line',11,90);
%%
% Dilate the image with a vertical line structuring element and compare the
% results.
BW2 = imdilate(BW,se);
imshow(BW), title('Original')
figure, imshow(BW2)
